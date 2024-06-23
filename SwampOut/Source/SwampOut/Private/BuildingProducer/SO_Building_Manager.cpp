// Fill out your copyright notice in the Description page of Project Settings.

#include "BuildingProducer/SO_Building_Manager.h"
#include "Algo/Count.h"

ASO_Building_Manager::ASO_Building_Manager()
{
	
}

// Called when the game starts or when spawned
void ASO_Building_Manager::BeginPlay()
{
	Super::BeginPlay();
	Auth_SpawnBuilding();
	//Auth_SpawnBuildingOld();
}

// Called every frame
void ASO_Building_Manager::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

void ASO_Building_Manager::ClassifyBuildingData()
{
	FBuildingProceduralGenerateData* FindRow = DataTable->FindRow<FBuildingProceduralGenerateData>(FName(FString::FromInt(ID)), FString());
	if (!FindRow || FindRow->PossibleLevel.Num() <= 0) return;

	SeparateVariant.Empty();

	for (const auto& data : FindRow->PossibleLevel)
	{
		EVariant KeyAccess = data.Level->GetDefaultObject<ASO_Building_Base>()->EntryID;
		if (SeparateVariant.Contains(KeyAccess))
		{
			SeparateVariant.Find(KeyAccess)->PossibleLevel.Add(data);
		}
		else
		{
			SeparateVariant.Add(data.Level->GetDefaultObject<ASO_Building_Base>()->EntryID, FBuildingMultipleLevelData(data));
		}
	}

	for (auto& A : SeparateVariant)
	{
		A.Value.PossibleLevel.Sort([&](const FBuildingSingleLevelData& A, const FBuildingSingleLevelData& B) { return A.SpawnWeight < B.SpawnWeight; });
	}
}

void ASO_Building_Manager::Auth_SpawnBuilding()
{
	if (!HasAuthority() || !IsValid(DataTable)) return;
	FBuildingProceduralGenerateData* FindRow = DataTable->FindRow<FBuildingProceduralGenerateData>(FName(FString::FromInt(ID)), FString());
	if (!FindRow || FindRow->PossibleLevel.Num() <= 0) return;

	int32 NumberOfLevel = FMath::RandRange(RandomNumberOfLevelInRange.Min, RandomNumberOfLevelInRange.Max);

	TArray<FBuildingSingleLevelData> FilteredLevels = TArray<FBuildingSingleLevelData>();
	FilteredLevels.Reserve(NumberOfLevel);

	TArray<TSubclassOf<ASO_Building_Base>> ReadyToSpawns = TArray<TSubclassOf<ASO_Building_Base>>();
	ReadyToSpawns.Reserve(NumberOfLevel + 1);

	TArray<EVariant> CurrentExitID = TArray<EVariant>();
	CurrentExitID.Reserve(NumberOfLevel + 1);
	
	//InitializeGroundFloor
	TSubclassOf<ASO_Building_Base> GroundFloor = FindRow->RandomGroundFloor[FMath::RandRange(0 , (FindRow->RandomGroundFloor.Num() - 1))];
	if (!IsValid(GroundFloor)) return;
	CurrentExitID.Add(GroundFloor->GetDefaultObject<ASO_Building_Base>()->ExitID);
	ReadyToSpawns.Add(GroundFloor);

	const auto GetRandomLevel = [&](const TArray<FBuildingSingleLevelData>& PossibleLevel)
		{
			int32 TotalLength = PossibleLevel.Num();
			int32 LoopIndex = 0;
			float Random = FMath::RandRange(0.0f,2.0f);
			for (const auto& Level : PossibleLevel)
			{
				LoopIndex++;
				if (Random <= Level.SpawnWeight)
				{
					return Level; 
				}
				else if (LoopIndex == TotalLength)
				{
					return Level;
				}
			}
			return FBuildingSingleLevelData();
		};

	//InitializeUpperFloor
	for (int32 i = 0; i < NumberOfLevel; i++)
	{
		int32 FindIndex = CurrentExitID.Num() - 1;
		if (!SeparateVariant.Contains(CurrentExitID[FindIndex])) continue;
		
		const TArray<FBuildingSingleLevelData>& LevelData = SeparateVariant.Find(CurrentExitID[FindIndex])->PossibleLevel;

		const FBuildingSingleLevelData& SpawnLevel = GetRandomLevel(LevelData);
		if (!IsValid(SpawnLevel.Level)) continue;

		//UE_LOG(LogTemp, Warning, TEXT("Level-> %s"), *SpawnLevel.Level->GetName());

		CurrentExitID.Add(SpawnLevel.Level->GetDefaultObject<ASO_Building_Base>()->ExitID);
		FilteredLevels.Add(SpawnLevel);
		ReadyToSpawns.Add(SpawnLevel.Level);
	}

	//Spawn
	for (auto& level : ReadyToSpawns)
	{
		FTransform SpawnTransform;
		CacheLevel.Add(GetWorld()->SpawnActor<ASO_Building_Base>(level, SpawnTransform));
		OnSpawningLevel(CacheLevel[CacheLevel.Num() - 1]);
	}
}

void ASO_Building_Manager::Auth_SpawnBuildingOld()
{
	/*
	if (!HasAuthority() || !IsValid(DataTable)) return;

	FBuildingProceduralGenerateData* FindRow = DataTable->FindRow<FBuildingProceduralGenerateData>(FName(FString::FromInt(ID)), FString());

	if (!FindRow || FindRow->PossibleLevel.Num() <= 0) return;

	TArray<FBuildingSingleLevelData> SortedArray = FindRow->PossibleLevel;
	Algo::Sort(SortedArray, [](const FBuildingSingleLevelData& A, const FBuildingSingleLevelData& B)
		{
			return A.SpawnWeight > B.SpawnWeight;
		});

	TArray<TSubclassOf<ASO_Building_Base>> HasSpawned;

	int32 NumberOfLevel = FMath::RandRange(RandomNumberOfLevelInRange.X, RandomNumberOfLevelInRange.Y);
	int32 InvalidLoopIndex = 0;
	while (HasSpawned.Num() < NumberOfLevel && InvalidLoopIndex < NumberOfLevel)
	{
		for (FBuildingSingleLevelData& SA : SortedArray)
		{
			//RandomAfterCertainLevel
			int32 FindLastIndex = HasSpawned.FindLast(SA.Level);
			int32 Distance = (HasSpawned.Num() - 1) - FindLastIndex;
			int32 AfterCertainLevel = FMath::RandRange(int32(SA.RandomRepeatAfterCertainLevel.X), int32(SA.RandomRepeatAfterCertainLevel.Y));
			bool RandomAfterCertainLevel = FindLastIndex != -1 && AfterCertainLevel < (NumberOfLevel - HasSpawned.Num()) ? Distance > AfterCertainLevel : true;
			if (!RandomAfterCertainLevel) continue;

			int32 VariantSpawnedCount = Algo::Count(HasSpawned, SA.Level);
			float RandomValue = FMath::RandRange(0.0f, 1.5f);
			
			if (RandomValue <= SA.SpawnWeight && VariantSpawnedCount < SA.SpawnLimit)
			{
				if (!IsValid(SA.Level)) 
				{ 
					InvalidLoopIndex++;
					UE_LOG(LogTemp, Warning, TEXT("There is an invalid class in the DataTable %s"), *DataTable->GetName());
					continue;
				}

				if (SA.Repeat ? true : !HasSpawned.Contains(SA.Level))
				{
					HasSpawned.Add(SA.Level);
					
					FTransform SpawnTransform;
					CacheLevel.Add(GetWorld()->SpawnActor<ASO_Building_Base>(SA.Level, SpawnTransform));
					OnSpawningLevel(CacheLevel[CacheLevel.Num()-1]);
					break;
				}
				else
				{
					//If there are no buildings that can be spawned from the table, stop the while loop
					InvalidLoopIndex++;
				}
			}
		}
	}*/
}

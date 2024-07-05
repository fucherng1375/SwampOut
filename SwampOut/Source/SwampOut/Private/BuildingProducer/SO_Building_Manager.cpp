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
	
}

void UBuildingSetting1D::Auth_SpawnBuilding()
{
	ASO_Building_Manager* Owner = GetTypedOuter<ASO_Building_Manager>();
	
	if (!IsValid(Owner) || !Owner->HasAuthority() || !IsValid(DataTable)) return;
	FBuildingProceduralGenerateData* FindRow = DataTable->FindRow<FBuildingProceduralGenerateData>(FName(FString::FromInt(ID)), FString());
	if (!FindRow || FindRow->PossibleLevel.Num() <= 0) return;

	int32 NumberOfLevel = FMath::RandRange(RandomNumberOfLevelInRange.Min, RandomNumberOfLevelInRange.Max);

	TArray<FBuildingSingleLevelData> ReadyToSpawns = TArray<FBuildingSingleLevelData>();
	ReadyToSpawns.Reserve(NumberOfLevel);

	TArray<TSubclassOf<ASO_Building_Base>> CurrentLevels = TArray<TSubclassOf<ASO_Building_Base>>();
	CurrentLevels.Reserve(NumberOfLevel);

	TArray<EVariant> CurrentExitID = TArray<EVariant>();
	CurrentExitID.Reserve(NumberOfLevel + 1);

	//InitializeGroundFloor
	TSubclassOf<ASO_Building_Base> GroundFloor = FindRow->RandomGroundFloor[FMath::RandRange(0, (FindRow->RandomGroundFloor.Num() - 1))];
	if (!IsValid(GroundFloor)) return;
	CurrentExitID.Add(GroundFloor->GetDefaultObject<ASO_Building_Base>()->ExitID);
	ReadyToSpawns.Add(FBuildingSingleLevelData(GroundFloor));

	const auto GetRandomLevel = [&](const TArray<FBuildingSingleLevelData>& PossibleLevel, TArray<TSubclassOf<ASO_Building_Base>>& CurrentLevels)
		{
			int32 TotalLength = PossibleLevel.Num();
			float Random = FMath::RandRange(0.0f, 1.5f);
			for (const auto& Data : PossibleLevel)
			{
				int32 FindIndex = CurrentLevels.FindLast(Data.Level);
				bool CheckSame = FindIndex != -1 ? ((CurrentLevels.Num() - 1) - FindIndex) > FMath::RandRange(Data.RandomRepeatAfterCertainLevel.Min, Data.RandomRepeatAfterCertainLevel.Max) : true;
				if (Random <= Data.SpawnWeight && CheckSame) return Data;
			}
			return PossibleLevel[PossibleLevel.Num() - 1];
		};

	//InitializeUpperFloor
	for (int32 i = 0; i < NumberOfLevel; i++)
	{
		int32 FindIndex = CurrentExitID.Num() - 1;
		if (!SeparateVariant.Contains(CurrentExitID[FindIndex])) continue;

		const TArray<FBuildingSingleLevelData>& LevelData = SeparateVariant.Find(CurrentExitID[FindIndex])->PossibleLevel;

		const FBuildingSingleLevelData& SpawnLevel = GetRandomLevel(LevelData, CurrentLevels);
		if (!IsValid(SpawnLevel.Level)) continue;

		//UE_LOG(LogTemp, Warning, TEXT("Level-> %s"), *SpawnLevel.Level->GetName());

		CurrentExitID.Add(SpawnLevel.Level->GetDefaultObject<ASO_Building_Base>()->ExitID);
		CurrentLevels.Add(SpawnLevel.Level);
		ReadyToSpawns.Add(SpawnLevel);
	}

	//Spawn
	for (auto& Data : ReadyToSpawns)
	{
		FTransform SpawnTransform;
		Owner->CacheLevel.Add(GetWorld()->SpawnActor<ASO_Building_Base>(Data.Level, SpawnTransform));
		Owner->OnSpawningLevel(Owner->CacheLevel[Owner->CacheLevel.Num() - 1]);
	}
}

void UBuildingSetting3D::Auth_SpawnBuilding()
{
}

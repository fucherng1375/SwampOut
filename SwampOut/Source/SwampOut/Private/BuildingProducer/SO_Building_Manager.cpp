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
}

// Called every frame
void ASO_Building_Manager::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

void ASO_Building_Manager::Auth_SpawnBuilding()
{
	if (!HasAuthority() || !IsValid(DataTable)) return;
	FBuildingVariantData* FindRow = DataTable->FindRow<FBuildingVariantData>(FName(FString::FromInt(DataTableID)), FString());
	if (!FindRow || FindRow->StartedRooms.Num() == 0) return; 

	int32 NumberOfHeight = FMath::RandRange(RandomNumberOfHeight.X, RandomNumberOfHeight.Y);

	TArray<TSubclassOf<ASO_Building_Base>> SpawnRooms = TArray<TSubclassOf<ASO_Building_Base>>();

	int32 TotalWidth = LengthAndWidth.X * LengthAndWidth.Y;
	int32 TotalRooms = TotalWidth * NumberOfHeight;
	SpawnRooms.Reserve(TotalRooms);

	TSubclassOf<ASO_Building_Base> StartedRoom = FindRow->StartedRooms[FMath::RandRange(0, FindRow->StartedRooms.Num()-1)];
	
	if (!IsValid(StartedRoom)) return;
	SpawnRooms.Add(StartedRoom);

	auto FindNewChamber = [](const TArray<FDirectionWithKey>& DirectionWithKey, const TArray<TSubclassOf<ASO_Building_Base>>& Rooms) -> TSubclassOf<ASO_Building_Base>
		{
			TArray<TSubclassOf<ASO_Building_Base>> FoundLevel;

			for (const auto& NewLevel : Rooms)
			{
				if (!IsValid(NewLevel)) continue;

				uint8 MatchedKey = 0;
				uint8 TotalMatched = DirectionWithKey.Num();

				ASO_Building_Base* NewLevelPtr = NewLevel->GetDefaultObject<ASO_Building_Base>();

				for (const FDirectionWithKey& DK : DirectionWithKey)
				{
					//UE_LOG(LogTemp, Display, TEXT("SpawnRooms length %s"),);
					switch (DK.Direction)
					{
						case EDirection::Front:
							if (NewLevelPtr->BuildingKey.FrontID != 0 && NewLevelPtr->BuildingKey.FrontID == DK.Key)
							{
								MatchedKey++;
							}
							break;
						case EDirection::Back:
							if (NewLevelPtr->BuildingKey.BackID != 0 && NewLevelPtr->BuildingKey.BackID == DK.Key)
							{
								MatchedKey++;
							}
							break;
						case EDirection::Left:
							if (NewLevelPtr->BuildingKey.LeftID != 0 && NewLevelPtr->BuildingKey.LeftID == DK.Key)
							{
								MatchedKey++;
							}
							break;
						case EDirection::Right:
							if (NewLevelPtr->BuildingKey.RightID != 0 && NewLevelPtr->BuildingKey.RightID == DK.Key)
							{
								MatchedKey++;
							}
							break;
						case EDirection::Top:
							if (NewLevelPtr->BuildingKey.TopID != 0 && NewLevelPtr->BuildingKey.TopID == DK.Key)
							{
								MatchedKey++;
							}
							break;
						case EDirection::Bottom:
							if (NewLevelPtr->BuildingKey.BottomID != 0 && NewLevelPtr->BuildingKey.BottomID == DK.Key)
							{
								MatchedKey++;
							}
							break;
						default:
							break;
					}

					if (MatchedKey == TotalMatched)
					{
						FoundLevel.Add(NewLevel);
					}
				}
			}
			return FoundLevel.Num() > 0 ? FoundLevel[FMath::RandRange(0, FoundLevel.Num() - 1)] : nullptr;
		};

	for (int32 i = 0; i < TotalRooms - 1; i++)
	{
		if (!SpawnRooms.IsValidIndex(i) || !IsValid(SpawnRooms[i])) continue;

		int32 WidthIndex =  (i + 1) % TotalWidth;
		bool StartAtFirst = (WidthIndex % LengthAndWidth.X) == 0;
		bool UpperLevel = ( (i + 1) / TotalWidth) >= 1;

		TArray<FDirectionWithKey> DirectionWithKey;

		//First Row
		if (WidthIndex < LengthAndWidth.X && !UpperLevel)
		{
			const ASO_Building_Base* FrontRoom = SpawnRooms[i]->GetDefaultObject<ASO_Building_Base>();

			DirectionWithKey.Add(FDirectionWithKey(EDirection::Front, FrontRoom->BuildingKey.BackID));
		}

		if (WidthIndex >= LengthAndWidth.X && !UpperLevel)
		{
			if (StartAtFirst)
			{
				const ASO_Building_Base* LeftRoom = SpawnRooms[i - (LengthAndWidth.X - 1)]->GetDefaultObject<ASO_Building_Base>();

				DirectionWithKey.Add(FDirectionWithKey(EDirection::Left, LeftRoom->BuildingKey.RightID));
				
			}
			else
			{
				const ASO_Building_Base* LeftRoom = SpawnRooms[i - (LengthAndWidth.X - 1)]->GetDefaultObject<ASO_Building_Base>();
				const ASO_Building_Base* FrontRoom = SpawnRooms[i]->GetDefaultObject<ASO_Building_Base>();

				DirectionWithKey.Add(FDirectionWithKey(EDirection::Left, LeftRoom->BuildingKey.RightID));
				DirectionWithKey.Add(FDirectionWithKey(EDirection::Front, FrontRoom->BuildingKey.BackID));
			}
		}

		//Upper level
		if (UpperLevel)
		{
			if (WidthIndex != 0 && WidthIndex < LengthAndWidth.X) //First Row
			{
				const ASO_Building_Base* FrontRoom = SpawnRooms[i]->GetDefaultObject<ASO_Building_Base>();

				DirectionWithKey.Add(FDirectionWithKey(EDirection::Front, FrontRoom->BuildingKey.BackID));
			}
			else if (WidthIndex >= LengthAndWidth.X) //After First Row
			{
				if (StartAtFirst)
				{
					const ASO_Building_Base* LeftRoom = SpawnRooms[i - (LengthAndWidth.X - 1)]->GetDefaultObject<ASO_Building_Base>();

					DirectionWithKey.Add(FDirectionWithKey(EDirection::Left, LeftRoom->BuildingKey.RightID));
				}
				else
				{
					const ASO_Building_Base* LeftRoom = SpawnRooms[i - (LengthAndWidth.X - 1)]->GetDefaultObject<ASO_Building_Base>();
					const ASO_Building_Base* FrontRoom = SpawnRooms[i]->GetDefaultObject<ASO_Building_Base>();

					DirectionWithKey.Add(FDirectionWithKey(EDirection::Left, LeftRoom->BuildingKey.RightID));
					DirectionWithKey.Add(FDirectionWithKey(EDirection::Front, FrontRoom->BuildingKey.BackID));
				}
			}

			// Compulsory to obtain the bottom ID for all upper-level chambers
			const ASO_Building_Base* BottomRoom = SpawnRooms[ (i + 1) - TotalWidth]->GetDefaultObject<ASO_Building_Base>();
			DirectionWithKey.Add(FDirectionWithKey(EDirection::Bottom, BottomRoom->BuildingKey.TopID));
		}

		if (TSubclassOf<ASO_Building_Base> NewChamber = FindNewChamber(DirectionWithKey, FindRow->Rooms); IsValid(NewChamber))
		{
			SpawnRooms.Add(NewChamber);
		}
	}

	for (TSubclassOf<ASO_Building_Base> s : SpawnRooms)
	{
		GEngine->AddOnScreenDebugMessage(-1, 500.f, FColor::Red, s->GetName());
	}
}

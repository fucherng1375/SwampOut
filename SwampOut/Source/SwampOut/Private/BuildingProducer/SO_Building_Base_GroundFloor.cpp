// Fill out your copyright notice in the Description page of Project Settings.


#include "BuildingProducer/SO_Building_Base_GroundFloor.h"
#include "BuildingProducer/SO_Building_Base_Layer.h"
#include "Algo/Sort.h"
#include "Algo/Find.h"

ASO_Building_Base_GroundFloor::ASO_Building_Base_GroundFloor()
{
}

// Called when the game starts or when spawned
void ASO_Building_Base_GroundFloor::BeginPlay()
{
	Super::BeginPlay();

	for (int32 i = 0; i < FMath::RandRange(RandomNumberOfLayer.X, RandomNumberOfLayer.Y); i++)
	{
		if (!IsValid(DataTable)) continue;
		FBuildingProceduralGenerateData* FindRow = DataTable->FindRow<FBuildingProceduralGenerateData>(FName(FString::FromInt(ID)), FString());
		if (FindRow && FindRow->PossibleLayer.Num() > 0)
		{
			FTransform SpawnTransform;

			TSubclassOf<ASO_Building_Base_Layer> SpawnLayer = FindRow->PossibleLayer[0].Layer;

			/*Algo::Sort(FindRow->PossibleLayer, [](const FBuildingSingleLayerData& A, const FBuildingSingleLayerData& B)
				{
					return A.SpawnWeight > B.SpawnWeight;
				});
			TArray<FBuildingSingleLayerData> SortedArray = FindRow->PossibleLayer;
			float RandomValue = FMath::RandRange(SortedArray[0].SpawnWeight, SortedArray[SortedArray.Num()-1].SpawnWeight);

			Algo::FindByPredicate(SortedArray, [RandomValue](const FBuildingSingleLayerData& Item) {
				return Item.SpawnWeight <= RandomValue;
				});*/

			TArray<FBuildingSingleLayerData> SortedArray = FindRow->PossibleLayer;
			float RandomValue = FMath::RandRange(0.0f,1.0f);

			Algo::FindByPredicate(SortedArray, [RandomValue](const FBuildingSingleLayerData& Item) {
				return Item.SpawnWeight <= RandomValue;
				});

			CacheLayer.Add(GetWorld()->SpawnActor<ASO_Building_Base_Layer>(SpawnLayer, SpawnTransform));
		}
	}
}

// Called every frame
void ASO_Building_Base_GroundFloor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}
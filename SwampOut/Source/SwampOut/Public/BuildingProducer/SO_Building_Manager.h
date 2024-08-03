// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BuildingProducer/SO_Building_Base.h"
#include "SO_Building_Manager.generated.h"

USTRUCT(BlueprintType)
struct FBuildingVariantData : public FTableRowBase
{
	GENERATED_BODY()

	FBuildingVariantData() {}
	FBuildingVariantData(TSubclassOf<ASO_Building_Base> Room)
	{
		Rooms.Add(Room);
	}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TArray<TSubclassOf<ASO_Building_Base>> StartedRooms = TArray<TSubclassOf<ASO_Building_Base>>();

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TArray<TSubclassOf<ASO_Building_Base>> Rooms = TArray<TSubclassOf<ASO_Building_Base>>();

	TSubclassOf<ASO_Building_Base> FindRoomWithKey(const FBuildingKey& key) const
	{
		for (TSubclassOf<ASO_Building_Base> Data : Rooms)
		{
			if (Data->GetDefaultObject<ASO_Building_Base>()->BuildingKey == key)
			{
				return Data;
			}
		}
		return nullptr;
	}

	FBuildingKey* FindRoomKeyWithKey(const FBuildingKey& key) const
	{
		for (TSubclassOf<ASO_Building_Base> Data : Rooms)
		{
			FBuildingKey* BuildingKey = &Data->GetDefaultObject<ASO_Building_Base>()->BuildingKey;
			if (BuildingKey == nullptr) { continue; }
			if (*BuildingKey == key)
			{
				return BuildingKey;
			}
		}
		return nullptr;
	}
};

UCLASS()
class SWAMPOUT_API ASO_Building_Manager : public AActor
{
	GENERATED_BODY()

public:
	ASO_Building_Manager();

#pragma region Virtual Function
protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;
#pragma endregion

#pragma region EditAnywhere Custom Setting - Variable

public:
	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TObjectPtr<UDataTable> DataTable;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 DataTableID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntPoint LengthAndWidth = FIntPoint(1, 1);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FVector ChamberSize = FVector(500.0f , 500.0f, 500.0f);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntPoint RandomNumberOfHeight = FIntPoint(1, 3);

#pragma endregion

#pragma region BlueprintImplementableEvent - Function
public:
	UFUNCTION(BlueprintImplementableEvent)
	void OnSpawningLevel(ASO_Building_Base* Level);

#pragma endregion

private:
	void Auth_SpawnBuilding();
};

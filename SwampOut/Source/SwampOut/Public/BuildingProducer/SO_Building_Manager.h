// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BuildingProducer/SO_Building_Base.h"
#include "SO_Building_Manager.generated.h"

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
	int32 ID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntMinMax RandomNumberOfLevelInRange = FIntMinMax(1, 3);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TObjectPtr<UDataTable> DataTable;

#pragma endregion

#pragma region Building runtime caching data  - Variable
public:
	UPROPERTY(BlueprintReadOnly, VisibleAnywhere)
	TArray<TObjectPtr<ASO_Building_Base>> CacheLevel = TArray<TObjectPtr<ASO_Building_Base>>();
#pragma endregion

#pragma region Cache data after compile  - Variable
private:
	UPROPERTY(VisibleAnywhere)
	TMap<EVariant, FBuildingMultipleLevelData> SeparateVariant = TMap<EVariant, FBuildingMultipleLevelData>();

#pragma endregion

#pragma region Call in Editor - Function
public:
	UFUNCTION(CallInEditor)
	void ClassifyBuildingData();
#pragma endregion


#pragma region BlueprintImplementableEvent - Function
public:
	UFUNCTION(BlueprintImplementableEvent)
	void OnSpawningLevel(ASO_Building_Base* Level);

#pragma endregion

#pragma region C++ Private Native Function - Function
private:
	void Auth_SpawnBuildingOld();
	void Auth_SpawnBuilding();
#pragma endregion
};

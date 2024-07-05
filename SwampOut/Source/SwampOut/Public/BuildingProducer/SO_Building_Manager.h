// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BuildingProducer/SO_Building_Base.h"
#include "SO_Building_Manager.generated.h"

UCLASS()
class SWAMPOUT_API UBuildingSetting : public UObject
{
public:
	GENERATED_BODY()
	UBuildingSetting() {}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 ID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntMinMax RandomNumberOfLevelInRange = FIntMinMax(1, 3);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TObjectPtr<UDataTable> DataTable;

	virtual void Auth_SpawnBuilding() {};
};

UCLASS(EditInlineNew)
class SWAMPOUT_API UBuildingSetting1D final : public UBuildingSetting
{
public:
	GENERATED_BODY()
	UBuildingSetting1D() {}

	virtual void Auth_SpawnBuilding() override;
};

UCLASS(EditInlineNew)
class SWAMPOUT_API UBuildingSetting3D final : public UBuildingSetting
{
public:
	GENERATED_BODY()
	UBuildingSetting3D() {}

	virtual void Auth_SpawnBuilding() override;
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
	UPROPERTY(EditAnywhere, Instanced)
	TObjectPtr<UBuildingSetting> BuildingSetting;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 ID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntMinMax RandomNumberOfLevelInRange = FIntMinMax(1, 3);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TObjectPtr<UDataTable> DataTable;

#pragma endregion

public:
	UPROPERTY(BlueprintReadOnly, VisibleAnywhere)
	TArray<TObjectPtr<ASO_Building_Base>> CacheLevel = TArray<TObjectPtr<ASO_Building_Base>>();

private:
	UPROPERTY(VisibleAnywhere)
	TMap<EVariant, FBuildingMultipleLevelData> SeparateVariant = TMap<EVariant, FBuildingMultipleLevelData>();


public:
	UFUNCTION(CallInEditor)
	void ClassifyBuildingData();

	UFUNCTION(BlueprintImplementableEvent)
	void OnSpawningLevel(ASO_Building_Base* Level);


#pragma region C++ Private Native Function - Function
private:
	void Auth_SpawnBuilding();
#pragma endregion
};

// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "BuildingProducer/SO_Building_Base.h"
#include "SO_Building_Base_GroundFloor.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API ASO_Building_Base_GroundFloor : public ASO_Building_Base
{
	GENERATED_BODY()
public:
	ASO_Building_Base_GroundFloor();

#pragma region EditAnywhere Variable

public:

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int32 ID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FVector2D RandomNumberOfLayer = FVector2D(1, 3);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TObjectPtr<UDataTable> DataTable;

#pragma endregion

#pragma region Public in c++ only
public:
	TArray<TObjectPtr<class ASO_Building_Base_Layer>> CacheLayer = TArray<TObjectPtr<class ASO_Building_Base_Layer>>();
#pragma endregion



protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;
};

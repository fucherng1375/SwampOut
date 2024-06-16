// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Math/UnrealMathUtility.h"
#include "SO_Building_Base.generated.h"

USTRUCT(BlueprintType)
struct FBuildingSingleLayerData
{
	GENERATED_BODY()

public:

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TSubclassOf<class ASO_Building_Base_Layer> Layer;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	bool Repeat = true;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FVector2D RandomRepeatAfterACertainLevel = FVector2D(1,2);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	float SpawnWeight;
};

USTRUCT(BlueprintType)
struct FBuildingProceduralGenerateData : public FTableRowBase
{
	GENERATED_BODY()

public:

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TArray<FBuildingSingleLayerData> PossibleLayer = TArray<FBuildingSingleLayerData>();
};

UCLASS()
class SWAMPOUT_API ASO_Building_Base : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASO_Building_Base();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

};

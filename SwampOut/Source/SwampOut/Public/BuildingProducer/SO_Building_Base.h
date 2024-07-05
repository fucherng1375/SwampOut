// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Math/UnrealMathUtility.h"
#include "SO_Building_Base.generated.h"

UENUM(BlueprintType)
enum class EBuildingGenerateDimension : uint8
{
	OneDimension,
	ThreeDimension
};

UENUM(BlueprintType)
enum class EVariant : uint8
{
	None,
	Variant1,
	Variant2,
	Variant3,
	Variant4,
	Variant5,
	Variant6
};

USTRUCT(BlueprintType)
struct FIntMinMax
{
	GENERATED_BODY()
public:
	FIntMinMax() {}
	FIntMinMax(int32 Min, int32 Max) :Min(Min), Max(Max) {}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int Min = 1;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	int Max = 1;
};

USTRUCT(BlueprintType)
struct FBuildingSingleLevelData
{
	GENERATED_BODY()

public:
	FBuildingSingleLevelData() {}
	FBuildingSingleLevelData(const TSubclassOf<ASO_Building_Base>& Level):Level(Level){}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TSubclassOf<ASO_Building_Base> Level;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	bool Repeat = true;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	float SpawnWeight = 1.0f;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntMinMax MinMaxSpawn = FIntMinMax(1, 1);

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FIntMinMax RandomRepeatAfterCertainLevel = FIntMinMax(1,2);
};

USTRUCT(BlueprintType)
struct FBuildingProceduralGenerateData : public FTableRowBase
{
	GENERATED_BODY()

public:
	FBuildingProceduralGenerateData() {}
	FBuildingProceduralGenerateData(const FBuildingSingleLevelData& AddIntoPossibleLevel) 
	{
		PossibleLevel.Add(AddIntoPossibleLevel);
	}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TArray<TSubclassOf<ASO_Building_Base>> RandomGroundFloor = TArray<TSubclassOf<ASO_Building_Base>>();

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TArray<FBuildingSingleLevelData> PossibleLevel = TArray<FBuildingSingleLevelData>();
};

USTRUCT(BlueprintType)
struct FBuildingMultipleLevelData
{
	GENERATED_BODY()

public:
	FBuildingMultipleLevelData() {}
	FBuildingMultipleLevelData(const FBuildingSingleLevelData& AddIntoPossibleLevel)
	{
		PossibleLevel.Add(AddIntoPossibleLevel);
	}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	TArray<FBuildingSingleLevelData> PossibleLevel = TArray<FBuildingSingleLevelData>();
};

UCLASS()
class SWAMPOUT_API UBuildingType : public UObject
{
public:
	GENERATED_BODY()
	UBuildingType() {}

	UPROPERTY(BlueprintReadOnly, VisibleAnywhere)
	EBuildingGenerateDimension BuildingGenerateDimension;
};

UCLASS()
class SWAMPOUT_API UBuildingType1D final : public UBuildingType
{
public:
	GENERATED_BODY()
	UBuildingType1D() 
	{
		BuildingGenerateDimension = EBuildingGenerateDimension::OneDimension;
	}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant EntryID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant ExitID;
};

UCLASS()
class SWAMPOUT_API UBuildingType3D final : public UBuildingType
{
public:
	GENERATED_BODY()
	UBuildingType3D() 
	{
		BuildingGenerateDimension = EBuildingGenerateDimension::ThreeDimension;
	}

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant FrontID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant BackID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant LeftID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant RightID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant TopID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant BottomID;
};

UCLASS()
class SWAMPOUT_API ASO_Building_Base : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASO_Building_Base();

	TObjectPtr<UBuildingType> BuildingGenerateType;

	/*UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant EntryID;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	EVariant ExitID;*/

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

};

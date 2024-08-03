// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Math/UnrealMathUtility.h"
#include "SO_Building_Base.generated.h"

UENUM()
enum class EFindDirection : uint8
{
	Front,
	Left,
	FrontAndLeft,
	Bottom,
	BottomAndFront,
	BottomAndLeft,
	BottomFrontLeft
};

UENUM()
enum class EDirection : uint8
{
	Front,
	Back,
	Left,
	Right,
	Top,
	Bottom
};

USTRUCT()
struct FDirectionWithKey
{
	GENERATED_BODY()

	FDirectionWithKey() {}

	FDirectionWithKey(const EDirection& Direction, const uint8& Key)
		: Direction(Direction), Key(Key)
	{
	}

	EDirection Direction;
	uint8 Key;
};

USTRUCT(BlueprintType)
struct FBuildingKey
{
	GENERATED_BODY()

public:
	FBuildingKey() {}

	FBuildingKey(const uint8& FrontID, const uint8& BackID, const uint8& LeftID, const uint8& RightID, const uint8& TopID, const uint8& BottomID)
		: FrontID(FrontID), BackID(BackID), LeftID(LeftID), RightID(RightID), TopID(TopID), BottomID(BottomID)
	{
	}
	

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	uint8 FrontID = 0;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	uint8 BackID = 0;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	uint8 LeftID = 0;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	uint8 RightID = 0;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	uint8 TopID = 0;

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	uint8 BottomID = 0;

	bool operator==(const FBuildingKey& OtherKey) const
	{
		return true;
	}
};



UCLASS()
class SWAMPOUT_API ASO_Building_Base : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASO_Building_Base();

	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	FBuildingKey BuildingKey = FBuildingKey();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

};

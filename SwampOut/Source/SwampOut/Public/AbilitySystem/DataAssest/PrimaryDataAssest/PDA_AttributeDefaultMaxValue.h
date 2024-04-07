// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/DataAsset.h"
#include "AbilitySystem/GameplayEffect/SOGameplayEffectBase.h"
#include "PDA_AttributeDefaultMaxValue.generated.h"

USTRUCT(BlueprintType)
struct FDefaultMaxData
{
    GENERATED_BODY()

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TSubclassOf<USOGameplayEffectBase> GameplayEffect;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    float DefaultValue;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    float MaxValue;
};

UCLASS()
class SWAMPOUT_API UPDA_AttributeDefaultMaxValue : public UPrimaryDataAsset
{
	GENERATED_BODY()

public:
    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TArray<FDefaultMaxData> AttributeData;
};

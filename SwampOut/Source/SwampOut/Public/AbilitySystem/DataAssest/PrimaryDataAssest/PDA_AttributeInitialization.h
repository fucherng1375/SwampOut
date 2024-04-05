// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/DataAsset.h"
#include "AbilitySystem/GameplayEffect/SOGameplayEffectBase.h"
#include "PDA_AttributeInitialization.generated.h"

USTRUCT(BlueprintType)
struct FDefaultMaxValue
{
    GENERATED_BODY()

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    float DefaultValue;

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    float MaxValue;

};

UCLASS()
class SWAMPOUT_API UPDA_AttributeInitialization : public UPrimaryDataAsset
{
	GENERATED_BODY()

public:
    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TMap<TSubclassOf<USOGameplayEffectBase>, FDefaultMaxValue> AttributeData;
};

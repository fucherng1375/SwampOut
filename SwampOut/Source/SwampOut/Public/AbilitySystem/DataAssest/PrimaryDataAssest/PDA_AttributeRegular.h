// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/DataAsset.h"
#include "AbilitySystem/GameplayEffect/SOGameplayEffectBase.h"
#include "PDA_AttributeRegular.generated.h"


USTRUCT(BlueprintType)
struct FDefaultPrePostAdditiveData
{
    GENERATED_BODY()

    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TSubclassOf<USOGameplayEffectBase> GameplayEffect;
};

UCLASS()
class SWAMPOUT_API UPDA_AttributeRegular : public UPrimaryDataAsset
{
	GENERATED_BODY()

public:
    UPROPERTY(EditAnywhere, BlueprintReadWrite)
    TArray<FDefaultPrePostAdditiveData> AttributeData;
};

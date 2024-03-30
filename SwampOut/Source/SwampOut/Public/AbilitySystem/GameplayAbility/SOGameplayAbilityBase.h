// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystem/GASStructAndEnum/InputID.h"
#include "Abilities/GameplayAbility.h"
#include "SOGameplayAbilityBase.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API USOGameplayAbilityBase : public UGameplayAbility
{
	GENERATED_BODY()
	
	USOGameplayAbilityBase();

public:
	UPROPERTY(BlueprintReadOnly, EditAnywhere, Category = "Config")
	ESOAbilityInputID InputID;
};

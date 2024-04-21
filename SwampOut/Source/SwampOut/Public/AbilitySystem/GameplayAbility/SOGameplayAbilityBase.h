// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystem/GASStructAndEnum/InputID.h"
#include "Abilities/GameplayAbility.h"
#include "SOGameplayAbilityBase.generated.h"

UENUM(BlueprintType)
enum class EInputType : uint8
{
	Player,
	Ai
};

UCLASS()
class SWAMPOUT_API USOGameplayAbilityBase : public UGameplayAbility
{
	GENERATED_BODY()
	
	USOGameplayAbilityBase();

public:
	UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = "Config | Input Setting")
	EInputType InputType;

	UPROPERTY(BlueprintReadOnly, EditAnywhere, meta = (EditCondition = "InputType==EInputType::Player", EditConditionHides, Category = "Config | Input Setting"))
	TObjectPtr<class UInputAction>  PlayerInputAction;

	UPROPERTY(BlueprintReadOnly, EditAnywhere, meta = (EditCondition = "InputType==EInputType::Ai", EditConditionHides, Category = "Config | Input Setting"))
	ESOAbilityInputID AiInputID;
};

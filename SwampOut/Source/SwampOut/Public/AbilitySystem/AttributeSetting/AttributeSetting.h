// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/NoExportTypes.h"
#include "AbilitySystem/GameplayEffect/SOGameplayEffectBase.h"
#include "GameplayTagContainer.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetting.generated.h"

class UAbilitySystemComponent;

UCLASS()
class SWAMPOUT_API UAttributeSetting : public UObject
{
	GENERATED_BODY()

public:

	UFUNCTION()
	virtual void Run(UAbilitySystemComponent* ASC) {};

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TSubclassOf<USOGameplayEffectBase> GameplayEffect;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UAttributeSettingDefaultMax : public UAttributeSetting
{
	GENERATED_BODY()

public:
	virtual void Run(UAbilitySystemComponent* ASC) override;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TSubclassOf<USOAttributeSetBase> AttributeClass;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FGameplayTag BaseValueTag;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float BaseValue;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FGameplayTag MaxValueTag;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float MaxValue;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UAttributeSettingSingleValue : public UAttributeSetting
{
	GENERATED_BODY()
public:

	virtual void Run(UAbilitySystemComponent* ASC) override;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TSubclassOf<USOAttributeSetBase> AttributeClass;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FGameplayTag BaseValueTag;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float BaseValue;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UAttributeSettingRegular : public UAttributeSetting
{
	GENERATED_BODY()

public:

	virtual void Run(UAbilitySystemComponent* ASC) override;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TArray<TSubclassOf<USOAttributeSetBase>> AttributeClass;
};
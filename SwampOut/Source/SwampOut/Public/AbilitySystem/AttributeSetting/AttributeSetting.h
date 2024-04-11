// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/NoExportTypes.h"
#include "AbilitySystem/GameplayEffect/SOGameplayEffectBase.h"
#include "GameplayTagContainer.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetHealth.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStamina.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStatusResistantBase.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStarving.h"

#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetStrength.h"
#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetAgility.h"
#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetIntelligent.h"

#include "AttributeSetting.generated.h"

// #define Initialize_Attribute_With_Single_Value(Class, GameplayEffect, SingleValueSetting) \
// 	{\
// 		Add_Attribute(Class); \
// 		FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(SingleValueSetting->GameplayEffect, 1.0f, MakeEffectContext()); \
// 		SpecHandle.Data->SetSetByCallerMagnitude(SingleValueSetting->BaseValueTag, SingleValueSetting->BaseValue); \
// 		ApplyGameplayEffectSpecToSelf(*SpecHandle.Data); \
// 	}
    

// #define Initialize_Attribute_With_DefaultMax_Value(Class, GameplayEffect, DefaultMaxSetting) \
// 	{ \
// 		Add_Attribute(Class); \
// 		FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(GameplayEffect, 1.0f, MakeEffectContext()); \
// 		SpecHandle.Data->SetSetByCallerMagnitude(MaxValueTag, MaxValue); \
// 		SpecHandle.Data->SetSetByCallerMagnitude(BaseValueTag, BaseValue); \
// 		ApplyGameplayEffectSpecToSelf(*SpecHandle.Data); \
// 	}

// #define Add_Attribute(Class) \
// 	if(!GetAttributeSubobject(Class)) const_cast<UAttributeSet*>(GetOrCreateAttributeSubobject(Class));\

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
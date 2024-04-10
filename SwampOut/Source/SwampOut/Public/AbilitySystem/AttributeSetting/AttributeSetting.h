// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/NoExportTypes.h"
#include "AbilitySystem/GameplayEffect/SOGameplayEffectBase.h"

#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetHealth.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStamina.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStatusResistantBase.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStarving.h"

#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetStrength.h"
#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetAgility.h"
#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetIntelligent.h"

#include "AttributeSetting.generated.h"

#define Initialize_Attribute_With_Single_Value(Class, GameplayEffect, SingleValueSetting, InitializeTag, ModifierTag) \
    if (GameplayEffect->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag(InitializeTag, false)))) \
    { \
        Class* AttributeSet = NewObject<Class>(this); \
        AddAttributeSetSubobject(AttributeSet); \
		FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(SingleValueSetting->GameplayEffect, 1.0f, MakeEffectContext()); \
		SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag(ModifierTag, false), SingleValueSetting->DefaultValue); \
		ApplyGameplayEffectSpecToSelf(*SpecHandle.Data); \
    }

#define Initialize_Attribute_With_DefaultMax_Value(Class, GetAttributeBaseFunction, GameplayEffect, DefaultMaxSetting, InitializeTag, ModifierMaxTag, ModifierBaseTag) \
	if (GameplayEffect->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag(InitializeTag, false)))) \
	{ \
		Add_Attribute(Class, GetAttributeBaseFunction); \
		FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(DefaultMaxSetting->GameplayEffect, 1.0f, MakeEffectContext()); \
		SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag(ModifierMaxTag, false), DefaultMaxSetting->MaxValue); \
		SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag(ModifierBaseTag, false), DefaultMaxSetting->DefaultValue); \
		ApplyGameplayEffectSpecToSelf(*SpecHandle.Data); \
	}

#define Add_Attribute(Class, GetAttributeBaseFunction) \
	if (!HasAttributeSetForAttribute(Class::GetAttributeBaseFunction())) \
	{ \
		Class* AttributeSet = NewObject<Class>(this); \
		AddAttributeSetSubobject(AttributeSet); \
	}

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UAttributeSetting : public UObject
{
	GENERATED_BODY()
public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TSubclassOf<USOGameplayEffectBase> GameplayEffect;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UAttributeSettingDefaultMax : public UAttributeSetting
{
	GENERATED_BODY()

public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float DefaultValue;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float MaxValue;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UAttributeSettingSingleValue : public UAttributeSetting
{
	GENERATED_BODY()
public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	float DefaultValue;
};
// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AttributeSetting/AttributeSetting.h"
#include "AbilitySystemComponent.h"

void UAttributeSettingDefaultMax::Run(UAbilitySystemComponent* ASC)
{
	if (IsValid(AttributeClass) == false) return;

	//Indirect attribute
	ASC->InitStats(AttributeClass, nullptr);

	if (IsValid(GameplayEffect))
	{
		FGameplayEffectSpecHandle SpecHandle = ASC->MakeOutgoingSpec(GameplayEffect, 1.0f, ASC->MakeEffectContext());
		SpecHandle.Data->SetSetByCallerMagnitude(MaxValueTag, MaxValue);
		SpecHandle.Data->SetSetByCallerMagnitude(BaseValueTag, BaseValue);

		ASC->ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
	}
}

void UAttributeSettingSingleValue::Run(UAbilitySystemComponent* ASC)
{
	if (IsValid(AttributeClass) == false) return;

	ASC->InitStats(AttributeClass, nullptr);

	if (IsValid(GameplayEffect))
	{
		FGameplayEffectSpecHandle SpecHandle = ASC->MakeOutgoingSpec(GameplayEffect, 1.0f, ASC->MakeEffectContext());
		SpecHandle.Data->SetSetByCallerMagnitude(BaseValueTag, BaseValue);

		ASC->ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
	}
}

void UAttributeSettingRegular::Run(UAbilitySystemComponent* ASC)
{
	for (auto& AC : AttributeClass)
	{
		if (IsValid(AC) == false) return;

		ASC->InitStats(AC, nullptr);
	}

	if (IsValid(GameplayEffect))
	{
		FGameplayEffectSpecHandle SpecHandle = ASC->MakeOutgoingSpec(GameplayEffect, 1.0f, ASC->MakeEffectContext());

		ASC->ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
	}
}

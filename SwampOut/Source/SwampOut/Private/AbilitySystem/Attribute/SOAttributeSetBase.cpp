// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "Net/UnrealNetwork.h"

USOAttributeSetBase::USOAttributeSetBase()
{
}

void USOAttributeSetBase::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);
}

void USOAttributeSetBase::PreAttributeBaseChange(const FGameplayAttribute& Attribute, float& NewValue) const
{
	Super::PreAttributeBaseChange(Attribute, NewValue);

	ClampAttribute(Attribute, NewValue);
}

void USOAttributeSetBase::PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue)
{
	Super::PreAttributeChange(Attribute, NewValue);

	ClampAttribute(Attribute, NewValue);
}

void USOAttributeSetBase::PostGameplayEffectExecute(const FGameplayEffectModCallbackData& Data)
{
	Super::PostGameplayEffectExecute(Data);
}

void USOAttributeSetBase::ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const
{
}
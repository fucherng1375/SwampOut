// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/AttributeSetHeallth.h"
#include "Net/UnrealNetwork.h"

UAttributeSetHeallth::UAttributeSetHeallth()
{
}

void UAttributeSetHeallth::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetHeallth, HealthBase, COND_None, REPNOTIFY_Always);
	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetHeallth, HealthMax, COND_None, REPNOTIFY_Always);
}

void UAttributeSetHeallth::PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue)
{
	Super::PreAttributeChange(Attribute, NewValue);

	ClampAttribute(Attribute, NewValue);

	if (Attribute == GetHealthMaxAttribute() && GetHealthBase() > NewValue) SetHealthBase(NewValue);
}

void UAttributeSetHeallth::ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const
{
	if (Attribute == GetHealthBaseAttribute())
	{
		// Do not allow health to go negative or above max health.
		NewValue = FMath::Clamp(NewValue, 0.0f, GetHealthMax());
	}
	else if (Attribute == GetHealthMaxAttribute())
	{
		// Do not allow max health to drop below 1.
		NewValue = FMath::Max(NewValue, 1.0f);
	}
}
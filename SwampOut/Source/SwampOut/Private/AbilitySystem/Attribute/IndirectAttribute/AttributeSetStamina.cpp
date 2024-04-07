// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStamina.h"
#include "Net/UnrealNetwork.h"

UAttributeSetStamina::UAttributeSetStamina()
{
}

void UAttributeSetStamina::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStamina, StaminaBase, COND_None, REPNOTIFY_Always);
	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStamina, StaminaMax, COND_None, REPNOTIFY_Always);
	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStamina, StaminaRegen, COND_None, REPNOTIFY_Always);
}

void UAttributeSetStamina::PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue)
{
	Super::PreAttributeChange(Attribute, NewValue);

	ClampAttribute(Attribute, NewValue);

	if (Attribute == GetStaminaMaxAttribute() && GetStaminaBase() > NewValue) SetStaminaBase(NewValue);
}

void UAttributeSetStamina::ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const
{
	if (Attribute == GetStaminaBaseAttribute())
	{
		// Do not allow health to go negative or above max health.
		NewValue = FMath::Clamp(NewValue, 0.0f, GetStaminaMax());
	}
	else if (Attribute == GetStaminaMaxAttribute())
	{
		// Do not allow max health to drop below 1.
		NewValue = FMath::Max(NewValue, 1.0f);
	}
}
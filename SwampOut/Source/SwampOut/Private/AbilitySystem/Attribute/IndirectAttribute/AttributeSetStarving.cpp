// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStarving.h"
#include "Net/UnrealNetwork.h"

UAttributeSetStarving::UAttributeSetStarving()
{
}

void UAttributeSetStarving::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStarving, StarvingBase, COND_None, REPNOTIFY_Always);
	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStarving, StarvingMax, COND_None, REPNOTIFY_Always);
	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStarving, StarvingCost, COND_None, REPNOTIFY_Always);
}

void UAttributeSetStarving::PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue)
{
	Super::PreAttributeChange(Attribute, NewValue);

	ClampAttribute(Attribute, NewValue);

	if (Attribute == GetStarvingMaxAttribute() && GetStarvingBase() > NewValue) SetStarvingBase(NewValue);
}

void UAttributeSetStarving::ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const
{
	if (Attribute == GetStarvingBaseAttribute())
	{
		// Do not allow Starving to go negative or above max Starving.
		NewValue = FMath::Clamp(NewValue, 0.0f, GetStarvingMax());
	}
	else if (Attribute == GetStarvingMaxAttribute())
	{
		// Do not allow max Starving to drop below 1.
		NewValue = FMath::Max(NewValue, 1.0f);
	}
}
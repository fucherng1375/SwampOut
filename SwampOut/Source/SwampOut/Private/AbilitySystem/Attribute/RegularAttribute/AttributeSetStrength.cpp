// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetStrength.h"
#include "Net/UnrealNetwork.h"

UAttributeSetStrength::UAttributeSetStrength()
{
}

void UAttributeSetStrength::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStrength, StrengthBase, COND_None, REPNOTIFY_Always);
}
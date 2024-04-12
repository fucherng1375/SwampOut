// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetBuffMultiplier.h"
#include "Net/UnrealNetwork.h"

UAttributeSetBuffMultiplier::UAttributeSetBuffMultiplier()
{
}

void UAttributeSetBuffMultiplier::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetBuffMultiplier, BuffMultiplierBase, COND_None, REPNOTIFY_Always);
}
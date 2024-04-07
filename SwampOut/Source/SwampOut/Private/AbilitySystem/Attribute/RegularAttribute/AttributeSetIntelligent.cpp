// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetIntelligent.h"
#include "Net/UnrealNetwork.h"

UAttributeSetIntelligent::UAttributeSetIntelligent()
{
}

void UAttributeSetIntelligent::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetIntelligent, IntelligentBase, COND_None, REPNOTIFY_Always);
}
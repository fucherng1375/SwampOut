// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetAgility.h"
#include "Net/UnrealNetwork.h"

UAttributeSetAgility::UAttributeSetAgility()
{
}

void UAttributeSetAgility::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetAgility, AgilityBase, COND_None, REPNOTIFY_Always);
}
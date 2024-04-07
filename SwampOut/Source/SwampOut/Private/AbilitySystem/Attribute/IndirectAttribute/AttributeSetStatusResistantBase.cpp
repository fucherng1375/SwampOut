// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStatusResistantBase.h"
#include "Net/UnrealNetwork.h"

UAttributeSetStatusResistantBase::UAttributeSetStatusResistantBase()
{
}

void UAttributeSetStatusResistantBase::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetStatusResistantBase, StatusResistantBase, COND_None, REPNOTIFY_Always);
}
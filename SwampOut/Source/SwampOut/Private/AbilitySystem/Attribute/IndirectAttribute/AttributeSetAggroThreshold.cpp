// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetAggroThreshold.h"
#include "Net/UnrealNetwork.h"

UAttributeSetAggroThreshold::UAttributeSetAggroThreshold()
{
}

void UAttributeSetAggroThreshold::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetAggroThreshold, AggroThresholdBase, COND_None, REPNOTIFY_Always);
}
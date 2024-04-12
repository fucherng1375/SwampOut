// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetMovementSpeed.h"
#include "Net/UnrealNetwork.h"

UAttributeSetMovementSpeed::UAttributeSetMovementSpeed()
{
}

void UAttributeSetMovementSpeed::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetMovementSpeed, MovementSpeedBase, COND_None, REPNOTIFY_Always);
}
// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetDiscountedValueBase.h"
#include "Net/UnrealNetwork.h"

UAttributeSetDiscountedValueBase::UAttributeSetDiscountedValueBase()
{
}

void UAttributeSetDiscountedValueBase::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

	DOREPLIFETIME_CONDITION_NOTIFY(UAttributeSetDiscountedValueBase, DiscountedValueBase, COND_None, REPNOTIFY_Always);
}
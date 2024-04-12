// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetDiscountedValueBase.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetDiscountedValueBase : public USOAttributeSetBase
{
	GENERATED_BODY()
public:
	UAttributeSetDiscountedValueBase();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region DiscountedValue Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetDiscountedValueBase, DiscountedValueBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_DiscountedValueBase)
	FGameplayAttributeData DiscountedValueBase;

	UFUNCTION()
	virtual void OnRep_DiscountedValueBase(const FGameplayAttributeData& OldDiscountedValueBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetDiscountedValueBase, DiscountedValueBase, OldDiscountedValueBase); }
#pragma endregion
};

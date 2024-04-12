// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetBuffMultiplier.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetBuffMultiplier : public USOAttributeSetBase
{
	GENERATED_BODY()
public:
	UAttributeSetBuffMultiplier();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region BuffMultiplier Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetBuffMultiplier, BuffMultiplierBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_BuffMultiplierBase)
	FGameplayAttributeData BuffMultiplierBase;

	UFUNCTION()
	virtual void OnRep_BuffMultiplierBase(const FGameplayAttributeData& OldBuffMultiplierBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetBuffMultiplier, BuffMultiplierBase, OldBuffMultiplierBase); }
#pragma endregion
};

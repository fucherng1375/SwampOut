// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetAggroThreshold.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetAggroThreshold : public USOAttributeSetBase
{
	GENERATED_BODY()

public:
	UAttributeSetAggroThreshold();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region AggroThreshold Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetAggroThreshold, AggroThresholdBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_AggroThresholdBase)
	FGameplayAttributeData AggroThresholdBase;

	UFUNCTION()
	virtual void OnRep_AggroThresholdBase(const FGameplayAttributeData& OldAggroThresholdBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetAggroThreshold, AggroThresholdBase, OldAggroThresholdBase); }
#pragma endregion
	
};

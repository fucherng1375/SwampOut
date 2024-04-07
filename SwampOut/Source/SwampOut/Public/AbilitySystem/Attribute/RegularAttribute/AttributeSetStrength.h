// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetStrength.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetStrength : public USOAttributeSetBase
{
	GENERATED_BODY()
	UAttributeSetStrength();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region Strength Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStrength, StrengthBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StrengthBase)
	FGameplayAttributeData StrengthBase;

	UFUNCTION()
	virtual void OnRep_StrengthBase(const FGameplayAttributeData& OldStrengthBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStrength, StrengthBase, OldStrengthBase); }
#pragma endregion
};


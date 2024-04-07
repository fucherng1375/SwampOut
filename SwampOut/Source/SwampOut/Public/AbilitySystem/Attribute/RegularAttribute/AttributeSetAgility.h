// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetAgility.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetAgility : public USOAttributeSetBase
{
	GENERATED_BODY()
	UAttributeSetAgility();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region Agility Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetAgility, AgilityBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_AgilityBase)
	FGameplayAttributeData AgilityBase;

	UFUNCTION()
	virtual void OnRep_AgilityBase(const FGameplayAttributeData& OldAgilityBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetAgility, AgilityBase, OldAgilityBase); }
#pragma endregion
};

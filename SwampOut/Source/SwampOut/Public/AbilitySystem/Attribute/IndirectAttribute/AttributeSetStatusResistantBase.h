// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetStatusResistantBase.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetStatusResistantBase : public USOAttributeSetBase
{
	GENERATED_BODY()
	UAttributeSetStatusResistantBase();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region StatusResistant Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStatusResistantBase, StatusResistantBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StatusResistantBase)
	FGameplayAttributeData StatusResistantBase;

	UFUNCTION()
	virtual void OnRep_StatusResistantBase(const FGameplayAttributeData& OldStatusResistantBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStatusResistantBase, StatusResistantBase, OldStatusResistantBase); }
#pragma endregion
};

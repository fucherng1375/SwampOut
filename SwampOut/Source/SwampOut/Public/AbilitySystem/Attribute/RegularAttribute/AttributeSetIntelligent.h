// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetIntelligent.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetIntelligent : public USOAttributeSetBase
{
	GENERATED_BODY()
	
	UAttributeSetIntelligent();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region Intelligent Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetIntelligent, IntelligentBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_IntelligentBase)
	FGameplayAttributeData IntelligentBase;

	UFUNCTION()
	virtual void OnRep_IntelligentBase(const FGameplayAttributeData& OldIntelligentBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetIntelligent, IntelligentBase, OldIntelligentBase); }
#pragma endregion
};

// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetStamina.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetStamina : public USOAttributeSetBase
{
	GENERATED_BODY()
	UAttributeSetStamina();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region Stamina Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStamina, StaminaBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StaminaBase)
	FGameplayAttributeData StaminaBase;

	UFUNCTION()
	virtual void OnRep_StaminaBase(const FGameplayAttributeData& OldStaminaBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStamina, StaminaBase, OldStaminaBase); }
#pragma endregion

#pragma region Stamina Max
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStamina, StaminaMax);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StaminaMax)
	FGameplayAttributeData StaminaMax;

	UFUNCTION()
	virtual void OnRep_StaminaMax(const FGameplayAttributeData& OldStaminaMax) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStamina, StaminaMax, OldStaminaMax); }
#pragma endregion

#pragma region Stamina Regen
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStamina, StaminaRegen);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StaminaRegen)
	FGameplayAttributeData StaminaRegen;

	UFUNCTION()
	virtual void OnRep_StaminaRegen(const FGameplayAttributeData& OldStaminaRegen) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStamina, StaminaRegen, OldStaminaRegen); }
#pragma endregion

protected:
	virtual void PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue) override;
	void ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const override;
};

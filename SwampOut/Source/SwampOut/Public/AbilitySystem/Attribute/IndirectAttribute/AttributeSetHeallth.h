// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AttributeSet.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetHeallth.generated.h"

UCLASS()
class SWAMPOUT_API UAttributeSetHeallth : public USOAttributeSetBase
{
	GENERATED_BODY()
	
public:
	UAttributeSetHeallth();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region Health Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetHeallth, HealthBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_HealthBase)
	FGameplayAttributeData HealthBase;

	UFUNCTION()
	virtual void OnRep_HealthBase(const FGameplayAttributeData& OldHealthBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetHeallth, HealthBase, OldHealthBase); }
#pragma endregion

#pragma region Health Max
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetHeallth, HealthMax);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_HealthMax)
	FGameplayAttributeData HealthMax;

	UFUNCTION()
	virtual void OnRep_HealthMax(const FGameplayAttributeData& OldHealthMax) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetHeallth, HealthMax, OldHealthMax); }
#pragma endregion

#pragma region Health Regen
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetHeallth, HealthRegen);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_HealthRegen)
	FGameplayAttributeData HealthRegen;

	UFUNCTION()
	virtual void OnRep_HealthRegen(const FGameplayAttributeData& OldHealthRegen) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetHeallth, HealthRegen, OldHealthRegen); }
#pragma endregion

protected:
	virtual void PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue) override;
	void ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const override;
};

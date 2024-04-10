// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetStarving.generated.h"

UCLASS()
class SWAMPOUT_API UAttributeSetStarving : public USOAttributeSetBase
{
	GENERATED_BODY()

public:
	UAttributeSetStarving();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region Starving Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStarving, StarvingBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StarvingBase)
	FGameplayAttributeData StarvingBase;

	UFUNCTION()
	virtual void OnRep_StarvingBase(const FGameplayAttributeData& OldStarvingBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStarving, StarvingBase, OldStarvingBase); }
#pragma endregion

#pragma region Starving Max
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStarving, StarvingMax);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StarvingMax)
	FGameplayAttributeData StarvingMax;

	UFUNCTION()
	virtual void OnRep_StarvingMax(const FGameplayAttributeData& OldStarvingMax) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStarving, StarvingMax, OldStarvingMax); }
#pragma endregion

#pragma region Starving cost
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetStarving, StarvingCost);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_StarvingCost)
	FGameplayAttributeData StarvingCost;

	UFUNCTION()
	virtual void OnRep_StarvingCost(const FGameplayAttributeData& OldStarvingCost) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetStarving, StarvingCost, OldStarvingCost); }
#pragma endregion

protected:
	virtual void PreAttributeChange(const FGameplayAttribute& Attribute, float& NewValue) override;
	void ClampAttribute(const FGameplayAttribute& Attribute, float& NewValue) const override;
};

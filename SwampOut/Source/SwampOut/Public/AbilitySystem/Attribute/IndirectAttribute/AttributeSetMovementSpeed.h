// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Attribute/SOAttributeSetBase.h"
#include "AttributeSetMovementSpeed.generated.h"

/**
 * 
 */
UCLASS()
class SWAMPOUT_API UAttributeSetMovementSpeed : public USOAttributeSetBase
{
	GENERATED_BODY()
public:
	UAttributeSetMovementSpeed();
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

#pragma region MovementSpeed Base
public:
	ATTRIBUTE_ACCESSORS(UAttributeSetMovementSpeed, MovementSpeedBase);
	UPROPERTY(BlueprintReadOnly, Category = "Attributes", ReplicatedUsing = OnRep_MovementSpeedBase)
	FGameplayAttributeData MovementSpeedBase;

	UFUNCTION()
	virtual void OnRep_MovementSpeedBase(const FGameplayAttributeData& OldMovementSpeedBase) { GAMEPLAYATTRIBUTE_REPNOTIFY(UAttributeSetMovementSpeed, MovementSpeedBase, OldMovementSpeedBase); }
#pragma endregion
};

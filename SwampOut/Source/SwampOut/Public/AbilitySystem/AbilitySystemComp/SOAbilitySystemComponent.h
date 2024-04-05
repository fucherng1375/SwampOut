// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "SOAbilitySystemComponent.generated.h"

class UPDA_AttributeInitialization;

UCLASS()
class SWAMPOUT_API USOAbilitySystemComponent : public UAbilitySystemComponent
{
	GENERATED_BODY()
	
	USOAbilitySystemComponent();
public:
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	UPDA_AttributeInitialization* DefaultAttribute;

public:
	virtual void BeginPlay() override;
	virtual void OnGameplayTaskActivated(UGameplayTask& Task) override;
	virtual void OnGameplayTaskDeactivated(UGameplayTask& Task) override;
	virtual void BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo);
};

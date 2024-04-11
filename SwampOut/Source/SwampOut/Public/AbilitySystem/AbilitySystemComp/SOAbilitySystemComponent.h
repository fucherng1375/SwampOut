// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/AttributeSetting/AttributeSetting.h"
#include "SOAbilitySystemComponent.generated.h"

UCLASS()
class SWAMPOUT_API USOAbilitySystemComponent : public UAbilitySystemComponent
{
	GENERATED_BODY()
	
	USOAbilitySystemComponent();
public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Instanced)
	TArray<TObjectPtr<UAttributeSetting>> DefaultAttributeSetting;

public:
	virtual void BeginPlay() override;
	virtual void OnRegister() override;
	virtual void OnGameplayTaskActivated(UGameplayTask& Task) override;
	virtual void OnGameplayTaskDeactivated(UGameplayTask& Task) override;
	virtual void BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo);

private:
	UFUNCTION(Server, Reliable)
	void InitializeAttribute();
	void InitializeAttribute_Implementation();

	void InitializeAttributeWithRegularData(TSubclassOf<USOGameplayEffectBase> GameplayEffect);
};

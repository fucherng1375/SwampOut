// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "SOAbilitySystemComponent.generated.h"

class UAttributeSetting;
class USOGameplayEffectBase;
class USOGameplayAbilityBase;

UCLASS()
class SWAMPOUT_API USOAbilitySystemComponent : public UAbilitySystemComponent
{
	GENERATED_BODY()
	
	USOAbilitySystemComponent();
public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Instanced, meta = (Category = "Default Setting"))
	TArray<TObjectPtr<UAttributeSetting>> DefaultAttributeSetting;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, meta = (Category = "Default Setting"))
	TArray<TSubclassOf<USOGameplayAbilityBase>> DefaultAbility;

public:
	virtual void BeginPlay() override;
	virtual void OnRegister() override;
	virtual void OnGameplayTaskActivated(UGameplayTask& Task) override;
	virtual void OnGameplayTaskDeactivated(UGameplayTask& Task) override;
	virtual void BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo) override;
	virtual void OnGiveAbility(FGameplayAbilitySpec& AbilitySpec) override;

private:
	UFUNCTION(Server, Reliable)
	void InitializeDefaultData();
	void InitializeDefaultData_Implementation();
};

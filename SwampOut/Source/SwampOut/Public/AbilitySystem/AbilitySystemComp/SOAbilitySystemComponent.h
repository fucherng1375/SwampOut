// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/Interface/SO_General_ASC_Interface.h"
#include "AbilitySystem/GASStructAndEnum/InputID.h"
#include "EnhancedInputComponent.h"
#include "AbilitySystem/GameplayAbility/SOGameplayAbilityInput.h"
#include "SOAbilitySystemComponent.generated.h"

class UAttributeSetting;
class USOGameplayEffectBase;
class USOGameplayAbilityBase;
class UInputAction;

USTRUCT(BlueprintType)
struct FAdvancedAbility
{
	GENERATED_BODY()
	FAdvancedAbility() {};
	FAdvancedAbility(USOGameplayAbilityBase* MainAbility, TArray<TSubclassOf<USOGameplayAbilityInput>>&& ExtraTriggerAbility) : MainAbility(MainAbility), ExtraTriggerAbility(MoveTemp(ExtraTriggerAbility)){};

public:
	UPROPERTY(BlueprintReadOnly)
	TObjectPtr<USOGameplayAbilityBase> MainAbility;

	UPROPERTY(BlueprintReadOnly)
	TArray<TSubclassOf<USOGameplayAbilityInput>> ExtraTriggerAbility;
};

USTRUCT(BlueprintType)
struct FAdvancedAbilityHandle
{
	GENERATED_BODY()
public:
	TArray<FAdvancedAbility> AdvancedAbiliesHandle;

	USOGameplayAbilityBase* FindMainAbility(TSubclassOf<USOGameplayAbilityInput> InputAbility)
	{
		for (auto GA : AdvancedAbiliesHandle)
		{
			if (GA.ExtraTriggerAbility.Contains(InputAbility)) return GA.MainAbility;
		}
		return nullptr;
	}
};

UCLASS()
class SWAMPOUT_API USOAbilitySystemComponent : public UAbilitySystemComponent
{
	GENERATED_BODY()

public:
	USOAbilitySystemComponent();

	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Instanced, meta = (Category = "Default Setting"))
	TArray<TObjectPtr<UAttributeSetting>> DefaultAttributeSetting;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, meta = (Category = "Default Setting"))
	TArray<TSubclassOf<USOGameplayAbilityBase>> DefaultAbility;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, meta = (Category = "Default Setting"))
	TMap<TObjectPtr<UInputAction>, int32> DefaultAbilityInputIndex;

	FAdvancedAbilityHandle* AdvancedAbilityContainer = new FAdvancedAbilityHandle();

public:
	virtual void BeginPlay() override;
	virtual void OnRegister() override;
	virtual void OnGameplayTaskActivated(UGameplayTask& Task) override;
	virtual void OnGameplayTaskDeactivated(UGameplayTask& Task) override;
	virtual void BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo) override;
	virtual void OnGiveAbility(FGameplayAbilitySpec& AbilitySpec) override;

	void BindAbilitiesToInput(UInputComponent* PlayerInputComponent);


private:
	UFUNCTION(Server, Reliable)
	void InitializeDefaultData();
	void InitializeDefaultData_Implementation();

};

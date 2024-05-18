// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Abilities/GameplayAbility.h"
#include "../Interface/SO_General_ASC_Interface.h"
#include "EnhancedInputComponent.h"
#include "SOGameplayAbilityInput.generated.h"

class USOGameplayAbilityBase;

UCLASS(Blueprintable)
class SWAMPOUT_API USOGameplayAbilityInput : public UGameplayAbility, public IISO_General_ASC_Interface
{
	GENERATED_BODY()
public:
	USOGameplayAbilityInput();

	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	TObjectPtr<UInputAction> InputAction;

	virtual class UInputAction* GetInputAction() override
	{
		return InputAction;
	}

	virtual void OnAvatarSet(const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilitySpec& Spec) override;

	virtual bool CanActivateAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayTagContainer* SourceTags = nullptr, const FGameplayTagContainer* TargetTags = nullptr, OUT FGameplayTagContainer* OptionalRelevantTags = nullptr) const override;

	void PreActivate(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, FOnGameplayAbilityEnded::FDelegate* OnGameplayAbilityEndedDelegate, const FGameplayEventData* TriggerEventData) override;

	virtual void ActivateAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, const FGameplayEventData* TriggerEventData) override;

	virtual void EndAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, bool bReplicateEndAbility, bool bWasCancelled) override;

#pragma region Get Ability Owner Data

public:
	UFUNCTION(BlueprintPure, BlueprintCallable)
	ASOCharacterBase* GetBaseCharacter();

	UFUNCTION(BlueprintPure, BlueprintCallable)
	ASOPlayerController* GetBasePlayerController();

#pragma endregion


#pragma region Bind Event to InputAction
private:
	FEnhancedInputActionEventBinding* OnInputCompletedBinding;

	UPROPERTY()
	TObjectPtr<USOGameplayAbilityBase> MainGA;

	void BindInputActionEvent();
	void RemoveInputActionEvent();
	void BindDelegateOnPreActivate();
	void RemoveDelegateOnEndAbility();

	UFUNCTION()
	void ControllerTick(float DeltaTime);
#pragma endregion
};

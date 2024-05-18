// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/GameplayAbility/SOGameplayAbilityBase.h"
#include "PlayerController/SOPlayerController.h"
#include "Character/SOCharacterBase.h"

USOGameplayAbilityBase::USOGameplayAbilityBase()
{ 
}

void USOGameplayAbilityBase::OnAvatarSet(const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilitySpec& Spec)
{
	Super::OnAvatarSet(ActorInfo, Spec);
}

void USOGameplayAbilityBase::PreActivate(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, FOnGameplayAbilityEnded::FDelegate* OnGameplayAbilityEndedDelegate, const FGameplayEventData* TriggerEventData)
{
	Super::PreActivate(Handle, ActorInfo, ActivationInfo, OnGameplayAbilityEndedDelegate, TriggerEventData);
	BindDelegateOnPreActivate();
	BindInputActionEvent();
}

void USOGameplayAbilityBase::ActivateAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, const FGameplayEventData* TriggerEventData)
{
	Super::ActivateAbility(Handle, ActorInfo, ActivationInfo, TriggerEventData);
}

void USOGameplayAbilityBase::EndAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, bool bReplicateEndAbility, bool bWasCancelled)
{
	Super::EndAbility(Handle, ActorInfo, ActivationInfo, bReplicateEndAbility, bWasCancelled);

	RemoveDelegateOnEndAbility();
	RemoveInputActionEvent();
}

ASOCharacterBase* USOGameplayAbilityBase::GetBaseCharacter()
{
	return Cast<ASOCharacterBase>(GetActorInfo().AvatarActor);
}

ASOPlayerController* USOGameplayAbilityBase::GetBasePlayerController()
{
	return Cast<ASOPlayerController>(GetActorInfo().PlayerController);
}

void USOGameplayAbilityBase::BindDelegateOnPreActivate()
{
	if (!GetBasePlayerController()) return;
	if (GAInputSetting->bEnableTick) GetBasePlayerController()->PlayerTickDelegate.AddUniqueDynamic(this, &USOGameplayAbilityBase::ControllerTick);
}

void USOGameplayAbilityBase::RemoveDelegateOnEndAbility()
{
	if (!GetBasePlayerController()) return;
	if (GAInputSetting->bEnableTick) GetBasePlayerController()->PlayerTickDelegate.RemoveDynamic(this, &USOGameplayAbilityBase::ControllerTick);
}

void USOGameplayAbilityBase::BindInputActionEvent()
{
	if (!GetBasePlayerController()) return;
	if (UEnhancedInputComponent* EnhancedInputComponent = Cast<UEnhancedInputComponent>(GetBasePlayerController()->InputComponent))
	{
		if (UGAInputSetting_Player* PlayerInputSetting = Cast<UGAInputSetting_Player>(GAInputSetting))
		{
			if (PlayerInputSetting->bAutoEndAbilityOnInputCompleted && PlayerInputSetting->TriggerInput)
			{
				OnInputEndBinding = &EnhancedInputComponent->BindActionValueLambda(
					PlayerInputSetting->TriggerInput,
					ETriggerEvent::Completed,
					[&](const FInputActionValue& InputActionValue)
					{
						EndAbility(CurrentSpecHandle, CurrentActorInfo, CurrentActivationInfo, true, false);
					});
			}
		}
	}
}

void USOGameplayAbilityBase::RemoveInputActionEvent()
{
	if (!GetBasePlayerController()) return;
	if (OnInputEndBinding) Cast<UEnhancedInputComponent>(GetBasePlayerController()->InputComponent)->RemoveBindingByHandle(OnInputEndBinding->GetHandle());
}

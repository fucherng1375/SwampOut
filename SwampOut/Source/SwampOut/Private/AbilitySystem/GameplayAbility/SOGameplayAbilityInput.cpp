// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/GameplayAbility/SOGameplayAbilityInput.h"
#include "AbilitySystem/GameplayAbility/SOGameplayAbilityBase.h"
#include "PlayerController/SOPlayerController.h"
#include "Character/SOCharacterBase.h"
#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"

USOGameplayAbilityInput::USOGameplayAbilityInput()
{
	InstancingPolicy = EGameplayAbilityInstancingPolicy::InstancedPerActor;
}

void USOGameplayAbilityInput::OnAvatarSet(const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilitySpec& Spec)
{
	Super::OnAvatarSet(ActorInfo, Spec);
}

bool USOGameplayAbilityInput::CanActivateAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayTagContainer* SourceTags, const FGameplayTagContainer* TargetTags, OUT FGameplayTagContainer* OptionalRelevantTags) const
{
	if (USOAbilitySystemComponent* GA = Cast<USOAbilitySystemComponent>(GetActorInfo().AbilitySystemComponent))
	{
		return GA->AdvancedAbilityContainer->FindMainAbility(this->GetClass())->IsActive();
	}
	return false;
}

void USOGameplayAbilityInput::PreActivate(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, FOnGameplayAbilityEnded::FDelegate* OnGameplayAbilityEndedDelegate, const FGameplayEventData* TriggerEventData)
{
	Super::PreActivate(Handle, ActorInfo, ActivationInfo, OnGameplayAbilityEndedDelegate, TriggerEventData);
	MainGA = Cast<USOAbilitySystemComponent>(GetActorInfo().AbilitySystemComponent)->AdvancedAbilityContainer->FindMainAbility(this->GetClass());
	BindDelegateOnPreActivate();
	BindInputActionEvent();
}

void USOGameplayAbilityInput::ActivateAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, const FGameplayEventData* TriggerEventData)
{
	Super::ActivateAbility(Handle, ActorInfo, ActivationInfo, TriggerEventData);
	if (InputAction && IsValid(MainGA)) MainGA->ExtraInputStart(InputAction);
}

void USOGameplayAbilityInput::EndAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, bool bReplicateEndAbility, bool bWasCancelled)
{
	Super::EndAbility(Handle, ActorInfo, ActivationInfo, bReplicateEndAbility, bWasCancelled);
	RemoveInputActionEvent();
	RemoveDelegateOnEndAbility();
	if (InputAction && IsValid(MainGA)) MainGA->ExtraInputCompleted(InputAction);
}

void USOGameplayAbilityInput::ControllerTick(float DeltaTime)
{
	if (InputAction && IsValid(MainGA)) MainGA->ExtraInputTick(InputAction);
}

#pragma region Get Ability Owner Data
ASOCharacterBase* USOGameplayAbilityInput::GetBaseCharacter()
{
	return Cast<ASOCharacterBase>(GetActorInfo().AvatarActor);
}

ASOPlayerController* USOGameplayAbilityInput::GetBasePlayerController()
{
	return Cast<ASOPlayerController>(GetActorInfo().PlayerController);
}
#pragma endregion


#pragma region Bind and Unbind delegate

void USOGameplayAbilityInput::BindDelegateOnPreActivate()
{
	if (GetBasePlayerController()) GetBasePlayerController()->PlayerTickDelegate.AddUniqueDynamic(this, &USOGameplayAbilityInput::ControllerTick);
}

void USOGameplayAbilityInput::RemoveDelegateOnEndAbility()
{
	if (GetBasePlayerController()) GetBasePlayerController()->PlayerTickDelegate.RemoveDynamic(this, &USOGameplayAbilityInput::ControllerTick);
}

#pragma endregion

#pragma region Bind and Remove Input Action Event
void USOGameplayAbilityInput::BindInputActionEvent()
{
	if (InputAction)
	{
		if (UEnhancedInputComponent* EnhancedInputComponent = Cast<UEnhancedInputComponent>(GetBasePlayerController()->InputComponent))
		{
			//Completed
			OnInputCompletedBinding = &EnhancedInputComponent->BindActionValueLambda(
				InputAction,
				ETriggerEvent::Completed,
				[&](const FInputActionValue& InputActionValue)
				{
					EndAbility(CurrentSpecHandle, CurrentActorInfo, CurrentActivationInfo, true, false);
				});
		}
	}
}

void USOGameplayAbilityInput::RemoveInputActionEvent()
{
	if (OnInputCompletedBinding)
	{
		if (UEnhancedInputComponent* EnInput = Cast<UEnhancedInputComponent>(GetBasePlayerController()->InputComponent))
		{
			EnInput->RemoveBindingByHandle(OnInputCompletedBinding->GetHandle());
		}
	}
}
#pragma endregion

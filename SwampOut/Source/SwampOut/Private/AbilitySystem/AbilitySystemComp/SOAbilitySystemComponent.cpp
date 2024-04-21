// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "AbilitySystem/AttributeSetting/AttributeSetting.h"
#include "AbilitySystem/GameplayAbility/SOGameplayAbilityBase.h"
#include "AbilitySystem/ProjectSetting/SO_GameplayInput_Settings.h"
#include "EnhancedInputComponent.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::BeginPlay()
{
	Super::BeginPlay();
	InitializeDefaultData_Implementation();
}

void USOAbilitySystemComponent::OnRegister()
{
	Super::OnRegister();
}

void USOAbilitySystemComponent::InitializeDefaultData_Implementation()
{
#pragma region Initialize Default Attribute
	for (auto& AS : DefaultAttributeSetting)
	{
		AS->Run(this);

		AS->MarkAsGarbage();
	}
	DefaultAttributeSetting.Empty();
#pragma endregion


#pragma region Initialize Default Ability
	for (auto& GA : DefaultAbility)
	{
		GiveAbility(FGameplayAbilitySpec(GA));
	}
#pragma endregion
}

void USOAbilitySystemComponent::OnGameplayTaskActivated(UGameplayTask& Task)
{
	Super::OnGameplayTaskActivated(Task);
}

void USOAbilitySystemComponent::OnGameplayTaskDeactivated(UGameplayTask& Task)
{
	Super::OnGameplayTaskDeactivated(Task);
}

void USOAbilitySystemComponent::BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo)
{
	Super::BindAbilityActivationToInputComponent(InputComponent, BindInfo);
}

void USOAbilitySystemComponent::OnGiveAbility(FGameplayAbilitySpec& AbilitySpec)
{
	Super::OnGiveAbility(AbilitySpec);
	USOGameplayAbilityBase* GA = Cast<USOGameplayAbilityBase>(AbilitySpec.Ability);
	USO_GameplayInput_Settings* GasSetting = GetMutableDefault<USO_GameplayInput_Settings>();

	if (IsValid(GasSetting) && IsValid(GA) && GA->InputType == EInputType::Player)
	{
		AbilitySpec.InputID = GasSetting->AbilityInputIndex.Contains(GA->PlayerInputAction) ? *GasSetting->AbilityInputIndex.Find(GA->PlayerInputAction) : -1;
		if (UEnhancedInputComponent* EnhancedInputComponent = Cast<UEnhancedInputComponent>(GetOwner()->InputComponent))
		{
			EnhancedInputComponent->BindActionValueLambda(
				GA->PlayerInputAction,
				ETriggerEvent::Triggered,
				[&](const FInputActionValue& InputActionValue)
				{
					AbilityLocalInputPressed(AbilitySpec.InputID);
				});
		}
	}
}

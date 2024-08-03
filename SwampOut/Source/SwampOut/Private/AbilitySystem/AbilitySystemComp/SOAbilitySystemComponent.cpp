// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "AbilitySystem/GameplayAbility/SOGameplayAbilityBase.h"
#include "AbilitySystem/AttributeSetting/AttributeSetting.h"
#include "GameFramework/Character.h"
#include "AbilitySystem/ProjectSetting/SO_GameplayInput_Settings.h"
#include "Net/UnrealNetwork.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);
	//DOREPLIFETIME_CONDITION_NOTIFY(USOAbilitySystemComponent, , COND_None, REPNOTIFY_Always);
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
	//Assagin a input ID for ability

	if (USOGameplayAbilityBase* GABase = Cast<USOGameplayAbilityBase>(AbilitySpec.Ability))
	{
		AbilitySpec.InputID = DefaultAbilityInputIndex.Contains(GABase->GetInputAction()) ? *DefaultAbilityInputIndex.Find(GABase->GetInputAction()) : -1;


		TArray<TSubclassOf<USOGameplayAbilityInput>> ExtraTriggerAbility;
		if (UGAInputSetting_Player* PlayerInputSetting = Cast<UGAInputSetting_Player>(GABase->GAInputSetting))
		{
			for (auto& AdditionalGA : PlayerInputSetting->ExtraActionInput)
			{
				int32 InputID = DefaultAbilityInputIndex.Contains(AdditionalGA.GetDefaultObject()->GetInputAction()) ? *DefaultAbilityInputIndex.Find(AdditionalGA.GetDefaultObject()->GetInputAction()) : INDEX_NONE;
				const FGameplayAbilitySpec& InputAbilitySpec = FGameplayAbilitySpec(AdditionalGA, 1, InputID, GetOwner());
				GiveAbility(FGameplayAbilitySpec(InputAbilitySpec));
				ExtraTriggerAbility.Add(AdditionalGA);
			}
		}
		if (AbilitySpec.GetPrimaryInstance())
		{
			AdvancedAbilityContainer->AdvancedAbiliesHandle.Add(FAdvancedAbility(Cast<USOGameplayAbilityBase>(AbilitySpec.GetPrimaryInstance()), MoveTemp(ExtraTriggerAbility)));
		}
	}

}

void USOAbilitySystemComponent::BindAbilitiesToInput(UInputComponent* PlayerInputComponent)
{
	if (UEnhancedInputComponent* EnhancedInputComponent = Cast<UEnhancedInputComponent>(PlayerInputComponent))
	{
		for (auto InputID : DefaultAbilityInputIndex)
		{
			EnhancedInputComponent->BindActionValueLambda(
				InputID.Key,
				ETriggerEvent::Triggered,
				[&, index = InputID.Value](const FInputActionValue& InputActionValue)
				{
					AbilityLocalInputPressed(index);
				});
		}
	}
}

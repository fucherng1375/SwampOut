// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "AbilitySystem/AttributeSetting/AttributeSetting.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::BeginPlay()
{
	Super::BeginPlay();
	InitializeAttribute_Implementation();
}

void USOAbilitySystemComponent::OnRegister()
{
	Super::OnRegister();
}

void USOAbilitySystemComponent::InitializeAttribute_Implementation()
{
	for (auto& AS : DefaultAttributeSetting)
	{
		AS->Run(this);

		AS->MarkAsGarbage();
	}
	DefaultAttributeSetting.Empty();
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

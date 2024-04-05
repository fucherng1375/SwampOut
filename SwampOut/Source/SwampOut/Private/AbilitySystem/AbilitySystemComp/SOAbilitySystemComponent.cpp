// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "AbilitySystem/Attribute/AttributeSetHeallth.h"
#include "AbilitySystem/DataAssest/PrimaryDataAssest/PDA_AttributeInitialization.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::BeginPlay()
{
	for (auto& ad : DefaultAttribute->AttributeData)
	{
		USOGameplayEffectBase* cdo = Cast<USOGameplayEffectBase>(ad.Key.GetDefaultObject());
		if (cdo->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Initialization.Health"))))
		{
			UAttributeSetHeallth* HealthSet = NewObject<UAttributeSetHeallth>(this);
			AddAttributeSetSubobject(HealthSet);
			
			FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(ad.Key, 1.0f, MakeEffectContext());
			SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Modifier.HealthMax"), ad.Value.MaxValue);
			SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Modifier.HealthBase"), ad.Value.DefaultValue);
			ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
		}
	}
}

void USOAbilitySystemComponent::OnGameplayTaskActivated(UGameplayTask& Task)
{
}

void USOAbilitySystemComponent::OnGameplayTaskDeactivated(UGameplayTask& Task)
{
}

void USOAbilitySystemComponent::BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo)
{
	Super::BindAbilityActivationToInputComponent(InputComponent, BindInfo);
}

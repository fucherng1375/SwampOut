// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"

#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetHeallth.h"
#include "AbilitySystem/Attribute/IndirectAttribute/AttributeSetStamina.h"

#include "AbilitySystem/Attribute/RegularAttribute/AttributeSetStrength.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::BeginPlay()
{
	if (DefaultAttributeData.DefaultAttribute)
	{
		for (auto& AttributeData : DefaultAttributeData.DefaultAttribute->AttributeData)
		{
			USOGameplayEffectBase* cdo = Cast<USOGameplayEffectBase>(AttributeData.GameplayEffect.GetDefaultObject());

#pragma region DefaultAttribute Health Iitialization
			if (cdo->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Initialization.Health"))))
			{
				if (!HasAttributeSetForAttribute(UAttributeSetHeallth::GetHealthBaseAttribute()))
				{
					UAttributeSetHeallth* HealthSet = NewObject<UAttributeSetHeallth>(this);
					AddAttributeSetSubobject(HealthSet);
				}
				InitializeAttributeWithDefaultMaxData(AttributeData, "GameplayTag.Effect.Modifier.HealthMax", "GameplayTag.Effect.Modifier.HealthBase");
			}
#pragma endregion

#pragma region DefaultAttribute Stamina Iitialization
			if (cdo->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Initialization.Stamina"))))
			{
				UAttributeSetStamina* StaminaSet = NewObject<UAttributeSetStamina>(this);
				AddAttributeSetSubobject(StaminaSet);
				InitializeAttributeWithDefaultMaxData(AttributeData, "GameplayTag.Effect.Modifier.StaminaMax", "GameplayTag.Effect.Modifier.StaminaBase");
			}
#pragma endregion

#pragma region DefaultAttribute Strength Iitialization
			if (cdo->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Initialization.Strength"))))
			{
				UAttributeSetStrength* StrengthSet = NewObject<UAttributeSetStrength>(this);
				AddAttributeSetSubobject(StrengthSet);
				InitializeAttributeWithDefaultMaxData(AttributeData, "", "GameplayTag.Effect.Modifier.StrengthBase");
			}
#pragma endregion
		}
	}

	if (DefaultAttributeData.RegularAttribute)
	{
		for (auto& AttributeData : DefaultAttributeData.RegularAttribute->AttributeData)
		{
			USOGameplayEffectBase* cdo = Cast<USOGameplayEffectBase>(AttributeData.GameplayEffect.GetDefaultObject());
#pragma region RegularAttribute Health Iitialization
			if (cdo->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Initialization.Health"))))
			{
				if (!HasAttributeSetForAttribute(UAttributeSetHeallth::GetHealthBaseAttribute()))
				{
					UAttributeSetHeallth* HealthSet = NewObject<UAttributeSetHeallth>(this);
					AddAttributeSetSubobject(HealthSet);

				}
			}
#pragma endregion

			InitializeAttributeWithRegularData(AttributeData);
		}
	}
}

void USOAbilitySystemComponent::InitializeAttributeWithDefaultMaxData(FDefaultMaxData& DefaultData, FName MaxValueTag, FName DefaultValueTag)
{
	FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(DefaultData.GameplayEffect, 1.0f, MakeEffectContext());
	if (!MaxValueTag.IsEqual("")) SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag(MaxValueTag), DefaultData.MaxValue);
	SpecHandle.Data->SetSetByCallerMagnitude(FGameplayTag::RequestGameplayTag(DefaultValueTag), DefaultData.DefaultValue);
	ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
}

void USOAbilitySystemComponent::InitializeAttributeWithRegularData(FDefaultPrePostAdditiveData& DefaultData)
{
	FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(DefaultData.GameplayEffect, 1.0f, MakeEffectContext());
	ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
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

// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::BeginPlay()
{

	for (auto& AS : DefaultAttributeSetting)
	{
		if (IsValid(AS->GameplayEffect))
		{
#pragma region Default and Max Value
			UAttributeSettingDefaultMax* DefaultMaxSetting = Cast<UAttributeSettingDefaultMax>(AS);
			if (DefaultMaxSetting)
			{
				USOGameplayEffectBase* GameplayEffect = Cast<USOGameplayEffectBase>(DefaultMaxSetting->GameplayEffect->GetDefaultObject());

				Initialize_Attribute_With_DefaultMax_Value(UAttributeSetHealth, GetHealthBaseAttribute, GameplayEffect, DefaultMaxSetting, "GameplayTag.Effect.Initialization.Health", "GameplayTag.Effect.Modifier.HealthMax", "GameplayTag.Effect.Modifier.HealthBase");
				Initialize_Attribute_With_DefaultMax_Value(UAttributeSetStamina, GetStaminaBaseAttribute, GameplayEffect, DefaultMaxSetting, "GameplayTag.Effect.Initialization.Stamina", "GameplayTag.Effect.Modifier.StaminaMax", "GameplayTag.Effect.Modifier.StaminaBase");
			}
#pragma endregion

#pragma region SingleValue

			UAttributeSettingSingleValue* SingleValueSetting = Cast<UAttributeSettingSingleValue>(AS);
			if (SingleValueSetting)
			{
				USOGameplayEffectBase* GameplayEffect = Cast<USOGameplayEffectBase>(SingleValueSetting->GameplayEffect->GetDefaultObject());
				//Regular Attribute
				Initialize_Attribute_With_Single_Value(UAttributeSetStrength, GameplayEffect, SingleValueSetting, "GameplayTag.Effect.Initialization.Strength", "GameplayTag.Effect.Modifier.StrengthBase");
				Initialize_Attribute_With_Single_Value(UAttributeSetAgility, GameplayEffect, SingleValueSetting, "GameplayTag.Effect.Initialization.Agility", "GameplayTag.Effect.Modifier.AgilityBase");
				Initialize_Attribute_With_Single_Value(UAttributeSetIntelligent, GameplayEffect, SingleValueSetting, "GameplayTag.Effect.Initialization.Intelligent", "GameplayTag.Effect.Modifier.IntelligentBase");
				
				//Indirect attribute
				Initialize_Attribute_With_Single_Value(UAttributeSetHealth, GameplayEffect, SingleValueSetting, "GameplayTag.Effect.Initialization.Health", "GameplayTag.Effect.Modifier.HealthBase");
				Initialize_Attribute_With_Single_Value(UAttributeSetStamina, GameplayEffect, SingleValueSetting, "GameplayTag.Effect.Initialization.Stamina", "GameplayTag.Effect.Modifier.StaminaBase");
			}

#pragma endregion

#pragma region Regular Set

			if (!IsValid(SingleValueSetting) && !IsValid(DefaultMaxSetting))
			{
				USOGameplayEffectBase* cdo = Cast<USOGameplayEffectBase>(AS->GameplayEffect.GetDefaultObject());

#pragma region RegularAttribute Strength Iitialization
				if (cdo->GetAssetTags().HasAny(FGameplayTagContainer(FGameplayTag::RequestGameplayTag("GameplayTag.Effect.Initialization.Strength", false))))
				{
					Add_Attribute(UAttributeSetHealth, GetHealthBaseAttribute);
					Add_Attribute(UAttributeSetStatusResistantBase, GetStatusResistantBaseAttribute);
					Add_Attribute(UAttributeSetStarving, GetStarvingBaseAttribute);

					FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(AS->GameplayEffect, 1.0f, MakeEffectContext());
					ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
				}
#pragma endregion	

			}
			

#pragma endregion
		}


	}
}

void USOAbilitySystemComponent::InitializeAttributeWithRegularData(TSubclassOf<USOGameplayEffectBase> GameplayEffect)
{
	FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(GameplayEffect, 1.0f, MakeEffectContext());
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

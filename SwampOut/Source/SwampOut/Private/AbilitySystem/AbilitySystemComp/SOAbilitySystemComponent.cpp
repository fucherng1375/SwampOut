// Fill out your copyright notice in the Description page of Project Settings.


#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"

USOAbilitySystemComponent::USOAbilitySystemComponent()
{
}

void USOAbilitySystemComponent::BeginPlay()
{
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
		if (IsValid(AS->GameplayEffect))
		{
#pragma region Default and Max Value
			UAttributeSettingDefaultMax* DefaultMaxSetting = Cast<UAttributeSettingDefaultMax>(AS);
			if (DefaultMaxSetting)
			{
				USOGameplayEffectBase* GameplayEffect = Cast<USOGameplayEffectBase>(DefaultMaxSetting->GameplayEffect->GetDefaultObject());
				
				//Indirect attribute
				Initialize_Attribute_With_DefaultMax_Value(UAttributeSetHealth, GetHealthBaseAttribute, GameplayEffect, DefaultMaxSetting);
				Initialize_Attribute_With_DefaultMax_Value(UAttributeSetStamina, GetStaminaBaseAttribute, GameplayEffect, DefaultMaxSetting);
			}
#pragma endregion
			
#pragma region SingleValue

			UAttributeSettingSingleValue* SingleValueSetting = Cast<UAttributeSettingSingleValue>(AS);
			if (SingleValueSetting)
			{
				USOGameplayEffectBase* GameplayEffect = Cast<USOGameplayEffectBase>(SingleValueSetting->GameplayEffect->GetDefaultObject());

				//Regular Attribute
				Initialize_Attribute_With_Single_Value(UAttributeSetStrength, GetStrengthBaseAttribute, GameplayEffect, SingleValueSetting);
				Initialize_Attribute_With_Single_Value(UAttributeSetAgility, GetAgilityBaseAttribute, GameplayEffect, SingleValueSetting);
				Initialize_Attribute_With_Single_Value(UAttributeSetIntelligent, GetIntelligentBaseAttribute, GameplayEffect, SingleValueSetting);
			}

#pragma endregion
			
#pragma region Regular Set

			TObjectPtr<UAttributeSettingRegular> RegularSetting = Cast<UAttributeSettingRegular>(AS);
			if (IsValid(RegularSetting))
			{
				USOGameplayEffectBase* cdo = Cast<USOGameplayEffectBase>(AS->GameplayEffect.GetDefaultObject());

				for (auto& AC : RegularSetting->AttributeClass)
				{
					const_cast<UAttributeSet*>(GetOrCreateAttributeSubobject(AC));
				}
				FGameplayEffectSpecHandle SpecHandle = MakeOutgoingSpec(AS->GameplayEffect, 1.0f, MakeEffectContext());
				ApplyGameplayEffectSpecToSelf(*SpecHandle.Data);
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

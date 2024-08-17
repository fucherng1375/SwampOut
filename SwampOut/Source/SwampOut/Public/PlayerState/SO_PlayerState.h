#pragma once

#include "CoreMinimal.h"
#include "GameFramework/PlayerState.h"
#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "AbilitySystemInterface.h"
#include "SO_PlayerState.generated.h"

UCLASS()
class SWAMPOUT_API ASO_PlayerState : public APlayerState, public IAbilitySystemInterface
{
	GENERATED_BODY()
	
public:

	ASO_PlayerState();

protected:

	virtual void BeginPlay() override;

#pragma region Ability System

public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = ActorComponent)
	TObjectPtr<USOAbilitySystemComponent> AbilitySystemComponent;

	virtual UAbilitySystemComponent* GetAbilitySystemComponent() const override { return AbilitySystemComponent; }

protected:

	UFUNCTION(BlueprintImplementableEvent)
	void OnActiveGameplayEffectApplied(UAbilitySystemComponent* Target, const FGameplayEffectSpec& SpecApplied, FActiveGameplayEffectHandle ActiveHandle);

	UFUNCTION(BlueprintImplementableEvent)
	void OnActiveGameplayAbilityFailed(const UGameplayAbility* AbilityObject, const FGameplayTagContainer& FailedTags);

	UFUNCTION(BlueprintImplementableEvent)
	void OnActiveGameplayEffectRemoved(const FActiveGameplayEffect& EffectRemoved);

#pragma endregion
};

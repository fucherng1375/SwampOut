#include "PlayerState/SO_PlayerState.h"

ASO_PlayerState::ASO_PlayerState()
{
#pragma region Ability System Component

	AbilitySystemComponent = CreateDefaultSubobject<USOAbilitySystemComponent>("AbilitySystemComp");
	AbilitySystemComponent->SetIsReplicated(true);
	AbilitySystemComponent->SetReplicationMode(EGameplayEffectReplicationMode::Mixed);

	AbilitySystemComponent->OnActiveGameplayEffectAddedDelegateToSelf.AddUObject(this, &ASO_PlayerState::OnActiveGameplayEffectApplied);
	AbilitySystemComponent->OnAnyGameplayEffectRemovedDelegate().AddUObject(this, &ASO_PlayerState::OnActiveGameplayEffectRemoved);
	AbilitySystemComponent->AbilityFailedCallbacks.AddUObject(this, &ASO_PlayerState::OnActiveGameplayAbilityFailed);

#pragma endregion
}

void ASO_PlayerState::BeginPlay()
{
	Super::BeginPlay();
}

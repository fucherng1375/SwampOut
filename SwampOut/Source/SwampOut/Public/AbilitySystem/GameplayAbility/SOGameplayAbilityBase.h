// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystem/GASStructAndEnum/InputID.h"
#include "Abilities/GameplayAbility.h"
#include "EnhancedInputComponent.h"
#include "../Interface/SO_General_ASC_Interface.h"
#include "AbilitySystem/GameplayAbility/SOGameplayAbilityInput.h"
#include "SOGameplayAbilityBase.generated.h"

struct FEnhancedInputActionEventBinding;
class ASOCharacterBase;
class ASOPlayerController;

#pragma region GA Input Setting definition

UCLASS()
class SWAMPOUT_API UGAInputSetting : public UObject
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	bool bEnableTick;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UGAInputSetting_Player final: public UGAInputSetting
{
	GENERATED_BODY()
public:

	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	TObjectPtr<class UInputAction>  TriggerInput;

	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	bool bAutoEndAbilityOnInputCompleted;

	UPROPERTY(EditAnywhere)
	TArray<TSubclassOf<USOGameplayAbilityInput>> ExtraActionInput;
};

UCLASS(Blueprintable, EditInlineNew)
class SWAMPOUT_API UGAInputSetting_AI final: public UGAInputSetting
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadOnly, EditAnywhere)
	ESOAbilityInputID AiInputID;
};
#pragma endregion

UCLASS()
class SWAMPOUT_API USOGameplayAbilityBase : public UGameplayAbility , public IISO_General_ASC_Interface
{
	GENERATED_BODY()
	
public:
	USOGameplayAbilityBase();
	~USOGameplayAbilityBase()
	{
		if (IsValid(GAInputSetting)) GAInputSetting->MarkAsGarbage();
	}

	UPROPERTY(BlueprintReadOnly,Instanced, EditAnywhere, Category = "Config | Input Setting")
	TObjectPtr<UGAInputSetting> GAInputSetting;

public:
	virtual class UInputAction* GetInputAction() override
	{
		return Cast<UGAInputSetting_Player>(GAInputSetting)->TriggerInput;
	}

	//Server And Client
	virtual void OnAvatarSet(const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilitySpec& Spec) override;

	//Server And Client
	virtual void PreActivate(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, FOnGameplayAbilityEnded::FDelegate* OnGameplayAbilityEndedDelegate, const FGameplayEventData* TriggerEventData = nullptr) override;

	//Server And Client
	virtual void ActivateAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, const FGameplayEventData* TriggerEventData) override;

	//Server And Client
	virtual void EndAbility(const FGameplayAbilitySpecHandle Handle, const FGameplayAbilityActorInfo* ActorInfo, const FGameplayAbilityActivationInfo ActivationInfo, bool bReplicateEndAbility, bool bWasCancelled) override;

#pragma region Get Ability Owner Data

public:
	UFUNCTION(BlueprintPure, BlueprintCallable)
	ASOCharacterBase* GetBaseCharacter();

	UFUNCTION(BlueprintPure, BlueprintCallable)
	ASOPlayerController* GetBasePlayerController();

#pragma endregion

#pragma region BlueprintImplementableEvent
public:
	UFUNCTION(BlueprintImplementableEvent, BlueprintCallable)
	void ControllerTick(float DeltaTime);

	UFUNCTION(BlueprintImplementableEvent, BlueprintCallable)
	void ExtraInputStart(UInputAction* InputAction);

	UFUNCTION(BlueprintImplementableEvent, BlueprintCallable)
	void ExtraInputTick(UInputAction* InputAction);

	UFUNCTION(BlueprintImplementableEvent, BlueprintCallable)
	void ExtraInputCompleted(UInputAction* InputAction);
#pragma endregion


#pragma region Bind and Remove Delegate
private:
	void BindDelegateOnPreActivate();
	void RemoveDelegateOnEndAbility();
#pragma endregion


#pragma region Bind and Remove Event from InputAction
private:
	FEnhancedInputActionEventBinding* OnInputEndBinding;
	void BindInputActionEvent();
	void RemoveInputActionEvent();
#pragma endregion
};
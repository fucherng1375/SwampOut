// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "GameplayTagContainer.h"
#include "GameFramework/Character.h"
#include "SOCharacterBase.generated.h"

class USpringArmComponent;
class UCameraComponent;
class UInputMappingContext;
class UInputAction;
struct FInputActionValue;


UCLASS(Blueprintable)
class ASOCharacterBase : public ACharacter
{
	GENERATED_BODY()
public:
	ASOCharacterBase();

#pragma region Ability System
public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = ActorComponent)
	USOAbilitySystemComponent* AbilitySystemComponent;

protected:

	UFUNCTION(BlueprintImplementableEvent)
	void OnActiveGameplayEffectApplied(UAbilitySystemComponent* Target, const FGameplayEffectSpec& SpecApplied, FActiveGameplayEffectHandle ActiveHandle);

	UFUNCTION(BlueprintImplementableEvent)
	void OnActiveGameplayAbilityFailed(const UGameplayAbility* AbilityObject, const FGameplayTagContainer& FailedTags);

	UFUNCTION(BlueprintImplementableEvent)
	void OnActiveGameplayEffectRemoved(const FActiveGameplayEffect& EffectRemoved);

#pragma endregion

#pragma region Camera
public:
	/** Camera boom positioning the camera behind the character */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	USpringArmComponent* CameraBoom;

	/** Follow camera */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	UCameraComponent* FollowCamera;

	/** Returns CameraBoom subobject **/
	FORCEINLINE class USpringArmComponent* GetCameraBoom() const { return CameraBoom; }
	/** Returns FollowCamera subobject **/
	FORCEINLINE class UCameraComponent* GetFollowCamera() const { return FollowCamera; }

#pragma endregion

#pragma region Action Input
public:
	/** MappingContext */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputMappingContext* DefaultMappingContext;

	/** Jump Input Action */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputAction* JumpAction;

	/** Move Input Action */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputAction* MoveAction;

	/** Look Input Action */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputAction* LookAction;

protected:

	/** Called for movement input */
	void Move(const FInputActionValue& Value);

	/** Called for looking input */
	void Look(const FInputActionValue& Value);

#pragma endregion

#pragma region Native override
protected:

	virtual void PossessedBy(AController* NewController) override;
	virtual void OnRep_Controller() override;
	virtual void OnRep_PlayerState() override;
	virtual void PreInitializeComponents() override;
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
	virtual void GetLifetimeReplicatedProps(TArray< FLifetimeProperty >& OutLifetimeProps) const override;
	virtual void BeginPlay() override;
#pragma endregion
};

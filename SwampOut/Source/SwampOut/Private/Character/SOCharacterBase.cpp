// Fill out your copyright notice in the Description page of Project Settings.


#include "Character/SOCharacterBase.h"
#include "Engine/LocalPlayer.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/SpringArmComponent.h"
#include "GameFramework/Controller.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "InputActionValue.h"
#include "Net/UnrealNetwork.h"
#include "AbilitySystemInterface.h"
#include "AbilitySystem/GASStructAndEnum/InputID.h"
#include "AbilitySystem/AbilitySystemComp/SOAbilitySystemComponent.h"
#include "GameFramework/PlayerState.h"

DEFINE_LOG_CATEGORY(Character);

ASOCharacterBase::ASOCharacterBase()
{
	// Set size for collision capsule
	GetCapsuleComponent()->InitCapsuleSize(42.f, 96.0f);

	// Don't rotate when the controller rotates. Let that just affect the camera.
	bUseControllerRotationPitch = false;
	bUseControllerRotationYaw = false;
	bUseControllerRotationRoll = false;

	// Configure character movement
	GetCharacterMovement()->bOrientRotationToMovement = true; // Character moves in the direction of input...	
	GetCharacterMovement()->RotationRate = FRotator(0.0f, 500.0f, 0.0f); // ...at this rotation rate

	// Note: For faster iteration times these variables, and many more, can be tweaked in the Character Blueprint
	// instead of recompiling to adjust them
	GetCharacterMovement()->JumpZVelocity = 700.f;
	GetCharacterMovement()->AirControl = 0.35f;
	GetCharacterMovement()->MaxWalkSpeed = 500.f;
	GetCharacterMovement()->MinAnalogWalkSpeed = 20.f;
	GetCharacterMovement()->BrakingDecelerationWalking = 2000.f;
	GetCharacterMovement()->BrakingDecelerationFalling = 1500.0f;

	// Create a camera boom (pulls in towards the player if there is a collision)
	CameraBoom = CreateDefaultSubobject<USpringArmComponent>(TEXT("CameraBoom"));
	CameraBoom->SetupAttachment(RootComponent);
	CameraBoom->TargetArmLength = 400.0f; // The camera follows at this distance behind the character	
	CameraBoom->bUsePawnControlRotation = true; // Rotate the arm based on the controller

	// Create a follow camera
	FollowCamera = CreateDefaultSubobject<UCameraComponent>(TEXT("FollowCamera"));
	FollowCamera->SetupAttachment(CameraBoom, USpringArmComponent::SocketName); // Attach the camera to the end of the boom and let the boom adjust to match the controller orientation
	FollowCamera->bUsePawnControlRotation = false; // Camera does not rotate relative to arm

	// Note: The skeletal mesh and anim blueprint references on the Mesh component (inherited from Character) 
	// are set in the derived blueprint asset named ThirdPersonCharacter (to avoid direct content references in C++)
}

void ASOCharacterBase::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
	Super::GetLifetimeReplicatedProps(OutLifetimeProps);

}

void ASOCharacterBase::BeginPlay()
{
	// Call the base class  
	Super::BeginPlay();
}

void ASOCharacterBase::OnPlayerStateChanged(APlayerState* NewPlayerState, APlayerState* OldPlayerState)
{
	if (IAbilitySystemInterface* Interface = Cast<IAbilitySystemInterface>(NewPlayerState); Interface != nullptr)
	{
		UAbilitySystemComponent* Abs = Interface->GetAbilitySystemComponent();
		
		if (IsValid(Abs) == false)
		{
			UE_LOG(Character, Error, TEXT("%s : Failed to InitAbilityActorInfo because the AbilitySystemComponent is invalid."), *FString(__FUNCTION__));
			return;
		}

		Abs->InitAbilityActorInfo(NewPlayerState,this);
	}
	else
	{
		UE_LOG(Character, Error, TEXT("%s : Failed to InitAbilityActorInfo because the AbilitySystemComponent couldn't be found in the Player State."), *FString(__FUNCTION__));
	}
}

void ASOCharacterBase::PreInitializeComponents()
{
	Super::PreInitializeComponents();
}

void ASOCharacterBase::PostInitializeComponents()
{
	Super::PostInitializeComponents();
}

void ASOCharacterBase::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

#pragma region Bind Abilities To Input

	if (IAbilitySystemInterface* Interface = Cast<IAbilitySystemInterface>(GetPlayerState()); Interface != nullptr)
	{
		if (IsValid(Interface->GetAbilitySystemComponent()))
		{
			USOAbilitySystemComponent* SOAbilitySystemComp = Cast<USOAbilitySystemComponent>(Interface->GetAbilitySystemComponent());

			if (IsValid(SOAbilitySystemComp))
			{
				SOAbilitySystemComp->BindAbilitiesToInput(PlayerInputComponent);

				UE_LOG(Character, Display, TEXT("%s : Successfully set up the input."), *FString(__FUNCTION__));
			}
			else
			{
				UE_LOG(Character, Error, TEXT("%s : Failed to set up the input because the AbilitySystemComponent isn't using USOAbilitySystemComponent."), *FString(__FUNCTION__));
			}
		}
		else
		{
			UE_LOG(Character, Error, TEXT("%s : Failed to set up the input because the AbilitySystemComponent couldn't be found in the Player State."), *FString(__FUNCTION__));
		}
	}
	else
	{
		UE_LOG(Character, Error, TEXT("%s : Failed to set up the input because the player state doesn't implement IAbilitySystemInterface."), *FString(__FUNCTION__));
	}

#pragma endregion


	// Add Input Mapping Context
	if (APlayerController* PlayerController = Cast<APlayerController>(GetController()))
	{
		if (UEnhancedInputLocalPlayerSubsystem* Subsystem = ULocalPlayer::GetSubsystem<UEnhancedInputLocalPlayerSubsystem>(PlayerController->GetLocalPlayer()))
		{
			Subsystem->AddMappingContext(DefaultMappingContext, 0);
		}
	}

	// Set up action bindings
	if (UEnhancedInputComponent* EnhancedInputComponent = Cast<UEnhancedInputComponent>(PlayerInputComponent)) 
	{
		// Moving
		EnhancedInputComponent->BindAction(MoveAction, ETriggerEvent::Triggered, this, &ASOCharacterBase::Move);

		// Looking
		EnhancedInputComponent->BindAction(LookAction, ETriggerEvent::Triggered, this, &ASOCharacterBase::Look);
	}
}

void ASOCharacterBase::Move(const FInputActionValue& Value)
{
	// input is a Vector2D
	FVector2D MovementVector = Value.Get<FVector2D>();

	if (Controller != nullptr)
	{
		// find out which way is forward
		const FRotator Rotation = Controller->GetControlRotation();
		const FRotator YawRotation(0, Rotation.Yaw, 0);

		// get forward vector
		const FVector ForwardDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::X);

		// get right vector 
		const FVector RightDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::Y);

		// add movement 
		AddMovementInput(ForwardDirection, MovementVector.Y);
		AddMovementInput(RightDirection, MovementVector.X);
	}
}

void ASOCharacterBase::Look(const FInputActionValue& Value)
{
	// input is a Vector2D
	FVector2D LookAxisVector = Value.Get<FVector2D>();

	if (Controller != nullptr)
	{
		// add yaw and pitch input to controller
		AddControllerYawInput(LookAxisVector.X);
		AddControllerPitchInput(LookAxisVector.Y);
	}
}
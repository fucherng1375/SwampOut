// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/PlayerController.h"
#include "SOPlayerController.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FPlayerTick, float, DeltaTime);

UCLASS()
class SWAMPOUT_API ASOPlayerController : public APlayerController
{
	GENERATED_BODY()

public:

	ASOPlayerController();

	UPROPERTY(BlueprintAssignable)
	FPlayerTick PlayerTickDelegate;

protected:
	virtual void BeginPlay() override;

	virtual void Tick(float DeltaSeconds) override;
};

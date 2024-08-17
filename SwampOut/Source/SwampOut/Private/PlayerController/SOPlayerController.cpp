// Fill out your copyright notice in the Description page of Project Settings.


#include "PlayerController/SOPlayerController.h"
#include "PlayerState/SO_PlayerState.h"

ASOPlayerController::ASOPlayerController()
{
}

void ASOPlayerController::BeginPlay()
{
	Super::BeginPlay();
}

void ASOPlayerController::Tick(float DeltaSeconds)
{
	Super::Tick(DeltaSeconds);
	PlayerTickDelegate.Broadcast(DeltaSeconds);
}

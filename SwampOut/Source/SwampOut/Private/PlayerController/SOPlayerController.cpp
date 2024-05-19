// Fill out your copyright notice in the Description page of Project Settings.


#include "PlayerController/SOPlayerController.h"

void ASOPlayerController::Tick(float DeltaSeconds)
{
	Super::Tick(DeltaSeconds);
	PlayerTickDelegate.Broadcast(DeltaSeconds);
}

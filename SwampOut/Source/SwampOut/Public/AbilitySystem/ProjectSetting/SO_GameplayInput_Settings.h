// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Engine/DeveloperSettings.h"
#include "SO_GameplayInput_Settings.generated.h"

/**
 * 
 */
UCLASS(meta = (DisplayName = "SO Ability System Setting"))
class SWAMPOUT_API USO_GameplayInput_Settings : public UDeveloperSettings
{
	GENERATED_BODY()
public:
	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, meta = (Category = "Ability System Setting| Input Setting", DisplayName = "Index for input to trigger"))
	TMap<TObjectPtr<class UInputAction>, int32> AbilityInputIndex;
};

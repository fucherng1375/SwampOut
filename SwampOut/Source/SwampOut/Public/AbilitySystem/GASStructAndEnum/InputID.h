// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"

UENUM(BlueprintType)
enum class ESOAbilityInputID : uint8
{
	None,
	Confirm,
	Cancel,
	Attack,
	Skill_1,
	Skill_2,
	Skill_3,
	Dash,
	Block
};

class SWAMPOUT_API InputID
{
public:
	InputID();
	~InputID();
};

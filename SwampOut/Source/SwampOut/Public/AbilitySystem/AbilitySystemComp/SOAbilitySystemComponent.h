// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemComponent.h"
#include "AbilitySystem/DataAssest/PrimaryDataAssest/PDA_AttributeDefaultMaxValue.h"
#include "AbilitySystem/DataAssest/PrimaryDataAssest/PDA_AttributeRegular.h"
#include "SOAbilitySystemComponent.generated.h"


USTRUCT(BlueprintType)
struct FDefaultAttributeData
{
	GENERATED_BODY()

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	UPDA_AttributeDefaultMaxValue* DefaultAttribute;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	UPDA_AttributeRegular* RegularAttribute;
};

UCLASS()
class SWAMPOUT_API USOAbilitySystemComponent : public UAbilitySystemComponent
{
	GENERATED_BODY()
	
	USOAbilitySystemComponent();
public:

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FDefaultAttributeData DefaultAttributeData;

public:
	virtual void BeginPlay() override;
	virtual void OnGameplayTaskActivated(UGameplayTask& Task) override;
	virtual void OnGameplayTaskDeactivated(UGameplayTask& Task) override;
	virtual void BindAbilityActivationToInputComponent(UInputComponent* InputComponent, FGameplayAbilityInputBinds BindInfo);

private:
	void InitializeAttributeWithDefaultMaxData(FDefaultMaxData& DefaultData, FName MaxValueTag, FName DefaultValueTag);
	void InitializeAttributeWithRegularData(FDefaultPrePostAdditiveData& DefaultData);
};

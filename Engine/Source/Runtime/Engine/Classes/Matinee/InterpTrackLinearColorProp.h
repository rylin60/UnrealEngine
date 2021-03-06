// Copyright 1998-2016 Epic Games, Inc. All Rights Reserved.


#pragma once
#include "Matinee/InterpTrackLinearColorBase.h"
#include "InterpTrackLinearColorProp.generated.h"

UCLASS(MinimalAPI, meta=( DisplayName = "LinearColor Property Track" ) )
class UInterpTrackLinearColorProp : public UInterpTrackLinearColorBase
{
	GENERATED_UCLASS_BODY()

	/** Name of property in Group  AActor  which this track mill modify over time. */
	UPROPERTY(Category=InterpTrackLinearColorProp, VisibleAnywhere)
	FName PropertyName;


	//~ Begin UInterpTrack Interface.
	virtual int32 AddKeyframe(float Time, UInterpTrackInst* TrInst, EInterpCurveMode InitInterpMode) override;
	virtual bool CanAddKeyframe( UInterpTrackInst* TrackInst ) override;
	virtual void UpdateKeyframe(int32 KeyIndex, UInterpTrackInst* TrInst) override;
	virtual void PreviewUpdateTrack(float NewPosition, UInterpTrackInst* TrInst) override;
	virtual void UpdateTrack(float NewPosition, UInterpTrackInst* TrInst, bool bJump) override;
	virtual const FString	GetEdHelperClassName() const override;
	virtual const FString	GetSlateHelperClassName() const override;
#if WITH_EDITORONLY_DATA
	virtual class UTexture2D* GetTrackIcon() const override;
#endif // WITH_EDITORONLY_DATA
	//~ End UInterpTrack Interface.
};




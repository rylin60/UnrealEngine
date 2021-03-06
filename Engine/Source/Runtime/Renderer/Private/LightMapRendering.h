// Copyright 1998-2016 Epic Games, Inc. All Rights Reserved.

/*=============================================================================
	LightMapRendering.h: Light map rendering definitions.
=============================================================================*/

#pragma once

#include "Engine/ShadowMapTexture2D.h"

extern ENGINE_API bool GShowDebugSelectedLightmap;
extern ENGINE_API class FLightMap2D* GDebugSelectedLightmap;
extern bool GVisualizeMipLevels;

BEGIN_UNIFORM_BUFFER_STRUCT(FPrecomputedLightingParameters, )
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector, IndirectLightingCachePrimitiveAdd) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector, IndirectLightingCachePrimitiveScale) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector, IndirectLightingCacheMinUV) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector, IndirectLightingCacheMaxUV) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector4, PointSkyBentNormal) // FCachedPointIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_EX(float, DirectionalLightShadowing, EShaderPrecisionModifier::Half) // FCachedPointIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector4, StaticShadowMapMasks) // TDistanceFieldShadowsAndLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector4, InvUniformPenumbraSizes) // TDistanceFieldShadowsAndLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_ARRAY(FVector4, IndirectLightingSHCoefficients0, [3]) // FCachedPointIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_ARRAY(FVector4, IndirectLightingSHCoefficients1, [3]) // FCachedPointIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector4,	IndirectLightingSHCoefficients2) // FCachedPointIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_EX(FVector4, IndirectLightingSHSingleCoefficient, EShaderPrecisionModifier::Half) // FCachedPointIndirectLightingPolicy used in forward Translucent
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector4, LightMapCoordinateScaleBias) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER(FVector4, ShadowMapCoordinateScaleBias) // TDistanceFieldShadowsAndLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_ARRAY_EX(FVector4, LightMapScale, [MAX_NUM_LIGHTMAP_COEF], EShaderPrecisionModifier::Half) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_ARRAY_EX(FVector4, LightMapAdd, [MAX_NUM_LIGHTMAP_COEF], EShaderPrecisionModifier::Half) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture2D, LightMapTexture) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture2D, SkyOcclusionTexture) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture2D, AOMaterialMaskTexture) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture3D, IndirectLightingCacheTexture0) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture3D, IndirectLightingCacheTexture1) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture3D, IndirectLightingCacheTexture2) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_TEXTURE(Texture2D, StaticShadowTexture) // 
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, LightMapSampler) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, SkyOcclusionSampler) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, AOMaterialMaskSampler) // TLightMapPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, IndirectLightingCacheTextureSampler0) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, IndirectLightingCacheTextureSampler1) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, IndirectLightingCacheTextureSampler2) // FCachedVolumeIndirectLightingPolicy
	DECLARE_UNIFORM_BUFFER_STRUCT_MEMBER_SAMPLER(SamplerState, StaticShadowTextureSampler) // TDistanceFieldShadowsAndLightMapPolicy
END_UNIFORM_BUFFER_STRUCT( FPrecomputedLightingParameters )


uint32 GetPrecompuledLightingVersionID(const FLightMapInteraction& LightMapInteraction, const FShadowMapInteraction& ShadowMapInteraction, ERHIFeatureLevel::Type FeatureLevel);
uint32 GetPrecompuledLightingVersionID(const FLightCacheInterface* LCI, ERHIFeatureLevel::Type FeatureLevel);

void GetPrecomputedLightingParameters(
	ERHIFeatureLevel::Type FeatureLevel,
	FPrecomputedLightingParameters& Parameters, 
	const class FIndirectLightingCache* LightingCache = NULL, 
	const class FIndirectLightingCacheAllocation* LightingAllocation = NULL, 
	const FLightCacheInterface* LCI = NULL
	);

FUniformBufferRHIRef CreatePrecomputedLightingUniformBuffer(
	EUniformBufferUsage BufferUsage,
	ERHIFeatureLevel::Type FeatureLevel,
	const class FIndirectLightingCache* LightingCache = NULL, 
	const class FIndirectLightingCacheAllocation* LightingAllocation = NULL, 
	const FLightCacheInterface* LCI = NULL
	);

/**
 * Default precomputed lighting data. Used for fully dynamic lightmap policies.
 */
class FEmptyPrecomputedLightingUniformBuffer : public TUniformBuffer< FPrecomputedLightingParameters >
{
	typedef TUniformBuffer< FPrecomputedLightingParameters > Super;
public:
	virtual void InitDynamicRHI() override;
};

/** Global uniform buffer containing the default precomputed lighting data. */
extern TGlobalResource< FEmptyPrecomputedLightingUniformBuffer > GEmptyPrecomputedLightingUniformBuffer;

/**
 * A policy for shaders without a light-map.
 */
struct FNoLightMapPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return true;
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{}
};

enum ELightmapQuality
{
	LQ_LIGHTMAP,
	HQ_LIGHTMAP,
};

// One of these per lightmap quality
extern const TCHAR* GLightmapDefineName[2];
extern int32 GNumLightmapCoefficients[2];

/**
 * Base policy for shaders with lightmaps.
 */
template< ELightmapQuality LightmapQuality >
struct TLightMapPolicy
{
	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(GLightmapDefineName[LightmapQuality],TEXT("1"));
		OutEnvironment.SetDefine(TEXT("NUM_LIGHTMAP_COEFFICIENTS"), GNumLightmapCoefficients[LightmapQuality]);
	}

	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static const auto AllowStaticLightingVar = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.AllowStaticLighting"));
		static const auto CVarProjectCanHaveLowQualityLightmaps = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.SupportLowQualityLightmaps"));
		static const auto CVarSupportAllShadersPermutations = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.SupportAllShaderPermutations"));
		const bool bForceAllPermutations = CVarSupportAllShadersPermutations && CVarSupportAllShadersPermutations->GetValueOnAnyThread() != 0;

		// if GEngine doesn't exist yet to have the project flag then we should be conservative and cache the LQ lightmap policy
		const bool bProjectCanHaveLowQualityLightmaps = bForceAllPermutations || (!CVarProjectCanHaveLowQualityLightmaps) || (CVarProjectCanHaveLowQualityLightmaps->GetValueOnAnyThread() != 0);

		const bool bShouldCacheQuality = (LightmapQuality != ELightmapQuality::LQ_LIGHTMAP) || bProjectCanHaveLowQualityLightmaps;

		// GetValueOnAnyThread() as it's possible that ShouldCache is called from rendering thread. That is to output some error message.
		return Material->GetShadingModel() != MSM_Unlit 
			&& bShouldCacheQuality
			&& VertexFactoryType->SupportsStaticLighting() 
			&& (!AllowStaticLightingVar || AllowStaticLightingVar->GetValueOnAnyThread() != 0)
			&& (Material->IsUsedWithStaticLighting() || Material->IsSpecialEngineMaterial());		
	}
};

// A light map policy for computing up to 4 signed distance field shadow factors in the base pass.
template< ELightmapQuality LightmapQuality >
struct TDistanceFieldShadowsAndLightMapPolicy : public TLightMapPolicy< LightmapQuality >
{
	typedef TLightMapPolicy< LightmapQuality >	Super;

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("STATICLIGHTING_TEXTUREMASK"), 1);
		OutEnvironment.SetDefine(TEXT("STATICLIGHTING_SIGNEDDISTANCEFIELD"), 1);
		Super::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

class FDistanceFieldShadowsLightMapAndCSMLightingPolicy : public TDistanceFieldShadowsAndLightMapPolicy < LQ_LIGHTMAP >
{
	typedef TDistanceFieldShadowsAndLightMapPolicy < LQ_LIGHTMAP >	Super;

public:
	static bool ShouldCache(EShaderPlatform Platform, const FMaterial* Material, const FVertexFactoryType* VertexFactoryType)
	{
		static auto* CVarMobileEnableStaticAndCSMShadowReceivers = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.Mobile.EnableStaticAndCSMShadowReceivers"));
		const bool bMobileEnableStaticAndCSMShadowReceivers = CVarMobileEnableStaticAndCSMShadowReceivers->GetValueOnAnyThread() == 1;
		return bMobileEnableStaticAndCSMShadowReceivers && (Material->GetShadingModel() != MSM_Unlit) && Super::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("DIRECTIONAL_LIGHT_CSM"), TEXT("1"));
		OutEnvironment.SetDefine(TEXT(PREPROCESSOR_TO_STRING(MAX_MOBILE_SHADOWCASCADES)), MAX_MOBILE_SHADOWCASCADES);

		Super::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/**
 * Policy for 'fake' texture lightmaps, such as the LightMap density rendering mode
 */
struct FDummyLightMapPolicy : public TLightMapPolicy< HQ_LIGHTMAP >
{
public:

	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return Material->GetShadingModel() != MSM_Unlit && VertexFactoryType->SupportsStaticLighting();
	}
};

/**
 * Policy for self shadowing translucency from a directional light
 */
class FSelfShadowedTranslucencyPolicy
{
public:

	struct ElementDataType
	{
		ElementDataType(const FProjectedShadowInfo* InTranslucentSelfShadow) :
			TranslucentSelfShadow(InTranslucentSelfShadow)
		{}

		const FProjectedShadowInfo* TranslucentSelfShadow;
	};

	class VertexParametersType
	{
	public:
		void Bind(const FShaderParameterMap& ParameterMap) {}
		void Serialize(FArchive& Ar) {}
	};

	class PixelParametersType
	{
	public:
		void Bind(const FShaderParameterMap& ParameterMap)
		{
			TranslucencyShadowParameters.Bind(ParameterMap);
			WorldToShadowMatrix.Bind(ParameterMap, TEXT("WorldToShadowMatrix"));
			ShadowUVMinMax.Bind(ParameterMap, TEXT("ShadowUVMinMax"));
			DirectionalLightDirection.Bind(ParameterMap, TEXT("DirectionalLightDirection"));
			DirectionalLightColor.Bind(ParameterMap, TEXT("DirectionalLightColor"));
		}

		void Serialize(FArchive& Ar)
		{
			Ar << TranslucencyShadowParameters;
			Ar << WorldToShadowMatrix;
			Ar << ShadowUVMinMax;
			Ar << DirectionalLightDirection;
			Ar << DirectionalLightColor;
		}

		FTranslucencyShadowProjectionShaderParameters TranslucencyShadowParameters;
		FShaderParameter WorldToShadowMatrix;
		FShaderParameter ShadowUVMinMax;
		FShaderParameter DirectionalLightDirection;
		FShaderParameter DirectionalLightColor;
	};

	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return Material->GetShadingModel() != MSM_Unlit && IsTranslucentBlendMode(Material->GetBlendMode()) && IsFeatureLevelSupported(Platform, ERHIFeatureLevel::SM4);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("TRANSLUCENT_SELF_SHADOWING"),TEXT("1"));
	}

	/** Initialization constructor. */
	FSelfShadowedTranslucencyPolicy() {}

	void Set(
		FRHICommandList& RHICmdList, 
		const VertexParametersType* VertexShaderParameters,
		const PixelParametersType* PixelShaderParameters,
		FShader* VertexShader,
		FShader* PixelShader,
		const FVertexFactory* VertexFactory,
		const FMaterialRenderProxy* MaterialRenderProxy,
		const FSceneView* View
		) const
	{
		check(VertexFactory);
		VertexFactory->Set(RHICmdList);
	}

	void SetMesh(
		FRHICommandList& RHICmdList,
		const FSceneView& View,
		const FPrimitiveSceneProxy* PrimitiveSceneProxy,
		const VertexParametersType* VertexShaderParameters,
		const PixelParametersType* PixelShaderParameters,
		FShader* VertexShader,
		FShader* PixelShader,
		const FVertexFactory* VertexFactory,
		const FMaterialRenderProxy* MaterialRenderProxy,
		const ElementDataType& ElementData
		) const
	{
		if (PixelShaderParameters)
		{
			const FPixelShaderRHIParamRef ShaderRHI = PixelShader->GetPixelShader();

			// Set these even if ElementData.TranslucentSelfShadow is NULL to avoid a d3d debug error from the shader expecting texture SRV's when a different type are bound
			PixelShaderParameters->TranslucencyShadowParameters.Set(RHICmdList, PixelShader, ElementData.TranslucentSelfShadow);

			if (ElementData.TranslucentSelfShadow)
			{
				FVector4 ShadowmapMinMax;
				FMatrix WorldToShadowMatrixValue = ElementData.TranslucentSelfShadow->GetWorldToShadowMatrix(ShadowmapMinMax);

				SetShaderValue(RHICmdList, ShaderRHI, PixelShaderParameters->WorldToShadowMatrix, WorldToShadowMatrixValue);
				SetShaderValue(RHICmdList, ShaderRHI, PixelShaderParameters->ShadowUVMinMax, ShadowmapMinMax);

				const FLightSceneProxy* const LightProxy = ElementData.TranslucentSelfShadow->GetLightSceneInfo().Proxy;
				SetShaderValue(RHICmdList, ShaderRHI, PixelShaderParameters->DirectionalLightDirection, LightProxy->GetDirection());
				//@todo - support fading from both views
				const float FadeAlpha = ElementData.TranslucentSelfShadow->FadeAlphas[0];
				// Incorporate the diffuse scale of 1 / PI into the light color
				const FVector4 DirectionalLightColorValue(FVector(LightProxy->GetColor() * FadeAlpha / PI), FadeAlpha);
				SetShaderValue(RHICmdList, ShaderRHI, PixelShaderParameters->DirectionalLightColor, DirectionalLightColorValue);
			}
			else
			{
				SetShaderValue(RHICmdList, ShaderRHI, PixelShaderParameters->DirectionalLightColor, FVector4(0, 0, 0, 0));
			}
		}
	}

	friend bool operator==(const FSelfShadowedTranslucencyPolicy A,const FSelfShadowedTranslucencyPolicy B)
	{
		return true;
	}

	friend int32 CompareDrawingPolicy(const FSelfShadowedTranslucencyPolicy&,const FSelfShadowedTranslucencyPolicy&)
	{
		return 0;
	}

};

/**
 * Allows a dynamic object to access indirect lighting through a per-object allocation in a volume texture atlas
 */
struct FCachedVolumeIndirectLightingPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static const auto AllowStaticLightingVar = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.AllowStaticLighting"));

		return Material->GetShadingModel() != MSM_Unlit 
			&& !IsTranslucentBlendMode(Material->GetBlendMode()) 
			&& (!AllowStaticLightingVar || AllowStaticLightingVar->GetValueOnAnyThread() != 0)
			&& IsFeatureLevelSupported(Platform, ERHIFeatureLevel::SM4);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("CACHED_VOLUME_INDIRECT_LIGHTING"),TEXT("1"));
	}
};


/**
 * Allows a dynamic object to access indirect lighting through a per-object lighting sample
 */
struct FCachedPointIndirectLightingPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static const auto AllowStaticLightingVar = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.AllowStaticLighting"));
	
		return Material->GetShadingModel() != MSM_Unlit
			&& (!AllowStaticLightingVar || AllowStaticLightingVar->GetValueOnAnyThread() != 0);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment);
};

/**
 * Renders the base pass without outputting to GBuffers, used to support low end hardware where deferred shading is too expensive.
 */
struct FSimpleNoLightmapLightingPolicy : public FNoLightMapPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return PlatformSupportsSimpleForwardShading(Platform)
			&& FNoLightMapPolicy::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_SHADING"),TEXT("1"));
		FNoLightMapPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/**
 * Renders lightmaps without outputting to GBuffers, used to support low end hardware where deferred shading is too expensive.
 */
struct FSimpleLightmapOnlyLightingPolicy : public TLightMapPolicy<HQ_LIGHTMAP>
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static const auto AllowStaticLightingVar = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.AllowStaticLighting"));

		return AllowStaticLightingVar->GetValueOnAnyThread() != 0
			&& PlatformSupportsSimpleForwardShading(Platform)
			&& TLightMapPolicy<HQ_LIGHTMAP>::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_SHADING"),TEXT("1"));
		TLightMapPolicy<HQ_LIGHTMAP>::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/**
 * Renders an unshadowed directional light in the base pass, used to support low end hardware where deferred shading is too expensive.
 */
struct FSimpleDirectionalLightLightingPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return PlatformSupportsSimpleForwardShading(Platform)
			&& Material->GetShadingModel() != MSM_Unlit;
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_SHADING"),TEXT("1"));
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_DIRECTIONAL_LIGHT"),TEXT("1"));
	}
};

/**
 * Renders a stationary directional light in the base pass with distance field precomputed shadows without outputting to GBuffers, used to support low end hardware where deferred shading is too expensive.
 */
struct FSimpleStationaryLightPrecomputedShadowsLightingPolicy : public TDistanceFieldShadowsAndLightMapPolicy<HQ_LIGHTMAP>
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static const auto AllowStaticLightingVar = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.AllowStaticLighting"));

		return AllowStaticLightingVar->GetValueOnAnyThread() != 0
			&& PlatformSupportsSimpleForwardShading(Platform)
			&& TDistanceFieldShadowsAndLightMapPolicy<HQ_LIGHTMAP>::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_SHADING"),TEXT("1"));
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_DIRECTIONAL_LIGHT"),TEXT("1"));
		TDistanceFieldShadowsAndLightMapPolicy<HQ_LIGHTMAP>::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/**
 * Renders a stationary directional light in the base pass with single sample shadows without outputting to GBuffers, used to support low end hardware where deferred shading is too expensive.
 */
struct FSimpleStationaryLightSingleSampleShadowsLightingPolicy : public FCachedPointIndirectLightingPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static const auto AllowStaticLightingVar = IConsoleManager::Get().FindTConsoleVariableDataInt(TEXT("r.AllowStaticLighting"));

		return AllowStaticLightingVar->GetValueOnAnyThread() != 0
			&& PlatformSupportsSimpleForwardShading(Platform)
			&& FCachedPointIndirectLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_SHADING"),TEXT("1"));
		OutEnvironment.SetDefine(TEXT("SIMPLE_FORWARD_DIRECTIONAL_LIGHT"),TEXT("1"));
		FCachedPointIndirectLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/** Combines an unshadowed directional light with indirect lighting from a single SH sample. */
struct FMobileDirectionalLightAndSHIndirectPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return Material->GetShadingModel() != MSM_Unlit && FCachedPointIndirectLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		FCachedPointIndirectLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/** Combines a movable directional light with indirect lighting from a single SH sample. */
struct FMobileDirectionalLightAndSHDirectionalIndirectPolicy : public FMobileDirectionalLightAndSHIndirectPolicy
{
	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("MOVABLE_DIRECTIONAL_LIGHT"), TEXT("1"));
		OutEnvironment.SetDefine(TEXT(PREPROCESSOR_TO_STRING(MAX_MOBILE_SHADOWCASCADES)), MAX_MOBILE_SHADOWCASCADES);
		FMobileDirectionalLightAndSHIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/** Combines a movable directional light with CSM with indirect lighting from a single SH sample. */
struct FMobileDirectionalLightAndSHDirectionalCSMIndirectPolicy : public FMobileDirectionalLightAndSHDirectionalIndirectPolicy
{
	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("DIRECTIONAL_LIGHT_CSM"), TEXT("1"));
		OutEnvironment.SetDefine(TEXT(PREPROCESSOR_TO_STRING(MAX_MOBILE_SHADOWCASCADES)), MAX_MOBILE_SHADOWCASCADES);
		FMobileDirectionalLightAndSHDirectionalIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

/** Combines an directional light with CSM with indirect lighting from a single SH sample. */
class FMobileDirectionalLightAndSHCSMIndirectPolicy : public FMobileDirectionalLightAndSHIndirectPolicy
{
public:
	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("DIRECTIONAL_LIGHT_CSM"), TEXT("1"));
		OutEnvironment.SetDefine(TEXT(PREPROCESSOR_TO_STRING(MAX_MOBILE_SHADOWCASCADES)), MAX_MOBILE_SHADOWCASCADES);
		FMobileDirectionalLightAndSHIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

struct FMovableDirectionalLightLightingPolicy
{
	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return Material->GetShadingModel() != MSM_Unlit;
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("MOVABLE_DIRECTIONAL_LIGHT"),TEXT("1"));
	}
};

struct FMovableDirectionalLightCSMLightingPolicy
{
	static bool ShouldCache(EShaderPlatform Platform, const FMaterial* Material, const FVertexFactoryType* VertexFactoryType)
	{
		return Material->GetShadingModel() != MSM_Unlit;
	}	

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment);
};

struct FMovableDirectionalLightWithLightmapLightingPolicy : public TLightMapPolicy<LQ_LIGHTMAP>
{
	typedef TLightMapPolicy<LQ_LIGHTMAP> Super;

	static bool ShouldCache(EShaderPlatform Platform, const FMaterial* Material, const FVertexFactoryType* VertexFactoryType)
	{
		return (Material->GetShadingModel() != MSM_Unlit) && Super::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("MOVABLE_DIRECTIONAL_LIGHT"), TEXT("1"));
		OutEnvironment.SetDefine(TEXT(PREPROCESSOR_TO_STRING(MAX_MOBILE_SHADOWCASCADES)), MAX_MOBILE_SHADOWCASCADES);

		Super::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

struct FMovableDirectionalLightCSMWithLightmapLightingPolicy : public FMovableDirectionalLightWithLightmapLightingPolicy
{
	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment)
	{
		OutEnvironment.SetDefine(TEXT("DIRECTIONAL_LIGHT_CSM"), TEXT("1"));

		FMovableDirectionalLightWithLightmapLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
	}
};

enum ELightMapPolicyType
{
	LMP_NO_LIGHTMAP,
	LMP_CACHED_VOLUME_INDIRECT_LIGHTING,
	LMP_CACHED_POINT_INDIRECT_LIGHTING,
	LMP_SIMPLE_NO_LIGHTMAP,
	LMP_SIMPLE_LIGHTMAP_ONLY_LIGHTING,
	LMP_SIMPLE_DIRECTIONAL_LIGHT_LIGHTING,
	LMP_SIMPLE_STATIONARY_PRECOMPUTED_SHADOW_LIGHTING,
	LMP_SIMPLE_STATIONARY_SINGLESAMPLE_SHADOW_LIGHTING,
	LMP_LQ_LIGHTMAP,
	LMP_HQ_LIGHTMAP,
	LMP_DISTANCE_FIELD_SHADOWS_AND_HQ_LIGHTMAP,
	// Mobile specific
	LMP_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP,
	LMP_DISTANCE_FIELD_SHADOWS_LIGHTMAP_AND_CSM,
	LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT,
	LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_DIRECTIONAL_INDIRECT,
	LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_DIRECTIONAL_CSM_INDIRECT,
	LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_CSM_INDIRECT,
	LMP_MOVABLE_DIRECTIONAL_LIGHT,
	LMP_MOVABLE_DIRECTIONAL_LIGHT_CSM,
	LMP_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP,
	LMP_MOVABLE_DIRECTIONAL_LIGHT_CSM_WITH_LIGHTMAP,
	// LightMapDensity
	LMP_DUMMY
};

class FUniformLightMapPolicyShaderParametersType
{
public:
	void Bind(const FShaderParameterMap& ParameterMap)
	{
		BufferParameter.Bind(ParameterMap, TEXT("PrecomputedLightingBuffer"));
	}

	void Serialize(FArchive& Ar)
	{
		Ar << BufferParameter;
	}

	FShaderUniformBufferParameter BufferParameter;
};

class FUniformLightMapPolicy
{
public:

	typedef  const FLightCacheInterface* ElementDataType;

	typedef FUniformLightMapPolicyShaderParametersType PixelParametersType;
	typedef FUniformLightMapPolicyShaderParametersType VertexParametersType;

	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		return false; // This one does not compile shaders since we can't tell which policy to use.
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment) 
	{}

	FUniformLightMapPolicy(ELightMapPolicyType InIndirectPolicy) : IndirectPolicy(InIndirectPolicy) {}

	void Set(
		FRHICommandList& RHICmdList, 
		const VertexParametersType* VertexShaderParameters,
		const PixelParametersType* PixelShaderParameters,
		FShader* VertexShader,
		FShader* PixelShader,
		const FVertexFactory* VertexFactory,
		const FMaterialRenderProxy* MaterialRenderProxy,
		const FSceneView* View
		) const;

	void SetMesh(
		FRHICommandList& RHICmdList,
		const FSceneView& View,
		const FPrimitiveSceneProxy* PrimitiveSceneProxy,
		const VertexParametersType* VertexShaderParameters,
		const PixelParametersType* PixelShaderParameters,
		FShader* VertexShader,
		FShader* PixelShader,
		const FVertexFactory* VertexFactory,
		const FMaterialRenderProxy* MaterialRenderProxy,
		const FLightCacheInterface* LCI
		) const;

	friend bool operator==(const FUniformLightMapPolicy A,const FUniformLightMapPolicy B)
	{
		return A.IndirectPolicy == B.IndirectPolicy;
	}

	friend int32 CompareDrawingPolicy(const FUniformLightMapPolicy& A,const FUniformLightMapPolicy& B)
	{
		COMPAREDRAWINGPOLICYMEMBERS(IndirectPolicy);
		return  0;
	}

	ELightMapPolicyType GetIndirectPolicy() const { return IndirectPolicy; }

private:

	ELightMapPolicyType IndirectPolicy;
};

template <ELightMapPolicyType Policy>
class TUniformLightMapPolicy : public FUniformLightMapPolicy
{
public:

	TUniformLightMapPolicy() : FUniformLightMapPolicy(Policy) {}

	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		CA_SUPPRESS(6326);
		switch (Policy)
		{
		case LMP_NO_LIGHTMAP:
			return FNoLightMapPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_CACHED_VOLUME_INDIRECT_LIGHTING:
			return FCachedVolumeIndirectLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_CACHED_POINT_INDIRECT_LIGHTING:
			return FCachedPointIndirectLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_SIMPLE_NO_LIGHTMAP:
			return FSimpleNoLightmapLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_SIMPLE_LIGHTMAP_ONLY_LIGHTING:
			return FSimpleLightmapOnlyLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_SIMPLE_DIRECTIONAL_LIGHT_LIGHTING:
			return FSimpleDirectionalLightLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_SIMPLE_STATIONARY_PRECOMPUTED_SHADOW_LIGHTING:
			return FSimpleStationaryLightPrecomputedShadowsLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_SIMPLE_STATIONARY_SINGLESAMPLE_SHADOW_LIGHTING:
			return FSimpleStationaryLightSingleSampleShadowsLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_LQ_LIGHTMAP:
			return TLightMapPolicy<LQ_LIGHTMAP>::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_HQ_LIGHTMAP:
			return TLightMapPolicy<HQ_LIGHTMAP>::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_DISTANCE_FIELD_SHADOWS_AND_HQ_LIGHTMAP:
			return TDistanceFieldShadowsAndLightMapPolicy<HQ_LIGHTMAP>::ShouldCache(Platform, Material, VertexFactoryType);

		// Mobile specific
		
		case LMP_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP:
			return TDistanceFieldShadowsAndLightMapPolicy<LQ_LIGHTMAP>::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_DISTANCE_FIELD_SHADOWS_LIGHTMAP_AND_CSM:
			return FDistanceFieldShadowsLightMapAndCSMLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT:
			return FMobileDirectionalLightAndSHIndirectPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_DIRECTIONAL_INDIRECT:
			return FMobileDirectionalLightAndSHDirectionalIndirectPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_CSM_INDIRECT:
			return FMobileDirectionalLightAndSHCSMIndirectPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_DIRECTIONAL_CSM_INDIRECT:
			return FMobileDirectionalLightAndSHDirectionalCSMIndirectPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOVABLE_DIRECTIONAL_LIGHT:
			return FMovableDirectionalLightLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOVABLE_DIRECTIONAL_LIGHT_CSM:
			return FMovableDirectionalLightCSMLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP:
			return FMovableDirectionalLightWithLightmapLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);
		case LMP_MOVABLE_DIRECTIONAL_LIGHT_CSM_WITH_LIGHTMAP:
			return FMovableDirectionalLightCSMWithLightmapLightingPolicy::ShouldCache(Platform, Material, VertexFactoryType);

		// LightMapDensity
	
		case LMP_DUMMY:
			return FDummyLightMapPolicy::ShouldCache(Platform, Material, VertexFactoryType);

		default:
			check(false);
			return false;
		};
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment) 
	{
		OutEnvironment.SetDefine(TEXT("MAX_NUM_LIGHTMAP_COEF"), MAX_NUM_LIGHTMAP_COEF);

		CA_SUPPRESS(6326);
		switch (Policy)
		{
		case LMP_NO_LIGHTMAP:							
			FNoLightMapPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_CACHED_VOLUME_INDIRECT_LIGHTING:
			FCachedVolumeIndirectLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_CACHED_POINT_INDIRECT_LIGHTING:
			FCachedPointIndirectLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_SIMPLE_NO_LIGHTMAP:
			return FSimpleNoLightmapLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_SIMPLE_LIGHTMAP_ONLY_LIGHTING:
			return FSimpleLightmapOnlyLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_SIMPLE_DIRECTIONAL_LIGHT_LIGHTING:
			FSimpleDirectionalLightLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_SIMPLE_STATIONARY_PRECOMPUTED_SHADOW_LIGHTING:
			return FSimpleStationaryLightPrecomputedShadowsLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_SIMPLE_STATIONARY_SINGLESAMPLE_SHADOW_LIGHTING:
			return FSimpleStationaryLightSingleSampleShadowsLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_LQ_LIGHTMAP:
			TLightMapPolicy<LQ_LIGHTMAP>::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_HQ_LIGHTMAP:
			TLightMapPolicy<HQ_LIGHTMAP>::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_DISTANCE_FIELD_SHADOWS_AND_HQ_LIGHTMAP:
			TDistanceFieldShadowsAndLightMapPolicy<HQ_LIGHTMAP>::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;

		// Mobile specific
		case LMP_DISTANCE_FIELD_SHADOWS_AND_LQ_LIGHTMAP:
			TDistanceFieldShadowsAndLightMapPolicy<LQ_LIGHTMAP>::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_DISTANCE_FIELD_SHADOWS_LIGHTMAP_AND_CSM:
			FDistanceFieldShadowsLightMapAndCSMLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_INDIRECT:
			FMobileDirectionalLightAndSHIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_DIRECTIONAL_INDIRECT:
			FMobileDirectionalLightAndSHDirectionalIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_CSM_INDIRECT:
			FMobileDirectionalLightAndSHCSMIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOBILE_DIRECTIONAL_LIGHT_AND_SH_DIRECTIONAL_CSM_INDIRECT:
			FMobileDirectionalLightAndSHDirectionalCSMIndirectPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOVABLE_DIRECTIONAL_LIGHT:
			FMovableDirectionalLightLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOVABLE_DIRECTIONAL_LIGHT_CSM:
			FMovableDirectionalLightCSMLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOVABLE_DIRECTIONAL_LIGHT_WITH_LIGHTMAP:
			FMovableDirectionalLightWithLightmapLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;
		case LMP_MOVABLE_DIRECTIONAL_LIGHT_CSM_WITH_LIGHTMAP:
			FMovableDirectionalLightCSMWithLightmapLightingPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;

		// LightMapDensity
	
		case LMP_DUMMY:
			FDummyLightMapPolicy::ModifyCompilationEnvironment(Platform, Material, OutEnvironment);
			break;

		default:
			check(false);
			break;
		}
	}
};

/**
 * Self shadowing translucency from a directional light + allows a dynamic object to access indirect lighting through a per-object lighting sample
 */
class FSelfShadowedCachedPointIndirectLightingPolicy : public FSelfShadowedTranslucencyPolicy
{
public:

	class PixelParametersType : public FUniformLightMapPolicyShaderParametersType, public FSelfShadowedTranslucencyPolicy::PixelParametersType
	{
	public:
		void Bind(const FShaderParameterMap& ParameterMap)
		{
			FUniformLightMapPolicyShaderParametersType::Bind(ParameterMap);
			FSelfShadowedTranslucencyPolicy::PixelParametersType::Bind(ParameterMap);
		}

		void Serialize(FArchive& Ar)
		{
			FUniformLightMapPolicyShaderParametersType::Serialize(Ar);
			FSelfShadowedTranslucencyPolicy::PixelParametersType::Serialize(Ar);
		}
	};

	static bool ShouldCache(EShaderPlatform Platform,const FMaterial* Material,const FVertexFactoryType* VertexFactoryType)
	{
		static IConsoleVariable* AllowStaticLightingVar = IConsoleManager::Get().FindConsoleVariable(TEXT("r.AllowStaticLighting"));

		return Material->GetShadingModel() != MSM_Unlit 
			&& IsTranslucentBlendMode(Material->GetBlendMode()) 
			&& (!AllowStaticLightingVar || AllowStaticLightingVar->GetInt() != 0)
			&& FSelfShadowedTranslucencyPolicy::ShouldCache(Platform, Material, VertexFactoryType);
	}

	static void ModifyCompilationEnvironment(EShaderPlatform Platform, const FMaterial* Material, FShaderCompilerEnvironment& OutEnvironment);

	/** Initialization constructor. */
	FSelfShadowedCachedPointIndirectLightingPolicy() {}

	void SetMesh(
		FRHICommandList& RHICmdList, 
		const FSceneView& View,
		const FPrimitiveSceneProxy* PrimitiveSceneProxy,
		const VertexParametersType* VertexShaderParameters,
		const PixelParametersType* PixelShaderParameters,
		FShader* VertexShader,
		FShader* PixelShader,
		const FVertexFactory* VertexFactory,
		const FMaterialRenderProxy* MaterialRenderProxy,
		const ElementDataType& ElementData
		) const;
};


// Copyright 1998-2016 Epic Games, Inc. All Rights Reserved.

#pragma once


/**
 * Binary predicate class for sorting elements in reverse order.  Assumes < operator is defined for the template type.
 *
 * See: http://en.cppreference.com/w/cpp/utility/functional/greater
 */
template <typename T = void>
struct TGreater
{
	FORCEINLINE bool operator()(const T& A, const T& B) const
	{
		return B < A;
	}
};

template <>
struct TGreater<void>
{
	template <typename T>
	FORCEINLINE bool operator()(const T& A, const T& B) const
	{
		return B < A;
	}
};

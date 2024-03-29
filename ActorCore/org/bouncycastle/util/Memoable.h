//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/util/Memoable.java
//

#ifndef _OrgBouncycastleUtilMemoable_H_
#define _OrgBouncycastleUtilMemoable_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@protocol OrgBouncycastleUtilMemoable < NSObject, JavaObject >

/*!
 @brief Produce a copy of this object with its configuration and in its current state.
 <p>
 The returned object may be used simply to store the state, or may be used as a similar object
 starting from the copied state.
 */
- (id<OrgBouncycastleUtilMemoable>)copy__ OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Restore a copied object state into this object.
 <p>
 Implementations of this method <em>should</em> try to avoid or minimise memory allocation to perform the reset.
 @param other an object originally <code>copied</code> from an object of the same type as this instance.
 @throws ClassCastException if the provided object is not of the correct type.
 @throws MemoableResetException if the <b>other</b> parameter is in some other way invalid.
 */
- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleUtilMemoable)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilMemoable)


#pragma clang diagnostic pop
#endif // _OrgBouncycastleUtilMemoable_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/RandomRuntimeProvider.java
//

#ifndef _ImActorRuntimeRandomRuntimeProvider_H_
#define _ImActorRuntimeRandomRuntimeProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/RandomRuntime.h"

@class IOSByteArray;
@class JavaMathBigInteger;

/*!
 @brief Created by ex3ndr on 07.08.15.
 */
@interface ARRandomRuntimeProvider : NSObject < ARRandomRuntime >

#pragma mark Public

- (instancetype)init;

- (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits;

- (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits
                                          withInt:(jint)certanity;

- (void)nextBytesWithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)randomBytesWithInt:(jint)length;

- (jint)randomIntWithInt:(jint)maxValue;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRandomRuntimeProvider)

FOUNDATION_EXPORT void ARRandomRuntimeProvider_init(ARRandomRuntimeProvider *self);

FOUNDATION_EXPORT ARRandomRuntimeProvider *new_ARRandomRuntimeProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRandomRuntimeProvider)

@compatibility_alias ImActorRuntimeRandomRuntimeProvider ARRandomRuntimeProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeRandomRuntimeProvider_H_

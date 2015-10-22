//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/bouncycastle/RandomProvider.java
//

#ifndef _ImActorRuntimeCryptoBouncycastleRandomProvider_H_
#define _ImActorRuntimeCryptoBouncycastleRandomProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;
@class JavaMathBigInteger;

@protocol ARRandomProvider < NSObject, JavaObject >

- (IOSByteArray *)randomBytesWithInt:(jint)length;

- (jint)randomIntWithInt:(jint)maxValue;

- (void)nextBytesWithByteArray:(IOSByteArray *)data;

- (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits;

- (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits
                                          withInt:(jint)certanity;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRandomProvider)

J2OBJC_TYPE_LITERAL_HEADER(ARRandomProvider)

#define ImActorRuntimeCryptoBouncycastleRandomProvider ARRandomProvider


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCryptoBouncycastleRandomProvider_H_
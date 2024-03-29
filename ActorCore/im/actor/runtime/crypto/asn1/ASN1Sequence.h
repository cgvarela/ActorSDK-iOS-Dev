//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1Sequence.java
//

#ifndef _ImActorRuntimeCryptoAsn1ASN1Sequence_H_
#define _ImActorRuntimeCryptoAsn1ASN1Sequence_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/crypto/asn1/ASN1Primitive.h"

@class ARDataInput;
@class ARDataOutput;
@class IOSObjectArray;
@class JavaUtilArrayList;
@protocol JavaUtilList;

@interface ARASN1Sequence : ARASN1Primitive

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARASN1PrimitiveArray:(IOSObjectArray *)sequence;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sequence;

- (void)addWithARASN1Primitive:(ARASN1Primitive *)item;

- (ARASN1Primitive *)getWithInt:(jint)index;

- (JavaUtilArrayList *)getSequence;

+ (ARASN1Sequence *)readSequenceWithARDataInput:(ARDataInput *)dataInput;

- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(ARASN1Sequence)

FOUNDATION_EXPORT ARASN1Sequence *ARASN1Sequence_readSequenceWithARDataInput_(ARDataInput *dataInput);

FOUNDATION_EXPORT void ARASN1Sequence_init(ARASN1Sequence *self);

FOUNDATION_EXPORT ARASN1Sequence *new_ARASN1Sequence_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARASN1Sequence_initWithJavaUtilList_(ARASN1Sequence *self, id<JavaUtilList> sequence);

FOUNDATION_EXPORT ARASN1Sequence *new_ARASN1Sequence_initWithJavaUtilList_(id<JavaUtilList> sequence) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARASN1Sequence_initWithARASN1PrimitiveArray_(ARASN1Sequence *self, IOSObjectArray *sequence);

FOUNDATION_EXPORT ARASN1Sequence *new_ARASN1Sequence_initWithARASN1PrimitiveArray_(IOSObjectArray *sequence) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARASN1Sequence)

@compatibility_alias ImActorRuntimeCryptoAsn1ASN1Sequence ARASN1Sequence;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCryptoAsn1ASN1Sequence_H_

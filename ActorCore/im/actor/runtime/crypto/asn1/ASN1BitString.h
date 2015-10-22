//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1BitString.java
//

#ifndef _ImActorRuntimeCryptoAsn1ASN1BitString_H_
#define _ImActorRuntimeCryptoAsn1ASN1BitString_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/crypto/asn1/ASN1Primitive.h>

@class ARDataInput;
@class ARDataOutput;
@class IOSByteArray;

@interface ARASN1BitString : ARASN1Primitive

#pragma mark Public

- (instancetype)initWithInt:(jint)paddingBit
              withByteArray:(IOSByteArray *)content;

- (IOSByteArray *)getContent;

- (jint)getPaddingBit;

+ (ARASN1BitString *)readBitStringWithARDataInput:(ARDataInput *)dataInput;

- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(ARASN1BitString)

FOUNDATION_EXPORT ARASN1BitString *ARASN1BitString_readBitStringWithARDataInput_(ARDataInput *dataInput);

FOUNDATION_EXPORT void ARASN1BitString_initWithInt_withByteArray_(ARASN1BitString *self, jint paddingBit, IOSByteArray *content);

FOUNDATION_EXPORT ARASN1BitString *new_ARASN1BitString_initWithInt_withByteArray_(jint paddingBit, IOSByteArray *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARASN1BitString)

@compatibility_alias ImActorRuntimeCryptoAsn1ASN1BitString ARASN1BitString;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCryptoAsn1ASN1BitString_H_
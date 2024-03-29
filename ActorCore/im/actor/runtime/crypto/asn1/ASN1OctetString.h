//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1OctetString.java
//

#ifndef _ImActorRuntimeCryptoAsn1ASN1OctetString_H_
#define _ImActorRuntimeCryptoAsn1ASN1OctetString_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/crypto/asn1/ASN1Primitive.h"

@class ARDataInput;
@class ARDataOutput;
@class IOSByteArray;

@interface ARASN1OctetString : ARASN1Primitive

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)getData;

+ (ARASN1OctetString *)readOctetStringWithARDataInput:(ARDataInput *)dataInput;

- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(ARASN1OctetString)

FOUNDATION_EXPORT ARASN1OctetString *ARASN1OctetString_readOctetStringWithARDataInput_(ARDataInput *dataInput);

FOUNDATION_EXPORT void ARASN1OctetString_initWithByteArray_(ARASN1OctetString *self, IOSByteArray *data);

FOUNDATION_EXPORT ARASN1OctetString *new_ARASN1OctetString_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARASN1OctetString)

@compatibility_alias ImActorRuntimeCryptoAsn1ASN1OctetString ARASN1OctetString;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCryptoAsn1ASN1OctetString_H_

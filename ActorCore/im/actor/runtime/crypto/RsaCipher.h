//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/RsaCipher.java
//

#ifndef _ImActorRuntimeCryptoRsaCipher_H_
#define _ImActorRuntimeCryptoRsaCipher_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/crypto/RsaEncryptCipher.h"

@class IOSByteArray;

@protocol ARRsaCipher < ARRsaEncryptCipher, NSObject, JavaObject >

- (IOSByteArray *)decryptWithByteArray:(IOSByteArray *)sourceData;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRsaCipher)

J2OBJC_TYPE_LITERAL_HEADER(ARRsaCipher)

#define ImActorRuntimeCryptoRsaCipher ARRsaCipher


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCryptoRsaCipher_H_

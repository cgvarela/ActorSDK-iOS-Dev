//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/CryptoRuntime.java
//

#ifndef _ImActorRuntimeCryptoRuntime_H_
#define _ImActorRuntimeCryptoRuntime_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

/*!
 @brief Provider for Cryptography support
 */
@protocol ARCryptoRuntime < NSObject, JavaObject >

/*!
 @brief Calculate MD5
 @param data source data
 @return md5 hash of data
 */
- (IOSByteArray *)MD5WithData:(IOSByteArray *)data;

/*!
 @brief Calculate SHA256
 @param data source data
 @return sha256 hash of data
 */
- (IOSByteArray *)SHA256WithData:(IOSByteArray *)data;

/*!
 @brief Calculate SHA512
 @param data source data
 @return sha512 hash of data
 */
- (IOSByteArray *)SHA512WithData:(IOSByteArray *)data;

@end

J2OBJC_EMPTY_STATIC_INIT(ARCryptoRuntime)

J2OBJC_TYPE_LITERAL_HEADER(ARCryptoRuntime)

#define ImActorRuntimeCryptoRuntime ARCryptoRuntime


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCryptoRuntime_H_

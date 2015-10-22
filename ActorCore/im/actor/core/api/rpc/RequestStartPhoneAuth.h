//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestStartPhoneAuth.java
//

#ifndef _ImActorCoreApiRpcRequestStartPhoneAuth_H_
#define _ImActorCoreApiRpcRequestStartPhoneAuth_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestStartPhoneAuth_HEADER 191

@interface ARRequestStartPhoneAuth : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle;

+ (ARRequestStartPhoneAuth *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getApiKey;

- (jint)getAppId;

- (IOSByteArray *)getDeviceHash;

- (NSString *)getDeviceTitle;

- (jint)getHeaderKey;

- (jlong)getPhoneNumber;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestStartPhoneAuth)

J2OBJC_STATIC_FIELD_GETTER(ARRequestStartPhoneAuth, HEADER, jint)

FOUNDATION_EXPORT ARRequestStartPhoneAuth *ARRequestStartPhoneAuth_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestStartPhoneAuth_initWithLong_withInt_withNSString_withByteArray_withNSString_(ARRequestStartPhoneAuth *self, jlong phoneNumber, jint appId, NSString *apiKey, IOSByteArray *deviceHash, NSString *deviceTitle);

FOUNDATION_EXPORT ARRequestStartPhoneAuth *new_ARRequestStartPhoneAuth_initWithLong_withInt_withNSString_withByteArray_withNSString_(jlong phoneNumber, jint appId, NSString *apiKey, IOSByteArray *deviceHash, NSString *deviceTitle) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestStartPhoneAuth_init(ARRequestStartPhoneAuth *self);

FOUNDATION_EXPORT ARRequestStartPhoneAuth *new_ARRequestStartPhoneAuth_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestStartPhoneAuth)

@compatibility_alias ImActorCoreApiRpcRequestStartPhoneAuth ARRequestStartPhoneAuth;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestStartPhoneAuth_H_

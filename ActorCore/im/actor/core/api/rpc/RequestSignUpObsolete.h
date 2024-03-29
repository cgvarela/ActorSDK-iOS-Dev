//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSignUpObsolete.java
//

#ifndef _ImActorCoreApiRpcRequestSignUpObsolete_H_
#define _ImActorCoreApiRpcRequestSignUpObsolete_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestSignUpObsolete_HEADER 4

@interface ARRequestSignUpObsolete : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
                withNSString:(NSString *)name
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey
                 withBoolean:(jboolean)isSilent;

+ (ARRequestSignUpObsolete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getAppId;

- (NSString *)getAppKey;

- (IOSByteArray *)getDeviceHash;

- (NSString *)getDeviceTitle;

- (jint)getHeaderKey;

- (NSString *)getName;

- (jlong)getPhoneNumber;

- (NSString *)getSmsCode;

- (NSString *)getSmsHash;

- (jboolean)isSilent;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestSignUpObsolete)

J2OBJC_STATIC_FIELD_GETTER(ARRequestSignUpObsolete, HEADER, jint)

FOUNDATION_EXPORT ARRequestSignUpObsolete *ARRequestSignUpObsolete_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestSignUpObsolete_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(ARRequestSignUpObsolete *self, jlong phoneNumber, NSString *smsHash, NSString *smsCode, NSString *name, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey, jboolean isSilent);

FOUNDATION_EXPORT ARRequestSignUpObsolete *new_ARRequestSignUpObsolete_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(jlong phoneNumber, NSString *smsHash, NSString *smsCode, NSString *name, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey, jboolean isSilent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestSignUpObsolete_init(ARRequestSignUpObsolete *self);

FOUNDATION_EXPORT ARRequestSignUpObsolete *new_ARRequestSignUpObsolete_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestSignUpObsolete)

@compatibility_alias ImActorCoreApiRpcRequestSignUpObsolete ARRequestSignUpObsolete;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestSignUpObsolete_H_

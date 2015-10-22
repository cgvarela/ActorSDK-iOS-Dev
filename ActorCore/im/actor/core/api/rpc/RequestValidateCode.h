//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestValidateCode.java
//

#ifndef _ImActorCoreApiRpcRequestValidateCode_H_
#define _ImActorCoreApiRpcRequestValidateCode_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestValidateCode_HEADER 189

@interface ARRequestValidateCode : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)transactionHash
                    withNSString:(NSString *)code;

+ (ARRequestValidateCode *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getCode;

- (jint)getHeaderKey;

- (NSString *)getTransactionHash;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestValidateCode)

J2OBJC_STATIC_FIELD_GETTER(ARRequestValidateCode, HEADER, jint)

FOUNDATION_EXPORT ARRequestValidateCode *ARRequestValidateCode_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestValidateCode_initWithNSString_withNSString_(ARRequestValidateCode *self, NSString *transactionHash, NSString *code);

FOUNDATION_EXPORT ARRequestValidateCode *new_ARRequestValidateCode_initWithNSString_withNSString_(NSString *transactionHash, NSString *code) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestValidateCode_init(ARRequestValidateCode *self);

FOUNDATION_EXPORT ARRequestValidateCode *new_ARRequestValidateCode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestValidateCode)

@compatibility_alias ImActorCoreApiRpcRequestValidateCode ARRequestValidateCode;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestValidateCode_H_

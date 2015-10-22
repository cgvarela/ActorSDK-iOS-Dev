//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSendCodeByPhoneCall.java
//

#ifndef _ImActorCoreApiRpcRequestSendCodeByPhoneCall_H_
#define _ImActorCoreApiRpcRequestSendCodeByPhoneCall_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestSendCodeByPhoneCall_HEADER 197

@interface ARRequestSendCodeByPhoneCall : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)transactionHash;

+ (ARRequestSendCodeByPhoneCall *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getTransactionHash;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestSendCodeByPhoneCall)

J2OBJC_STATIC_FIELD_GETTER(ARRequestSendCodeByPhoneCall, HEADER, jint)

FOUNDATION_EXPORT ARRequestSendCodeByPhoneCall *ARRequestSendCodeByPhoneCall_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestSendCodeByPhoneCall_initWithNSString_(ARRequestSendCodeByPhoneCall *self, NSString *transactionHash);

FOUNDATION_EXPORT ARRequestSendCodeByPhoneCall *new_ARRequestSendCodeByPhoneCall_initWithNSString_(NSString *transactionHash) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestSendCodeByPhoneCall_init(ARRequestSendCodeByPhoneCall *self);

FOUNDATION_EXPORT ARRequestSendCodeByPhoneCall *new_ARRequestSendCodeByPhoneCall_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestSendCodeByPhoneCall)

@compatibility_alias ImActorCoreApiRpcRequestSendCodeByPhoneCall ARRequestSendCodeByPhoneCall;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestSendCodeByPhoneCall_H_

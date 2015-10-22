//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestRegisterApplePush.java
//

#ifndef _ImActorCoreApiRpcRequestRegisterApplePush_H_
#define _ImActorCoreApiRpcRequestRegisterApplePush_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestRegisterApplePush_HEADER 76

@interface ARRequestRegisterApplePush : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)apnsKey
               withNSString:(NSString *)token;

+ (ARRequestRegisterApplePush *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getApnsKey;

- (jint)getHeaderKey;

- (NSString *)getToken;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestRegisterApplePush)

J2OBJC_STATIC_FIELD_GETTER(ARRequestRegisterApplePush, HEADER, jint)

FOUNDATION_EXPORT ARRequestRegisterApplePush *ARRequestRegisterApplePush_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestRegisterApplePush_initWithInt_withNSString_(ARRequestRegisterApplePush *self, jint apnsKey, NSString *token);

FOUNDATION_EXPORT ARRequestRegisterApplePush *new_ARRequestRegisterApplePush_initWithInt_withNSString_(jint apnsKey, NSString *token) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestRegisterApplePush_init(ARRequestRegisterApplePush *self);

FOUNDATION_EXPORT ARRequestRegisterApplePush *new_ARRequestRegisterApplePush_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestRegisterApplePush)

@compatibility_alias ImActorCoreApiRpcRequestRegisterApplePush ARRequestRegisterApplePush;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestRegisterApplePush_H_

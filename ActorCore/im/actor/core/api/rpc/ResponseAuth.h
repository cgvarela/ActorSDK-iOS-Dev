//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseAuth.java
//

#ifndef _ImActorCoreApiRpcResponseAuth_H_
#define _ImActorCoreApiRpcResponseAuth_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARApiConfig;
@class ARApiUser;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARResponseAuth_HEADER 5

@interface ARResponseAuth : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiUser:(ARApiUser *)user
                  withARApiConfig:(ARApiConfig *)config;

+ (ARResponseAuth *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiConfig *)getConfig;

- (jint)getHeaderKey;

- (ARApiUser *)getUser;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseAuth)

J2OBJC_STATIC_FIELD_GETTER(ARResponseAuth, HEADER, jint)

FOUNDATION_EXPORT ARResponseAuth *ARResponseAuth_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseAuth_initWithARApiUser_withARApiConfig_(ARResponseAuth *self, ARApiUser *user, ARApiConfig *config);

FOUNDATION_EXPORT ARResponseAuth *new_ARResponseAuth_initWithARApiUser_withARApiConfig_(ARApiUser *user, ARApiConfig *config) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseAuth_init(ARResponseAuth *self);

FOUNDATION_EXPORT ARResponseAuth *new_ARResponseAuth_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseAuth)

@compatibility_alias ImActorCoreApiRpcResponseAuth ARResponseAuth;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseAuth_H_

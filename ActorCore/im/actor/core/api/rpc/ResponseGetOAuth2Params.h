//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetOAuth2Params.java
//

#ifndef _ImActorCoreApiRpcResponseGetOAuth2Params_H_
#define _ImActorCoreApiRpcResponseGetOAuth2Params_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARResponseGetOAuth2Params_HEADER 195

@interface ARResponseGetOAuth2Params : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)authUrl;

+ (ARResponseGetOAuth2Params *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getAuthUrl;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseGetOAuth2Params)

J2OBJC_STATIC_FIELD_GETTER(ARResponseGetOAuth2Params, HEADER, jint)

FOUNDATION_EXPORT ARResponseGetOAuth2Params *ARResponseGetOAuth2Params_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseGetOAuth2Params_initWithNSString_(ARResponseGetOAuth2Params *self, NSString *authUrl);

FOUNDATION_EXPORT ARResponseGetOAuth2Params *new_ARResponseGetOAuth2Params_initWithNSString_(NSString *authUrl) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseGetOAuth2Params_init(ARResponseGetOAuth2Params *self);

FOUNDATION_EXPORT ARResponseGetOAuth2Params *new_ARResponseGetOAuth2Params_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseGetOAuth2Params)

@compatibility_alias ImActorCoreApiRpcResponseGetOAuth2Params ARResponseGetOAuth2Params;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseGetOAuth2Params_H_

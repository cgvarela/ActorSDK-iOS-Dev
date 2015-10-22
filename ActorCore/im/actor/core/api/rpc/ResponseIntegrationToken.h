//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseIntegrationToken.java
//

#ifndef _ImActorCoreApiRpcResponseIntegrationToken_H_
#define _ImActorCoreApiRpcResponseIntegrationToken_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Response.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARResponseIntegrationToken_HEADER 183

@interface ARResponseIntegrationToken : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)token
                    withNSString:(NSString *)url;

+ (ARResponseIntegrationToken *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getToken;

- (NSString *)getUrl;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseIntegrationToken)

J2OBJC_STATIC_FIELD_GETTER(ARResponseIntegrationToken, HEADER, jint)

FOUNDATION_EXPORT ARResponseIntegrationToken *ARResponseIntegrationToken_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseIntegrationToken_initWithNSString_withNSString_(ARResponseIntegrationToken *self, NSString *token, NSString *url);

FOUNDATION_EXPORT ARResponseIntegrationToken *new_ARResponseIntegrationToken_initWithNSString_withNSString_(NSString *token, NSString *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseIntegrationToken_init(ARResponseIntegrationToken *self);

FOUNDATION_EXPORT ARResponseIntegrationToken *new_ARResponseIntegrationToken_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseIntegrationToken)

@compatibility_alias ImActorCoreApiRpcResponseIntegrationToken ARResponseIntegrationToken;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseIntegrationToken_H_

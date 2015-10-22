//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseVoid.java
//

#ifndef _ImActorCoreApiRpcResponseVoid_H_
#define _ImActorCoreApiRpcResponseVoid_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Response.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARResponseVoid_HEADER 50

@interface ARResponseVoid : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

+ (ARResponseVoid *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseVoid)

J2OBJC_STATIC_FIELD_GETTER(ARResponseVoid, HEADER, jint)

FOUNDATION_EXPORT ARResponseVoid *ARResponseVoid_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseVoid_init(ARResponseVoid *self);

FOUNDATION_EXPORT ARResponseVoid *new_ARResponseVoid_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseVoid)

@compatibility_alias ImActorCoreApiRpcResponseVoid ARResponseVoid;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseVoid_H_

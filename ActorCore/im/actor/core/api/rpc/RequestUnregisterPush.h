//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestUnregisterPush.java
//

#ifndef _ImActorCoreApiRpcRequestUnregisterPush_H_
#define _ImActorCoreApiRpcRequestUnregisterPush_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestUnregisterPush_HEADER 52

@interface ARRequestUnregisterPush : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

+ (ARRequestUnregisterPush *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestUnregisterPush)

J2OBJC_STATIC_FIELD_GETTER(ARRequestUnregisterPush, HEADER, jint)

FOUNDATION_EXPORT ARRequestUnregisterPush *ARRequestUnregisterPush_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestUnregisterPush_init(ARRequestUnregisterPush *self);

FOUNDATION_EXPORT ARRequestUnregisterPush *new_ARRequestUnregisterPush_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestUnregisterPush)

@compatibility_alias ImActorCoreApiRpcRequestUnregisterPush ARRequestUnregisterPush;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestUnregisterPush_H_

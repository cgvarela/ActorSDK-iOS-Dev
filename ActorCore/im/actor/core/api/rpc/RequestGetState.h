//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetState.java
//

#ifndef _ImActorCoreApiRpcRequestGetState_H_
#define _ImActorCoreApiRpcRequestGetState_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestGetState_HEADER 9

@interface ARRequestGetState : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

+ (ARRequestGetState *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestGetState)

J2OBJC_STATIC_FIELD_GETTER(ARRequestGetState, HEADER, jint)

FOUNDATION_EXPORT ARRequestGetState *ARRequestGetState_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestGetState_init(ARRequestGetState *self);

FOUNDATION_EXPORT ARRequestGetState *new_ARRequestGetState_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestGetState)

@compatibility_alias ImActorCoreApiRpcRequestGetState ARRequestGetState;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestGetState_H_

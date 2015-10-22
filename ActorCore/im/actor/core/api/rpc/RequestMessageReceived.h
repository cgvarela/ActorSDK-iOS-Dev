//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestMessageReceived.java
//

#ifndef _ImActorCoreApiRpcRequestMessageReceived_H_
#define _ImActorCoreApiRpcRequestMessageReceived_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARApiOutPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestMessageReceived_HEADER 55

@interface ARRequestMessageReceived : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer
                            withLong:(jlong)date;

+ (ARRequestMessageReceived *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getHeaderKey;

- (ARApiOutPeer *)getPeer;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestMessageReceived)

J2OBJC_STATIC_FIELD_GETTER(ARRequestMessageReceived, HEADER, jint)

FOUNDATION_EXPORT ARRequestMessageReceived *ARRequestMessageReceived_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestMessageReceived_initWithARApiOutPeer_withLong_(ARRequestMessageReceived *self, ARApiOutPeer *peer, jlong date);

FOUNDATION_EXPORT ARRequestMessageReceived *new_ARRequestMessageReceived_initWithARApiOutPeer_withLong_(ARApiOutPeer *peer, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestMessageReceived_init(ARRequestMessageReceived *self);

FOUNDATION_EXPORT ARRequestMessageReceived *new_ARRequestMessageReceived_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestMessageReceived)

@compatibility_alias ImActorCoreApiRpcRequestMessageReceived ARRequestMessageReceived;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestMessageReceived_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestDeleteChat.java
//

#ifndef _ImActorCoreApiRpcRequestDeleteChat_H_
#define _ImActorCoreApiRpcRequestDeleteChat_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARApiOutPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestDeleteChat_HEADER 100

@interface ARRequestDeleteChat : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer;

+ (ARRequestDeleteChat *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (ARApiOutPeer *)getPeer;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestDeleteChat)

J2OBJC_STATIC_FIELD_GETTER(ARRequestDeleteChat, HEADER, jint)

FOUNDATION_EXPORT ARRequestDeleteChat *ARRequestDeleteChat_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestDeleteChat_initWithARApiOutPeer_(ARRequestDeleteChat *self, ARApiOutPeer *peer);

FOUNDATION_EXPORT ARRequestDeleteChat *new_ARRequestDeleteChat_initWithARApiOutPeer_(ARApiOutPeer *peer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestDeleteChat_init(ARRequestDeleteChat *self);

FOUNDATION_EXPORT ARRequestDeleteChat *new_ARRequestDeleteChat_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestDeleteChat)

@compatibility_alias ImActorCoreApiRpcRequestDeleteChat ARRequestDeleteChat;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestDeleteChat_H_

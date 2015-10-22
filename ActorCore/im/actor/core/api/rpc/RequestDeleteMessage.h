//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestDeleteMessage.java
//

#ifndef _ImActorCoreApiRpcRequestDeleteMessage_H_
#define _ImActorCoreApiRpcRequestDeleteMessage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARApiOutPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARRequestDeleteMessage_HEADER 98

@interface ARRequestDeleteMessage : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer
                    withJavaUtilList:(id<JavaUtilList>)rids;

+ (ARRequestDeleteMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (ARApiOutPeer *)getPeer;

- (id<JavaUtilList>)getRids;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestDeleteMessage)

J2OBJC_STATIC_FIELD_GETTER(ARRequestDeleteMessage, HEADER, jint)

FOUNDATION_EXPORT ARRequestDeleteMessage *ARRequestDeleteMessage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestDeleteMessage_initWithARApiOutPeer_withJavaUtilList_(ARRequestDeleteMessage *self, ARApiOutPeer *peer, id<JavaUtilList> rids);

FOUNDATION_EXPORT ARRequestDeleteMessage *new_ARRequestDeleteMessage_initWithARApiOutPeer_withJavaUtilList_(ARApiOutPeer *peer, id<JavaUtilList> rids) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestDeleteMessage_init(ARRequestDeleteMessage *self);

FOUNDATION_EXPORT ARRequestDeleteMessage *new_ARRequestDeleteMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestDeleteMessage)

@compatibility_alias ImActorCoreApiRpcRequestDeleteMessage ARRequestDeleteMessage;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestDeleteMessage_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditGroupTopic.java
//

#ifndef _ImActorCoreApiRpcRequestEditGroupTopic_H_
#define _ImActorCoreApiRpcRequestEditGroupTopic_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARApiGroupOutPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditGroupTopic_HEADER 211

@interface ARRequestEditGroupTopic : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                 withLong:(jlong)rid
                             withNSString:(NSString *)topic;

+ (ARRequestEditGroupTopic *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiGroupOutPeer *)getGroupPeer;

- (jint)getHeaderKey;

- (jlong)getRid;

- (NSString *)getTopic;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditGroupTopic)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditGroupTopic, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditGroupTopic *ARRequestEditGroupTopic_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditGroupTopic_initWithARApiGroupOutPeer_withLong_withNSString_(ARRequestEditGroupTopic *self, ARApiGroupOutPeer *groupPeer, jlong rid, NSString *topic);

FOUNDATION_EXPORT ARRequestEditGroupTopic *new_ARRequestEditGroupTopic_initWithARApiGroupOutPeer_withLong_withNSString_(ARApiGroupOutPeer *groupPeer, jlong rid, NSString *topic) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditGroupTopic_init(ARRequestEditGroupTopic *self);

FOUNDATION_EXPORT ARRequestEditGroupTopic *new_ARRequestEditGroupTopic_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditGroupTopic)

@compatibility_alias ImActorCoreApiRpcRequestEditGroupTopic ARRequestEditGroupTopic;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditGroupTopic_H_

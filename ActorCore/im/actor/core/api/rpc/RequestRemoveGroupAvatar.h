//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestRemoveGroupAvatar.java
//

#ifndef _ImActorCoreApiRpcRequestRemoveGroupAvatar_H_
#define _ImActorCoreApiRpcRequestRemoveGroupAvatar_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARApiGroupOutPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestRemoveGroupAvatar_HEADER 101

@interface ARRequestRemoveGroupAvatar : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                 withLong:(jlong)rid;

+ (ARRequestRemoveGroupAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiGroupOutPeer *)getGroupPeer;

- (jint)getHeaderKey;

- (jlong)getRid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestRemoveGroupAvatar)

J2OBJC_STATIC_FIELD_GETTER(ARRequestRemoveGroupAvatar, HEADER, jint)

FOUNDATION_EXPORT ARRequestRemoveGroupAvatar *ARRequestRemoveGroupAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestRemoveGroupAvatar_initWithARApiGroupOutPeer_withLong_(ARRequestRemoveGroupAvatar *self, ARApiGroupOutPeer *groupPeer, jlong rid);

FOUNDATION_EXPORT ARRequestRemoveGroupAvatar *new_ARRequestRemoveGroupAvatar_initWithARApiGroupOutPeer_withLong_(ARApiGroupOutPeer *groupPeer, jlong rid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestRemoveGroupAvatar_init(ARRequestRemoveGroupAvatar *self);

FOUNDATION_EXPORT ARRequestRemoveGroupAvatar *new_ARRequestRemoveGroupAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestRemoveGroupAvatar)

@compatibility_alias ImActorCoreApiRpcRequestRemoveGroupAvatar ARRequestRemoveGroupAvatar;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestRemoveGroupAvatar_H_

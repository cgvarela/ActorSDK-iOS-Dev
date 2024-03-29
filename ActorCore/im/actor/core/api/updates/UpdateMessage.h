//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateMessage.java
//

#ifndef _ImActorCoreApiUpdatesUpdateMessage_H_
#define _ImActorCoreApiUpdatesUpdateMessage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARApiMessage;
@class ARApiPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateMessage_HEADER 55

@interface ARUpdateMessage : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiPeer:(ARApiPeer *)peer
                          withInt:(jint)senderUid
                         withLong:(jlong)date
                         withLong:(jlong)rid
                 withARApiMessage:(ARApiMessage *)message;

+ (ARUpdateMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getHeaderKey;

- (ARApiMessage *)getMessage;

- (ARApiPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateMessage)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateMessage, HEADER, jint)

FOUNDATION_EXPORT ARUpdateMessage *ARUpdateMessage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateMessage_initWithARApiPeer_withInt_withLong_withLong_withARApiMessage_(ARUpdateMessage *self, ARApiPeer *peer, jint senderUid, jlong date, jlong rid, ARApiMessage *message);

FOUNDATION_EXPORT ARUpdateMessage *new_ARUpdateMessage_initWithARApiPeer_withInt_withLong_withLong_withARApiMessage_(ARApiPeer *peer, jint senderUid, jlong date, jlong rid, ARApiMessage *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateMessage_init(ARUpdateMessage *self);

FOUNDATION_EXPORT ARUpdateMessage *new_ARUpdateMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateMessage)

@compatibility_alias ImActorCoreApiUpdatesUpdateMessage ARUpdateMessage;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateMessage_H_

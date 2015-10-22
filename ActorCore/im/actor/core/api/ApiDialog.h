//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDialog.java
//

#ifndef _ImActorCoreApiApiDialog_H_
#define _ImActorCoreApiApiDialog_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARApiMessage;
@class ARApiMessageStateEnum;
@class ARApiPeer;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiDialog : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiPeer:(ARApiPeer *)peer
                          withInt:(jint)unreadCount
                         withLong:(jlong)sortDate
                          withInt:(jint)senderUid
                         withLong:(jlong)rid
                         withLong:(jlong)date
                 withARApiMessage:(ARApiMessage *)message
        withARApiMessageStateEnum:(ARApiMessageStateEnum *)state;

- (jlong)getDate;

- (ARApiMessage *)getMessage;

- (ARApiPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderUid;

- (jlong)getSortDate;

- (ARApiMessageStateEnum *)getState;

- (jint)getUnreadCount;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiDialog)

FOUNDATION_EXPORT void ARApiDialog_initWithARApiPeer_withInt_withLong_withInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(ARApiDialog *self, ARApiPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, ARApiMessage *message, ARApiMessageStateEnum *state);

FOUNDATION_EXPORT ARApiDialog *new_ARApiDialog_initWithARApiPeer_withInt_withLong_withInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(ARApiPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, ARApiMessage *message, ARApiMessageStateEnum *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiDialog_init(ARApiDialog *self);

FOUNDATION_EXPORT ARApiDialog *new_ARApiDialog_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiDialog)

@compatibility_alias ImActorCoreApiApiDialog ARApiDialog;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiDialog_H_

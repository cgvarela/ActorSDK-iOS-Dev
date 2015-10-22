//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiHistoryMessage.java
//

#ifndef _ImActorCoreApiApiHistoryMessage_H_
#define _ImActorCoreApiApiHistoryMessage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARApiMessage;
@class ARApiMessageStateEnum;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiHistoryMessage : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)senderUid
                   withLong:(jlong)rid
                   withLong:(jlong)date
           withARApiMessage:(ARApiMessage *)message
  withARApiMessageStateEnum:(ARApiMessageStateEnum *)state;

- (jlong)getDate;

- (ARApiMessage *)getMessage;

- (jlong)getRid;

- (jint)getSenderUid;

- (ARApiMessageStateEnum *)getState;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiHistoryMessage)

FOUNDATION_EXPORT void ARApiHistoryMessage_initWithInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(ARApiHistoryMessage *self, jint senderUid, jlong rid, jlong date, ARApiMessage *message, ARApiMessageStateEnum *state);

FOUNDATION_EXPORT ARApiHistoryMessage *new_ARApiHistoryMessage_initWithInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(jint senderUid, jlong rid, jlong date, ARApiMessage *message, ARApiMessageStateEnum *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiHistoryMessage_init(ARApiHistoryMessage *self);

FOUNDATION_EXPORT ARApiHistoryMessage *new_ARApiHistoryMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiHistoryMessage)

@compatibility_alias ImActorCoreApiApiHistoryMessage ARApiHistoryMessage;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiHistoryMessage_H_

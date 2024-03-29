//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/CombinedMessageUpdate.java
//

#ifndef _ImActorCoreModulesUpdatesInternalCombinedMessageUpdate_H_
#define _ImActorCoreModulesUpdatesInternalCombinedMessageUpdate_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARApiMessage;
@class JavaUtilArrayList;

@interface ACCombinedMessageUpdate : NSObject

#pragma mark Public

- (instancetype)init;

- (JavaUtilArrayList *)getMessages;

- (jlong)getReadKey;

- (jlong)getReceivedKey;

- (void)setReadKeyWithLong:(jlong)readKey;

- (void)setReceivedKeyWithLong:(jlong)receivedKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ACCombinedMessageUpdate)

FOUNDATION_EXPORT void ACCombinedMessageUpdate_init(ACCombinedMessageUpdate *self);

FOUNDATION_EXPORT ACCombinedMessageUpdate *new_ACCombinedMessageUpdate_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACCombinedMessageUpdate)

@compatibility_alias ImActorCoreModulesUpdatesInternalCombinedMessageUpdate ACCombinedMessageUpdate;

@interface ACCombinedMessageUpdate_CombinedMessage : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid
                     withInt:(jint)sender
                    withLong:(jlong)date
            withARApiMessage:(ARApiMessage *)message;

- (jlong)getDate;

- (ARApiMessage *)getMessage;

- (jlong)getRid;

- (jint)getSender;

@end

J2OBJC_EMPTY_STATIC_INIT(ACCombinedMessageUpdate_CombinedMessage)

FOUNDATION_EXPORT void ACCombinedMessageUpdate_CombinedMessage_initWithLong_withInt_withLong_withARApiMessage_(ACCombinedMessageUpdate_CombinedMessage *self, jlong rid, jint sender, jlong date, ARApiMessage *message);

FOUNDATION_EXPORT ACCombinedMessageUpdate_CombinedMessage *new_ACCombinedMessageUpdate_CombinedMessage_initWithLong_withInt_withLong_withARApiMessage_(jlong rid, jint sender, jlong date, ARApiMessage *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACCombinedMessageUpdate_CombinedMessage)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesInternalCombinedMessageUpdate_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/OwnReadActor.java
//

#ifndef _ImActorCoreModulesInternalMessagesOwnReadActor_H_
#define _ImActorCoreModulesInternalMessagesOwnReadActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/utils/ModuleActor.h>

@class ACMessage;
@class ACPeer;
@protocol ACModuleContext;

@interface ACOwnReadActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onDifferenceEnd;

- (void)onDifferenceStart;

- (void)onInMessageWithACPeer:(ACPeer *)peer
                withACMessage:(ACMessage *)message;

- (void)onMessageReadWithACPeer:(ACPeer *)peer
                       withLong:(jlong)sortingDate;

- (void)onMessageReadByMeWithACPeer:(ACPeer *)peer
                           withLong:(jlong)sortingDate;

- (void)onOutMessageWithACPeer:(ACPeer *)peer
                      withLong:(jlong)sortDate;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor)

FOUNDATION_EXPORT void ACOwnReadActor_initWithACModuleContext_(ACOwnReadActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACOwnReadActor *new_ACOwnReadActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor)

@compatibility_alias ImActorCoreModulesInternalMessagesOwnReadActor ACOwnReadActor;

@interface ACOwnReadActor_MessageReadByMe : NSObject {
 @public
  ACPeer *peer_;
  jlong sortDate_;
}

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)sortDate;

- (ACPeer *)getPeer;

- (jlong)getSortDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor_MessageReadByMe)

J2OBJC_FIELD_SETTER(ACOwnReadActor_MessageReadByMe, peer_, ACPeer *)

FOUNDATION_EXPORT void ACOwnReadActor_MessageReadByMe_initWithACPeer_withLong_(ACOwnReadActor_MessageReadByMe *self, ACPeer *peer, jlong sortDate);

FOUNDATION_EXPORT ACOwnReadActor_MessageReadByMe *new_ACOwnReadActor_MessageReadByMe_initWithACPeer_withLong_(ACPeer *peer, jlong sortDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor_MessageReadByMe)

@interface ACOwnReadActor_MessageRead : NSObject {
 @public
  ACPeer *peer_;
  jlong sortingDate_;
}

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)sortingDate;

- (ACPeer *)getPeer;

- (jlong)getSortingDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor_MessageRead)

J2OBJC_FIELD_SETTER(ACOwnReadActor_MessageRead, peer_, ACPeer *)

FOUNDATION_EXPORT void ACOwnReadActor_MessageRead_initWithACPeer_withLong_(ACOwnReadActor_MessageRead *self, ACPeer *peer, jlong sortingDate);

FOUNDATION_EXPORT ACOwnReadActor_MessageRead *new_ACOwnReadActor_MessageRead_initWithACPeer_withLong_(ACPeer *peer, jlong sortingDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor_MessageRead)

@interface ACOwnReadActor_InMessage : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                 withACMessage:(ACMessage *)message;

- (ACMessage *)getMessage;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor_InMessage)

FOUNDATION_EXPORT void ACOwnReadActor_InMessage_initWithACPeer_withACMessage_(ACOwnReadActor_InMessage *self, ACPeer *peer, ACMessage *message);

FOUNDATION_EXPORT ACOwnReadActor_InMessage *new_ACOwnReadActor_InMessage_initWithACPeer_withACMessage_(ACPeer *peer, ACMessage *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor_InMessage)

@interface ACOwnReadActor_OutMessage : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)sortDate;

- (ACPeer *)getPeer;

- (jlong)getSortDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor_OutMessage)

FOUNDATION_EXPORT void ACOwnReadActor_OutMessage_initWithACPeer_withLong_(ACOwnReadActor_OutMessage *self, ACPeer *peer, jlong sortDate);

FOUNDATION_EXPORT ACOwnReadActor_OutMessage *new_ACOwnReadActor_OutMessage_initWithACPeer_withLong_(ACPeer *peer, jlong sortDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor_OutMessage)

@interface ACOwnReadActor_StartGetDifference : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor_StartGetDifference)

FOUNDATION_EXPORT void ACOwnReadActor_StartGetDifference_init(ACOwnReadActor_StartGetDifference *self);

FOUNDATION_EXPORT ACOwnReadActor_StartGetDifference *new_ACOwnReadActor_StartGetDifference_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor_StartGetDifference)

@interface ACOwnReadActor_StopGetDifference : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnReadActor_StopGetDifference)

FOUNDATION_EXPORT void ACOwnReadActor_StopGetDifference_init(ACOwnReadActor_StopGetDifference *self);

FOUNDATION_EXPORT ACOwnReadActor_StopGetDifference *new_ACOwnReadActor_StopGetDifference_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnReadActor_StopGetDifference)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesOwnReadActor_H_
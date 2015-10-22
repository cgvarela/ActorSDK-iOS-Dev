//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/CursorReceiverActor.java
//

#ifndef _ImActorCoreModulesInternalMessagesCursorReceiverActor_H_
#define _ImActorCoreModulesInternalMessagesCursorReceiverActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/internal/messages/CursorActor.h>

@class ACPeer;
@protocol ACModuleContext;

@interface ACCursorReceiverActor : ACCursorActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onReceiveWithId:(id)message;

#pragma mark Protected

- (void)performWithACPeer:(ACPeer *)peer
                 withLong:(jlong)date;

@end

J2OBJC_EMPTY_STATIC_INIT(ACCursorReceiverActor)

FOUNDATION_EXPORT void ACCursorReceiverActor_initWithACModuleContext_(ACCursorReceiverActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACCursorReceiverActor *new_ACCursorReceiverActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACCursorReceiverActor)

@compatibility_alias ImActorCoreModulesInternalMessagesCursorReceiverActor ACCursorReceiverActor;

@interface ACCursorReceiverActor_MarkReceived : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)date;

- (jlong)getDate;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACCursorReceiverActor_MarkReceived)

FOUNDATION_EXPORT void ACCursorReceiverActor_MarkReceived_initWithACPeer_withLong_(ACCursorReceiverActor_MarkReceived *self, ACPeer *peer, jlong date);

FOUNDATION_EXPORT ACCursorReceiverActor_MarkReceived *new_ACCursorReceiverActor_MarkReceived_initWithACPeer_withLong_(ACPeer *peer, jlong date) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACCursorReceiverActor_MarkReceived)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesCursorReceiverActor_H_
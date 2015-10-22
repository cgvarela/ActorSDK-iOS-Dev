//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/MessageDeleteActor.java
//

#ifndef _ImActorCoreModulesInternalMessagesMessageDeleteActor_H_
#define _ImActorCoreModulesInternalMessagesMessageDeleteActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/utils/ModuleActor.h"

@class ACPeer;
@class IOSLongArray;
@protocol ACModuleContext;
@protocol JavaUtilList;

@interface ACMessageDeleteActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onDeleteMessageWithACPeer:(ACPeer *)peer
                 withJavaUtilList:(id<JavaUtilList>)rids;

- (void)onReceiveWithId:(id)message;

- (void)performDeleteWithACPeer:(ACPeer *)peer
               withJavaUtilList:(id<JavaUtilList>)rids;

- (void)preStart;

#pragma mark Package-Private

- (void)saveStorage;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessageDeleteActor)

FOUNDATION_EXPORT void ACMessageDeleteActor_initWithACModuleContext_(ACMessageDeleteActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACMessageDeleteActor *new_ACMessageDeleteActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessageDeleteActor)

@compatibility_alias ImActorCoreModulesInternalMessagesMessageDeleteActor ACMessageDeleteActor;

@interface ACMessageDeleteActor_DeleteMessage : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                 withLongArray:(IOSLongArray *)rids;

- (ACPeer *)getPeer;

- (IOSLongArray *)getRids;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessageDeleteActor_DeleteMessage)

FOUNDATION_EXPORT void ACMessageDeleteActor_DeleteMessage_initWithACPeer_withLongArray_(ACMessageDeleteActor_DeleteMessage *self, ACPeer *peer, IOSLongArray *rids);

FOUNDATION_EXPORT ACMessageDeleteActor_DeleteMessage *new_ACMessageDeleteActor_DeleteMessage_initWithACPeer_withLongArray_(ACPeer *peer, IOSLongArray *rids) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessageDeleteActor_DeleteMessage)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesMessageDeleteActor_H_

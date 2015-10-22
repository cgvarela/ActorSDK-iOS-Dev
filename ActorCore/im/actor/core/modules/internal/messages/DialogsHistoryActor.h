//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsHistoryActor.java
//

#ifndef _ImActorCoreModulesInternalMessagesDialogsHistoryActor_H_
#define _ImActorCoreModulesInternalMessagesDialogsHistoryActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/utils/ModuleActor.h>

@protocol ACModuleContext;

@interface ACDialogsHistoryActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsHistoryActor)

FOUNDATION_EXPORT void ACDialogsHistoryActor_initWithACModuleContext_(ACDialogsHistoryActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACDialogsHistoryActor *new_ACDialogsHistoryActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsHistoryActor)

@compatibility_alias ImActorCoreModulesInternalMessagesDialogsHistoryActor ACDialogsHistoryActor;

@interface ACDialogsHistoryActor_LoadMore : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsHistoryActor_LoadMore)

FOUNDATION_EXPORT void ACDialogsHistoryActor_LoadMore_init(ACDialogsHistoryActor_LoadMore *self);

FOUNDATION_EXPORT ACDialogsHistoryActor_LoadMore *new_ACDialogsHistoryActor_LoadMore_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsHistoryActor_LoadMore)

@interface ACDialogsHistoryActor_LoadedMore : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)loaded
                   withLong:(jlong)maxLoadedDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsHistoryActor_LoadedMore)

FOUNDATION_EXPORT void ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_(ACDialogsHistoryActor_LoadedMore *self, jint loaded, jlong maxLoadedDate);

FOUNDATION_EXPORT ACDialogsHistoryActor_LoadedMore *new_ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_(jint loaded, jlong maxLoadedDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsHistoryActor_LoadedMore)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesDialogsHistoryActor_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/state/ListsStatesActor.java
//

#ifndef _ImActorCoreModulesInternalStateListsStatesActor_H_
#define _ImActorCoreModulesInternalStateListsStatesActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/utils/ModuleActor.h>

@class ARApiAppCounters;
@protocol ACModuleContext;

@interface ACListsStatesActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onBookImported;

- (void)onContactsChangedWithBoolean:(jboolean)isEmpty;

- (void)onContactsLoaded;

- (void)onCounterChangedWithARApiAppCounters:(ARApiAppCounters *)counters;

- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty;

- (void)onDialogsLoaded;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor)

FOUNDATION_EXPORT void ACListsStatesActor_initWithACModuleContext_(ACListsStatesActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACListsStatesActor *new_ACListsStatesActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor)

@compatibility_alias ImActorCoreModulesInternalStateListsStatesActor ACListsStatesActor;

@interface ACListsStatesActor_OnAppCounterChanged : NSObject

#pragma mark Public

- (instancetype)initWithARApiAppCounters:(ARApiAppCounters *)counters;

- (ARApiAppCounters *)getCounters;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor_OnAppCounterChanged)

FOUNDATION_EXPORT void ACListsStatesActor_OnAppCounterChanged_initWithARApiAppCounters_(ACListsStatesActor_OnAppCounterChanged *self, ARApiAppCounters *counters);

FOUNDATION_EXPORT ACListsStatesActor_OnAppCounterChanged *new_ACListsStatesActor_OnAppCounterChanged_initWithARApiAppCounters_(ARApiAppCounters *counters) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor_OnAppCounterChanged)

@interface ACListsStatesActor_OnBookImported : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor_OnBookImported)

FOUNDATION_EXPORT void ACListsStatesActor_OnBookImported_init(ACListsStatesActor_OnBookImported *self);

FOUNDATION_EXPORT ACListsStatesActor_OnBookImported *new_ACListsStatesActor_OnBookImported_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor_OnBookImported)

@interface ACListsStatesActor_OnContactsLoaded : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor_OnContactsLoaded)

FOUNDATION_EXPORT void ACListsStatesActor_OnContactsLoaded_init(ACListsStatesActor_OnContactsLoaded *self);

FOUNDATION_EXPORT ACListsStatesActor_OnContactsLoaded *new_ACListsStatesActor_OnContactsLoaded_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor_OnContactsLoaded)

@interface ACListsStatesActor_OnDialogsLoaded : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor_OnDialogsLoaded)

FOUNDATION_EXPORT void ACListsStatesActor_OnDialogsLoaded_init(ACListsStatesActor_OnDialogsLoaded *self);

FOUNDATION_EXPORT ACListsStatesActor_OnDialogsLoaded *new_ACListsStatesActor_OnDialogsLoaded_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor_OnDialogsLoaded)

@interface ACListsStatesActor_OnContactsChanged : NSObject

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)isEmpty;

- (jboolean)isEmpty;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor_OnContactsChanged)

FOUNDATION_EXPORT void ACListsStatesActor_OnContactsChanged_initWithBoolean_(ACListsStatesActor_OnContactsChanged *self, jboolean isEmpty);

FOUNDATION_EXPORT ACListsStatesActor_OnContactsChanged *new_ACListsStatesActor_OnContactsChanged_initWithBoolean_(jboolean isEmpty) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor_OnContactsChanged)

@interface ACListsStatesActor_OnDialogsChanged : NSObject

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)isEmpty;

- (jboolean)isEmpty;

@end

J2OBJC_EMPTY_STATIC_INIT(ACListsStatesActor_OnDialogsChanged)

FOUNDATION_EXPORT void ACListsStatesActor_OnDialogsChanged_initWithBoolean_(ACListsStatesActor_OnDialogsChanged *self, jboolean isEmpty);

FOUNDATION_EXPORT ACListsStatesActor_OnDialogsChanged *new_ACListsStatesActor_OnDialogsChanged_initWithBoolean_(jboolean isEmpty) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACListsStatesActor_OnDialogsChanged)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalStateListsStatesActor_H_
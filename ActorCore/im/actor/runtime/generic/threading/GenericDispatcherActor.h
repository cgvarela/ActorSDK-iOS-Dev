//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherActor.java
//

#ifndef _ImActorRuntimeGenericThreadingGenericDispatcherActor_H_
#define _ImActorRuntimeGenericThreadingGenericDispatcherActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/actors/mailbox/ActorDispatcher.h>

@class ARActorSystem;
@class ARThreadPriorityEnum;

/*!
 @brief Basic ActorDispatcher backed by ThreadPoolDispatcher
 */
@interface ARGenericDispatcherActor : ARActorDispatcher

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
               withARActorSystem:(ARActorSystem *)actorSystem
                         withInt:(jint)threadsCount
        withARThreadPriorityEnum:(ARThreadPriorityEnum *)priority;

@end

J2OBJC_EMPTY_STATIC_INIT(ARGenericDispatcherActor)

FOUNDATION_EXPORT void ARGenericDispatcherActor_initWithNSString_withARActorSystem_withInt_withARThreadPriorityEnum_(ARGenericDispatcherActor *self, NSString *name, ARActorSystem *actorSystem, jint threadsCount, ARThreadPriorityEnum *priority);

FOUNDATION_EXPORT ARGenericDispatcherActor *new_ARGenericDispatcherActor_initWithNSString_withARActorSystem_withInt_withARThreadPriorityEnum_(NSString *name, ARActorSystem *actorSystem, jint threadsCount, ARThreadPriorityEnum *priority) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARGenericDispatcherActor)

@compatibility_alias ImActorRuntimeGenericThreadingGenericDispatcherActor ARGenericDispatcherActor;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericThreadingGenericDispatcherActor_H_
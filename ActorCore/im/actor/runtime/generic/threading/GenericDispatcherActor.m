//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherActor.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/ThreadPriority.h"
#include "im/actor/runtime/actors/dispatch/Dispatch.h"
#include "im/actor/runtime/actors/mailbox/ActorDispatcher.h"
#include "im/actor/runtime/actors/mailbox/Envelope.h"
#include "im/actor/runtime/actors/mailbox/MailboxesQueue.h"
#include "im/actor/runtime/generic/threading/GenericDispatcherActor.h"
#include "im/actor/runtime/generic/threading/GenericDispatcherThreads.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARGenericDispatcherActor_$1 : NSObject < ImActorRuntimeActorsDispatchDispatch > {
 @public
  ARGenericDispatcherActor *this$0_;
}

- (void)dispatchMessageWithId:(AREnvelope *)message;

- (instancetype)initWithARGenericDispatcherActor:(ARGenericDispatcherActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ARGenericDispatcherActor_$1)

J2OBJC_FIELD_SETTER(ARGenericDispatcherActor_$1, this$0_, ARGenericDispatcherActor *)

__attribute__((unused)) static void ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(ARGenericDispatcherActor_$1 *self, ARGenericDispatcherActor *outer$);

__attribute__((unused)) static ARGenericDispatcherActor_$1 *new_ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(ARGenericDispatcherActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARGenericDispatcherActor_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherActor.java"


#line 17
@implementation ARGenericDispatcherActor

- (instancetype)initWithNSString:(NSString *)name
               withARActorSystem:(ARActorSystem *)actorSystem
                         withInt:(jint)threadsCount
        withARThreadPriorityEnum:(ARThreadPriorityEnum *)priority {
  ARGenericDispatcherActor_initWithNSString_withARActorSystem_withInt_withARThreadPriorityEnum_(self, name, actorSystem, threadsCount, priority);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withARActorSystem:withInt:withARThreadPriorityEnum:", "GenericDispatcherActor", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARGenericDispatcherActor = { 2, "GenericDispatcherActor", "im.actor.runtime.generic.threading", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARGenericDispatcherActor;
}

@end


#line 19
void ARGenericDispatcherActor_initWithNSString_withARActorSystem_withInt_withARThreadPriorityEnum_(ARGenericDispatcherActor *self, NSString *name, ARActorSystem *actorSystem, jint threadsCount, ARThreadPriorityEnum *priority) {
  (void) ARActorDispatcher_initWithNSString_withARActorSystem_(self, name, actorSystem);
  [self initDispatcherWithImActorRuntimeActorsDispatchAbstractDispatcher:new_ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_([self getName], threadsCount, priority, new_ARMailboxesQueue_init(), new_ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(self),
#line 27
  true)];
}


#line 19
ARGenericDispatcherActor *new_ARGenericDispatcherActor_initWithNSString_withARActorSystem_withInt_withARThreadPriorityEnum_(NSString *name, ARActorSystem *actorSystem, jint threadsCount, ARThreadPriorityEnum *priority) {
  ARGenericDispatcherActor *self = [ARGenericDispatcherActor alloc];
  ARGenericDispatcherActor_initWithNSString_withARActorSystem_withInt_withARThreadPriorityEnum_(self, name, actorSystem, threadsCount, priority);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericDispatcherActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherActor.java"

@implementation ARGenericDispatcherActor_$1


#line 24
- (void)dispatchMessageWithId:(AREnvelope *)message {
  [this$0_ processEnvelopeWithAREnvelope:message];
}

- (instancetype)initWithARGenericDispatcherActor:(ARGenericDispatcherActor *)outer$ {
  ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "dispatchMessageWithId:", "dispatchMessage", "V", 0x1, NULL, NULL },
    { "initWithARGenericDispatcherActor:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.runtime.generic.threading.GenericDispatcherActor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARGenericDispatcherActor", "initWithNSString:withARActorSystem:withInt:withARThreadPriorityEnum:" };
  static const J2ObjcClassInfo _ARGenericDispatcherActor_$1 = { 2, "", "im.actor.runtime.generic.threading", "GenericDispatcherActor", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/dispatch/Dispatch<Lim/actor/runtime/actors/mailbox/Envelope;>;" };
  return &_ARGenericDispatcherActor_$1;
}

@end

void ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(ARGenericDispatcherActor_$1 *self, ARGenericDispatcherActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ARGenericDispatcherActor_$1 *new_ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(ARGenericDispatcherActor *outer$) {
  ARGenericDispatcherActor_$1 *self = [ARGenericDispatcherActor_$1 alloc];
  ARGenericDispatcherActor_$1_initWithARGenericDispatcherActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericDispatcherActor_$1)

#pragma clang diagnostic pop

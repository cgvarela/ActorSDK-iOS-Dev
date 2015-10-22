//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerCompat.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/ActorCreator.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/Props.h"
#include "im/actor/runtime/threading/AbsTimerCompat.h"
#include "im/actor/runtime/threading/TimerActor.h"
#include "im/actor/runtime/threading/TimerCompat.h"
#include "java/lang/Runnable.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static ARActorRef *ARTimerCompat_TIMER_ACTOR_;
J2OBJC_STATIC_FIELD_GETTER(ARTimerCompat, TIMER_ACTOR_, ARActorRef *)

@interface ARTimerCompat_$1 : NSObject < ARActorCreator >

- (ARTimerActor *)create;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ARTimerCompat_$1)

__attribute__((unused)) static void ARTimerCompat_$1_init(ARTimerCompat_$1 *self);

__attribute__((unused)) static ARTimerCompat_$1 *new_ARTimerCompat_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARTimerCompat_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerCompat.java"

J2OBJC_INITIALIZED_DEFN(ARTimerCompat)


#line 13
@implementation ARTimerCompat


#line 22
- (instancetype)initWithJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  ARTimerCompat_initWithJavaLangRunnable_(self, runnable);
  return self;
}

- (void)cancel {
  @synchronized(self) {
    
#line 28
    [((ARActorRef *) nil_chk(ARTimerCompat_TIMER_ACTOR_)) sendWithId:new_ARTimerActor_Cancel_initWithARTimerCompat_(self)];
  }
}


#line 32
- (void)scheduleWithLong:(jlong)delay {
  @synchronized(self) {
    
#line 33
    [((ARActorRef *) nil_chk(ARTimerCompat_TIMER_ACTOR_)) sendWithId:new_ARTimerActor_Schedule_initWithARTimerCompat_withLong_(self, delay)];
  }
}

+ (void)initialize {
  if (self == [ARTimerCompat class]) {
    ARTimerCompat_TIMER_ACTOR_ =
#line 15
    [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:ARProps_createWithIOSClass_withARActorCreator_(ARTimerActor_class_(), new_ARTimerCompat_$1_init()) withNSString:
#line 20
    @"actor/global_timer"];
    J2OBJC_SET_INITIALIZED(ARTimerCompat)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangRunnable:", "TimerCompat", NULL, 0x1, NULL, NULL },
    { "cancel", NULL, "V", 0x21, NULL, NULL },
    { "scheduleWithLong:", "schedule", "V", 0x21, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TIMER_ACTOR_", NULL, 0x1a, "Lim.actor.runtime.actors.ActorRef;", &ARTimerCompat_TIMER_ACTOR_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARTimerCompat = { 2, "TimerCompat", "im.actor.runtime.threading", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARTimerCompat;
}

@end


#line 22
void ARTimerCompat_initWithJavaLangRunnable_(ARTimerCompat *self, id<JavaLangRunnable> runnable) {
  (void) ARAbsTimerCompat_initWithJavaLangRunnable_(self, runnable);
}


#line 22
ARTimerCompat *new_ARTimerCompat_initWithJavaLangRunnable_(id<JavaLangRunnable> runnable) {
  ARTimerCompat *self = [ARTimerCompat alloc];
  ARTimerCompat_initWithJavaLangRunnable_(self, runnable);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARTimerCompat)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerCompat.java"

@implementation ARTimerCompat_$1


#line 17
- (ARTimerActor *)create {
  return new_ARTimerActor_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARTimerCompat_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.runtime.threading.TimerActor;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARTimerCompat_$1 = { 2, "", "im.actor.runtime.threading", "TimerCompat", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/runtime/threading/TimerActor;>;" };
  return &_ARTimerCompat_$1;
}

@end

void ARTimerCompat_$1_init(ARTimerCompat_$1 *self) {
  (void) NSObject_init(self);
}

ARTimerCompat_$1 *new_ARTimerCompat_$1_init() {
  ARTimerCompat_$1 *self = [ARTimerCompat_$1 alloc];
  ARTimerCompat_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARTimerCompat_$1)

#pragma clang diagnostic pop

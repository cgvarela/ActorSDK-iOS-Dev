//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerActor.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/threading/TimerActor.h"
#include "im/actor/runtime/threading/TimerCompat.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARTimerActor_Cancel () {
 @public
  ARTimerCompat *timerCompat_;
}

@end

J2OBJC_FIELD_SETTER(ARTimerActor_Cancel, timerCompat_, ARTimerCompat *)

@interface ARTimerActor_Schedule () {
 @public
  ARTimerCompat *timerCompat_;
  jlong delay_;
}

@end

J2OBJC_FIELD_SETTER(ARTimerActor_Schedule, timerCompat_, ARTimerCompat *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerActor.java"


#line 9
@implementation ARTimerActor


#line 12
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ARTimerActor_Schedule class]]) {
    [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:[((ARTimerActor_Schedule *) nil_chk(((ARTimerActor_Schedule *) check_class_cast(message, [ARTimerActor_Schedule class])))) getTimerCompat] withLong:[((ARTimerActor_Schedule *) nil_chk(((ARTimerActor_Schedule *) check_class_cast(message, [ARTimerActor_Schedule class])))) getDelay]];
  }
  else
#line 15
  if ([message isKindOfClass:[ARTimerActor_Cancel class]]) {
    [((ARActorRef *) nil_chk([self self__])) cancelMessageWithId:[((ARTimerActor_Cancel *) nil_chk(((ARTimerActor_Cancel *) check_class_cast(message, [ARTimerActor_Cancel class])))) getTimerCompat]];
  }
  else
#line 17
  if ([message isKindOfClass:[ARTimerCompat class]]) {
    [((ARTimerCompat *) nil_chk(((ARTimerCompat *) check_class_cast(message, [ARTimerCompat class])))) invokeRun];
  }
  else {
    
#line 20
    [self dropWithId:message];
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARTimerActor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lim.actor.runtime.threading.TimerActor$Cancel;", "Lim.actor.runtime.threading.TimerActor$Schedule;"};
  static const J2ObjcClassInfo _ARTimerActor = { 2, "TimerActor", "im.actor.runtime.threading", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_ARTimerActor;
}

@end

void ARTimerActor_init(ARTimerActor *self) {
  (void) ARActor_init(self);
}

ARTimerActor *new_ARTimerActor_init() {
  ARTimerActor *self = [ARTimerActor alloc];
  ARTimerActor_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARTimerActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerActor.java"


#line 24
@implementation ARTimerActor_Cancel


#line 27
- (instancetype)initWithARTimerCompat:(ARTimerCompat *)timerCompat {
  ARTimerActor_Cancel_initWithARTimerCompat_(self, timerCompat);
  return self;
}


#line 31
- (ARTimerCompat *)getTimerCompat {
  return timerCompat_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARTimerCompat:", "Cancel", NULL, 0x1, NULL, NULL },
    { "getTimerCompat", NULL, "Lim.actor.runtime.threading.TimerCompat;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "timerCompat_", NULL, 0x2, "Lim.actor.runtime.threading.TimerCompat;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARTimerActor_Cancel = { 2, "Cancel", "im.actor.runtime.threading", "TimerActor", 0x9, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARTimerActor_Cancel;
}

@end


#line 27
void ARTimerActor_Cancel_initWithARTimerCompat_(ARTimerActor_Cancel *self, ARTimerCompat *timerCompat) {
  (void) NSObject_init(self);
  
#line 28
  self->timerCompat_ = timerCompat;
}


#line 27
ARTimerActor_Cancel *new_ARTimerActor_Cancel_initWithARTimerCompat_(ARTimerCompat *timerCompat) {
  ARTimerActor_Cancel *self = [ARTimerActor_Cancel alloc];
  ARTimerActor_Cancel_initWithARTimerCompat_(self, timerCompat);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARTimerActor_Cancel)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/TimerActor.java"


#line 36
@implementation ARTimerActor_Schedule


#line 40
- (instancetype)initWithARTimerCompat:(ARTimerCompat *)timerCompat
                             withLong:(jlong)delay {
  ARTimerActor_Schedule_initWithARTimerCompat_withLong_(self, timerCompat, delay);
  return self;
}


#line 45
- (jlong)getDelay {
  return delay_;
}

- (ARTimerCompat *)getTimerCompat {
  return timerCompat_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARTimerCompat:withLong:", "Schedule", NULL, 0x1, NULL, NULL },
    { "getDelay", NULL, "J", 0x1, NULL, NULL },
    { "getTimerCompat", NULL, "Lim.actor.runtime.threading.TimerCompat;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "timerCompat_", NULL, 0x2, "Lim.actor.runtime.threading.TimerCompat;", NULL, NULL, .constantValue.asLong = 0 },
    { "delay_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARTimerActor_Schedule = { 2, "Schedule", "im.actor.runtime.threading", "TimerActor", 0x9, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARTimerActor_Schedule;
}

@end


#line 40
void ARTimerActor_Schedule_initWithARTimerCompat_withLong_(ARTimerActor_Schedule *self, ARTimerCompat *timerCompat, jlong delay) {
  (void) NSObject_init(self);
  
#line 41
  self->timerCompat_ = timerCompat;
  self->delay_ = delay;
}


#line 40
ARTimerActor_Schedule *new_ARTimerActor_Schedule_initWithARTimerCompat_withLong_(ARTimerCompat *timerCompat, jlong delay) {
  ARTimerActor_Schedule *self = [ARTimerActor_Schedule alloc];
  ARTimerActor_Schedule_initWithARTimerCompat_withLong_(self, timerCompat, delay);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARTimerActor_Schedule)

#pragma clang diagnostic pop

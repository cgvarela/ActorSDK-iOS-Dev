//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/tools/BounceFilterActor.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorTime.h"
#include "im/actor/runtime/actors/tools/BounceFilterActor.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ImActorRuntimeActorsToolsBounceFilterActor_BOUNCE_DELAY 300LL

@interface ImActorRuntimeActorsToolsBounceFilterActor () {
 @public
  jlong lastMessage_;
  ImActorRuntimeActorsToolsBounceFilterActor_Message *message_;
}

- (void)onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message:(ImActorRuntimeActorsToolsBounceFilterActor_Message *)message;

- (void)onFlush;

@end

J2OBJC_FIELD_SETTER(ImActorRuntimeActorsToolsBounceFilterActor, message_, ImActorRuntimeActorsToolsBounceFilterActor_Message *)

J2OBJC_STATIC_FIELD_GETTER(ImActorRuntimeActorsToolsBounceFilterActor, BOUNCE_DELAY, jlong)

__attribute__((unused)) static void ImActorRuntimeActorsToolsBounceFilterActor_onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message_(ImActorRuntimeActorsToolsBounceFilterActor *self, ImActorRuntimeActorsToolsBounceFilterActor_Message *message);

__attribute__((unused)) static void ImActorRuntimeActorsToolsBounceFilterActor_onFlush(ImActorRuntimeActorsToolsBounceFilterActor *self);

@interface ImActorRuntimeActorsToolsBounceFilterActor_Message () {
 @public
  id object_;
  ARActorRef *actorRef_;
}

@end

J2OBJC_FIELD_SETTER(ImActorRuntimeActorsToolsBounceFilterActor_Message, object_, id)
J2OBJC_FIELD_SETTER(ImActorRuntimeActorsToolsBounceFilterActor_Message, actorRef_, ARActorRef *)

@interface ImActorRuntimeActorsToolsBounceFilterActor_Flush : NSObject

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorRuntimeActorsToolsBounceFilterActor_Flush)

__attribute__((unused)) static void ImActorRuntimeActorsToolsBounceFilterActor_Flush_init(ImActorRuntimeActorsToolsBounceFilterActor_Flush *self);

__attribute__((unused)) static ImActorRuntimeActorsToolsBounceFilterActor_Flush *new_ImActorRuntimeActorsToolsBounceFilterActor_Flush_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorRuntimeActorsToolsBounceFilterActor_Flush)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/tools/BounceFilterActor.java"


#line 7
@implementation ImActorRuntimeActorsToolsBounceFilterActor


#line 14
- (void)onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message:(ImActorRuntimeActorsToolsBounceFilterActor_Message *)message {
  ImActorRuntimeActorsToolsBounceFilterActor_onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message_(self, message);
}


#line 37
- (void)onFlush {
  ImActorRuntimeActorsToolsBounceFilterActor_onFlush(self);
}


#line 45
- (jboolean)isOverrideWithImActorRuntimeActorsToolsBounceFilterActor_Message:(ImActorRuntimeActorsToolsBounceFilterActor_Message *)current
                      withImActorRuntimeActorsToolsBounceFilterActor_Message:(ImActorRuntimeActorsToolsBounceFilterActor_Message *)next {
  return true;
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorRuntimeActorsToolsBounceFilterActor_Message class]]) {
    ImActorRuntimeActorsToolsBounceFilterActor_onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message_(self, (ImActorRuntimeActorsToolsBounceFilterActor_Message *) check_class_cast(message, [ImActorRuntimeActorsToolsBounceFilterActor_Message class]));
  }
  else
#line 53
  if ([message isKindOfClass:[ImActorRuntimeActorsToolsBounceFilterActor_Flush class]]) {
    ImActorRuntimeActorsToolsBounceFilterActor_onFlush(self);
  }
  else {
    
#line 56
    [self dropWithId:message];
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ImActorRuntimeActorsToolsBounceFilterActor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message:", "onMessage", "V", 0x2, NULL, NULL },
    { "onFlush", NULL, "V", 0x2, NULL, NULL },
    { "isOverrideWithImActorRuntimeActorsToolsBounceFilterActor_Message:withImActorRuntimeActorsToolsBounceFilterActor_Message:", "isOverride", "Z", 0x4, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BOUNCE_DELAY", "BOUNCE_DELAY", 0x1a, "J", NULL, NULL, .constantValue.asLong = ImActorRuntimeActorsToolsBounceFilterActor_BOUNCE_DELAY },
    { "lastMessage_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "message_", NULL, 0x2, "Lim.actor.runtime.actors.tools.BounceFilterActor$Message;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.runtime.actors.tools.BounceFilterActor$Message;", "Lim.actor.runtime.actors.tools.BounceFilterActor$Flush;"};
  static const J2ObjcClassInfo _ImActorRuntimeActorsToolsBounceFilterActor = { 2, "BounceFilterActor", "im.actor.runtime.actors.tools", NULL, 0x1, 5, methods, 3, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_ImActorRuntimeActorsToolsBounceFilterActor;
}

@end


#line 14
void ImActorRuntimeActorsToolsBounceFilterActor_onMessageWithImActorRuntimeActorsToolsBounceFilterActor_Message_(ImActorRuntimeActorsToolsBounceFilterActor *self, ImActorRuntimeActorsToolsBounceFilterActor_Message *message) {
  jlong time = ARActorTime_currentTime();
  jlong delta = time - self->lastMessage_;
  
#line 18
  if (delta > ImActorRuntimeActorsToolsBounceFilterActor_BOUNCE_DELAY) {
    self->lastMessage_ = time;
    if (self->message_ == nil || [self isOverrideWithImActorRuntimeActorsToolsBounceFilterActor_Message:self->message_ withImActorRuntimeActorsToolsBounceFilterActor_Message:message]) {
      
#line 22
      [((ARActorRef *) nil_chk(((ImActorRuntimeActorsToolsBounceFilterActor_Message *) nil_chk(message))->actorRef_)) sendWithId:message->object_];
    }
    else {
      [((ARActorRef *) nil_chk(self->message_->actorRef_)) sendWithId:self->message_->object_];
    }
    self->message_ = nil;
  }
  else {
    if (self->message_ == nil || [self isOverrideWithImActorRuntimeActorsToolsBounceFilterActor_Message:self->message_ withImActorRuntimeActorsToolsBounceFilterActor_Message:message]) {
      self->message_ = message;
      [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:new_ImActorRuntimeActorsToolsBounceFilterActor_Flush_init() withLong:ImActorRuntimeActorsToolsBounceFilterActor_BOUNCE_DELAY - delta];
    }
  }
}


#line 37
void ImActorRuntimeActorsToolsBounceFilterActor_onFlush(ImActorRuntimeActorsToolsBounceFilterActor *self) {
  if (self->message_ != nil) {
    [((ARActorRef *) nil_chk(self->message_->actorRef_)) sendWithId:self->message_->object_];
    self->message_ = nil;
    self->lastMessage_ = ARActorTime_currentTime();
  }
}

void ImActorRuntimeActorsToolsBounceFilterActor_init(ImActorRuntimeActorsToolsBounceFilterActor *self) {
  (void) ARActor_init(self);
  self->lastMessage_ =
#line 11
  0;
}

ImActorRuntimeActorsToolsBounceFilterActor *new_ImActorRuntimeActorsToolsBounceFilterActor_init() {
  ImActorRuntimeActorsToolsBounceFilterActor *self = [ImActorRuntimeActorsToolsBounceFilterActor alloc];
  ImActorRuntimeActorsToolsBounceFilterActor_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorRuntimeActorsToolsBounceFilterActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/tools/BounceFilterActor.java"


#line 60
@implementation ImActorRuntimeActorsToolsBounceFilterActor_Message


#line 65
- (instancetype)initWithId:(id)object
            withARActorRef:(ARActorRef *)actorRef {
  ImActorRuntimeActorsToolsBounceFilterActor_Message_initWithId_withARActorRef_(self, object, actorRef);
  return self;
}


#line 70
- (id)getObject {
  return object_;
}

- (ARActorRef *)getActorRef {
  return actorRef_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:withARActorRef:", "Message", NULL, 0x1, NULL, NULL },
    { "getObject", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "getActorRef", NULL, "Lim.actor.runtime.actors.ActorRef;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "object_", NULL, 0x2, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "actorRef_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorRuntimeActorsToolsBounceFilterActor_Message = { 2, "Message", "im.actor.runtime.actors.tools", "BounceFilterActor", 0x9, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorRuntimeActorsToolsBounceFilterActor_Message;
}

@end


#line 65
void ImActorRuntimeActorsToolsBounceFilterActor_Message_initWithId_withARActorRef_(ImActorRuntimeActorsToolsBounceFilterActor_Message *self, id object, ARActorRef *actorRef) {
  (void) NSObject_init(self);
  
#line 66
  self->object_ = object;
  self->actorRef_ = actorRef;
}


#line 65
ImActorRuntimeActorsToolsBounceFilterActor_Message *new_ImActorRuntimeActorsToolsBounceFilterActor_Message_initWithId_withARActorRef_(id object, ARActorRef *actorRef) {
  ImActorRuntimeActorsToolsBounceFilterActor_Message *self = [ImActorRuntimeActorsToolsBounceFilterActor_Message alloc];
  ImActorRuntimeActorsToolsBounceFilterActor_Message_initWithId_withARActorRef_(self, object, actorRef);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorRuntimeActorsToolsBounceFilterActor_Message)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/tools/BounceFilterActor.java"


#line 79
@implementation ImActorRuntimeActorsToolsBounceFilterActor_Flush

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ImActorRuntimeActorsToolsBounceFilterActor_Flush_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _ImActorRuntimeActorsToolsBounceFilterActor_Flush = { 2, "Flush", "im.actor.runtime.actors.tools", "BounceFilterActor", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorRuntimeActorsToolsBounceFilterActor_Flush;
}

@end

void ImActorRuntimeActorsToolsBounceFilterActor_Flush_init(ImActorRuntimeActorsToolsBounceFilterActor_Flush *self) {
  (void) NSObject_init(self);
}

ImActorRuntimeActorsToolsBounceFilterActor_Flush *new_ImActorRuntimeActorsToolsBounceFilterActor_Flush_init() {
  ImActorRuntimeActorsToolsBounceFilterActor_Flush *self = [ImActorRuntimeActorsToolsBounceFilterActor_Flush alloc];
  ImActorRuntimeActorsToolsBounceFilterActor_Flush_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorRuntimeActorsToolsBounceFilterActor_Flush)

#pragma clang diagnostic pop

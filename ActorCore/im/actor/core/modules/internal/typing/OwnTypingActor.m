//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/typing/OwnTypingActor.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/ApiTypingType.h"
#include "im/actor/core/api/rpc/RequestTyping.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/typing/OwnTypingActor.h"
#include "im/actor/core/modules/utils/ModuleActor.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorCreator.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/ActorTime.h"
#include "im/actor/runtime/actors/Props.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ACOwnTypingActor_TYPING_DELAY 3000LL

@interface ACOwnTypingActor () {
 @public
  jlong lastTypingTime_;
}

- (void)onTypingWithACPeer:(ACPeer *)peer;

@end

J2OBJC_STATIC_FIELD_GETTER(ACOwnTypingActor, TYPING_DELAY, jlong)

__attribute__((unused)) static void ACOwnTypingActor_onTypingWithACPeer_(ACOwnTypingActor *self, ACPeer *peer);

@interface ACOwnTypingActor_Typing () {
 @public
  ACPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ACOwnTypingActor_Typing, peer_, ACPeer *)

@interface ACOwnTypingActor_$1 : NSObject < ARActorCreator > {
 @public
  id<ACModuleContext> val$context_;
}

- (ACOwnTypingActor *)create;

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnTypingActor_$1)

J2OBJC_FIELD_SETTER(ACOwnTypingActor_$1, val$context_, id<ACModuleContext>)

__attribute__((unused)) static void ACOwnTypingActor_$1_initWithACModuleContext_(ACOwnTypingActor_$1 *self, id<ACModuleContext> capture$0);

__attribute__((unused)) static ACOwnTypingActor_$1 *new_ACOwnTypingActor_$1_initWithACModuleContext_(id<ACModuleContext> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnTypingActor_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/typing/OwnTypingActor.java"


#line 21
@implementation ACOwnTypingActor

+ (ARActorRef *)getWithACModuleContext:(id<ACModuleContext>)context {
  return ACOwnTypingActor_getWithACModuleContext_(context);
}


#line 37
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)messenger {
  ACOwnTypingActor_initWithACModuleContext_(self, messenger);
  return self;
}

- (void)onTypingWithACPeer:(ACPeer *)peer {
  ACOwnTypingActor_onTypingWithACPeer_(self, peer);
}


#line 59
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ACOwnTypingActor_Typing class]]) {
    ACOwnTypingActor_onTypingWithACPeer_(self, [((ACOwnTypingActor_Typing *) nil_chk(((ACOwnTypingActor_Typing *) check_class_cast(message, [ACOwnTypingActor_Typing class])))) getPeer]);
  }
  else {
    
#line 63
    [self dropWithId:message];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithACModuleContext:", "get", "Lim.actor.runtime.actors.ActorRef;", 0x9, NULL, NULL },
    { "initWithACModuleContext:", "OwnTypingActor", NULL, 0x1, NULL, NULL },
    { "onTypingWithACPeer:", "onTyping", "V", 0x2, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPING_DELAY", "TYPING_DELAY", 0x1a, "J", NULL, NULL, .constantValue.asLong = ACOwnTypingActor_TYPING_DELAY },
    { "lastTypingTime_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.internal.typing.OwnTypingActor$Typing;"};
  static const J2ObjcClassInfo _ACOwnTypingActor = { 2, "OwnTypingActor", "im.actor.core.modules.internal.typing", NULL, 0x1, 4, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ACOwnTypingActor;
}

@end


#line 23
ARActorRef *ACOwnTypingActor_getWithACModuleContext_(id<ACModuleContext> context) {
  ACOwnTypingActor_initialize();
  
#line 24
  return [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:ARProps_createWithIOSClass_withARActorCreator_(ACOwnTypingActor_class_(), new_ACOwnTypingActor_$1_initWithACModuleContext_(context)) withNSString:
#line 29
  @"actor/typing/own"];
}


#line 37
void ACOwnTypingActor_initWithACModuleContext_(ACOwnTypingActor *self, id<ACModuleContext> messenger) {
  (void) ACModuleActor_initWithACModuleContext_(self, messenger);
  self->lastTypingTime_ =
#line 34
  0;
}


#line 37
ACOwnTypingActor *new_ACOwnTypingActor_initWithACModuleContext_(id<ACModuleContext> messenger) {
  ACOwnTypingActor *self = [ACOwnTypingActor alloc];
  ACOwnTypingActor_initWithACModuleContext_(self, messenger);
  return self;
}


#line 42
void ACOwnTypingActor_onTypingWithACPeer_(ACOwnTypingActor *self, ACPeer *peer) {
  if (ARActorTime_currentTime() - self->lastTypingTime_ < ACOwnTypingActor_TYPING_DELAY) {
    return;
  }
  self->lastTypingTime_ = ARActorTime_currentTime();
  
#line 48
  ARApiOutPeer *outPeer = [self buidOutPeerWithACPeer:peer];
  if (outPeer == nil) {
    return;
  }
  
#line 53
  [self requestWithACRequest:new_ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(outPeer, JreLoadStatic(ARApiTypingTypeEnum, TEXT))];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACOwnTypingActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/typing/OwnTypingActor.java"


#line 67
@implementation ACOwnTypingActor_Typing


#line 70
- (instancetype)initWithACPeer:(ACPeer *)peer {
  ACOwnTypingActor_Typing_initWithACPeer_(self, peer);
  return self;
}


#line 74
- (ACPeer *)getPeer {
  return peer_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACPeer:", "Typing", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.entity.Peer;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "peer_", NULL, 0x2, "Lim.actor.core.entity.Peer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACOwnTypingActor_Typing = { 2, "Typing", "im.actor.core.modules.internal.typing", "OwnTypingActor", 0x9, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACOwnTypingActor_Typing;
}

@end


#line 70
void ACOwnTypingActor_Typing_initWithACPeer_(ACOwnTypingActor_Typing *self, ACPeer *peer) {
  (void) NSObject_init(self);
  
#line 71
  self->peer_ = peer;
}


#line 70
ACOwnTypingActor_Typing *new_ACOwnTypingActor_Typing_initWithACPeer_(ACPeer *peer) {
  ACOwnTypingActor_Typing *self = [ACOwnTypingActor_Typing alloc];
  ACOwnTypingActor_Typing_initWithACPeer_(self, peer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACOwnTypingActor_Typing)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/typing/OwnTypingActor.java"

@implementation ACOwnTypingActor_$1


#line 26
- (ACOwnTypingActor *)create {
  return new_ACOwnTypingActor_initWithACModuleContext_(val$context_);
}

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)capture$0 {
  ACOwnTypingActor_$1_initWithACModuleContext_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.core.modules.internal.typing.OwnTypingActor;", 0x1, NULL, NULL },
    { "initWithACModuleContext:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$context_", NULL, 0x1012, "Lim.actor.core.modules.ModuleContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACOwnTypingActor", "getWithACModuleContext:" };
  static const J2ObjcClassInfo _ACOwnTypingActor_$1 = { 2, "", "im.actor.core.modules.internal.typing", "OwnTypingActor", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/core/modules/internal/typing/OwnTypingActor;>;" };
  return &_ACOwnTypingActor_$1;
}

@end

void ACOwnTypingActor_$1_initWithACModuleContext_(ACOwnTypingActor_$1 *self, id<ACModuleContext> capture$0) {
  self->val$context_ = capture$0;
  (void) NSObject_init(self);
}

ACOwnTypingActor_$1 *new_ACOwnTypingActor_$1_initWithACModuleContext_(id<ACModuleContext> capture$0) {
  ACOwnTypingActor_$1 *self = [ACOwnTypingActor_$1 alloc];
  ACOwnTypingActor_$1_initWithACModuleContext_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACOwnTypingActor_$1)

#pragma clang diagnostic pop

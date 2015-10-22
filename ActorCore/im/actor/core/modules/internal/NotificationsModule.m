//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/NotificationsModule.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/ContentDescription.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/Modules.h"
#include "im/actor/core/modules/internal/NotificationsModule.h"
#include "im/actor/core/modules/internal/notifications/NotificationsActor.h"
#include "im/actor/runtime/actors/ActorCreator.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/Props.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACNotificationsModule () {
 @public
  ARActorRef *notificationsActor_;
}

@end

J2OBJC_FIELD_SETTER(ACNotificationsModule, notificationsActor_, ARActorRef *)

@interface ACNotificationsModule_$1 : NSObject < ARActorCreator > {
 @public
  ACNotificationsModule *this$0_;
}

- (ACNotificationsActor *)create;

- (instancetype)initWithACNotificationsModule:(ACNotificationsModule *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACNotificationsModule_$1)

J2OBJC_FIELD_SETTER(ACNotificationsModule_$1, this$0_, ACNotificationsModule *)

__attribute__((unused)) static void ACNotificationsModule_$1_initWithACNotificationsModule_(ACNotificationsModule_$1 *self, ACNotificationsModule *outer$);

__attribute__((unused)) static ACNotificationsModule_$1 *new_ACNotificationsModule_$1_initWithACNotificationsModule_(ACNotificationsModule *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACNotificationsModule_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/NotificationsModule.java"


#line 18
@implementation ACNotificationsModule


#line 22
- (instancetype)initWithACModules:(ACModules *)modules {
  ACNotificationsModule_initWithACModules_(self, modules);
  return self;
}


#line 26
- (void)run {
  self->notificationsActor_ = [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:ARProps_createWithIOSClass_withARActorCreator_(ACNotificationsActor_class_(), new_ACNotificationsModule_$1_initWithACNotificationsModule_(self)) withNSString:
#line 32
  @"actor/notifications"];
}


#line 35
- (void)onOwnReadWithACPeer:(ACPeer *)peer
                   withLong:(jlong)fromDate {
  [((ARActorRef *) nil_chk(notificationsActor_)) sendWithId:new_ACNotificationsActor_MessagesRead_initWithACPeer_withLong_(peer, fromDate)];
}


#line 39
- (void)onInMessageWithACPeer:(ACPeer *)peer
                      withInt:(jint)sender
                     withLong:(jlong)sortDate
     withACContentDescription:(ACContentDescription *)contentDescription
                  withBoolean:(jboolean)hasCurrentUserMention {
  [((ARActorRef *) nil_chk(notificationsActor_)) sendWithId:new_ACNotificationsActor_NewMessage_initWithACPeer_withInt_withLong_withACContentDescription_withBoolean_(peer, sender, sortDate, contentDescription, hasCurrentUserMention)];
}


#line 43
- (void)pauseNotifications {
  [((ARActorRef *) nil_chk(notificationsActor_)) sendWithId:new_ACNotificationsActor_PauseNotifications_init()];
}

- (void)resumeNotifications {
  [((ARActorRef *) nil_chk(notificationsActor_)) sendWithId:new_ACNotificationsActor_ResumeNotifications_init()];
}

- (void)resetModule {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModules:", "NotificationsModule", NULL, 0x1, NULL, NULL },
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "onOwnReadWithACPeer:withLong:", "onOwnRead", "V", 0x1, NULL, NULL },
    { "onInMessageWithACPeer:withInt:withLong:withACContentDescription:withBoolean:", "onInMessage", "V", 0x1, NULL, NULL },
    { "pauseNotifications", NULL, "V", 0x1, NULL, NULL },
    { "resumeNotifications", NULL, "V", 0x1, NULL, NULL },
    { "resetModule", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "notificationsActor_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACNotificationsModule = { 2, "NotificationsModule", "im.actor.core.modules.internal", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACNotificationsModule;
}

@end


#line 22
void ACNotificationsModule_initWithACModules_(ACNotificationsModule *self, ACModules *modules) {
  (void) ACAbsModule_initWithACModuleContext_(self, modules);
}


#line 22
ACNotificationsModule *new_ACNotificationsModule_initWithACModules_(ACModules *modules) {
  ACNotificationsModule *self = [ACNotificationsModule alloc];
  ACNotificationsModule_initWithACModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACNotificationsModule)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/NotificationsModule.java"

@implementation ACNotificationsModule_$1


#line 29
- (ACNotificationsActor *)create {
  return new_ACNotificationsActor_initWithACModuleContext_([this$0_ context]);
}

- (instancetype)initWithACNotificationsModule:(ACNotificationsModule *)outer$ {
  ACNotificationsModule_$1_initWithACNotificationsModule_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.core.modules.internal.notifications.NotificationsActor;", 0x1, NULL, NULL },
    { "initWithACNotificationsModule:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.NotificationsModule;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACNotificationsModule", "run" };
  static const J2ObjcClassInfo _ACNotificationsModule_$1 = { 2, "", "im.actor.core.modules.internal", "NotificationsModule", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/core/modules/internal/notifications/NotificationsActor;>;" };
  return &_ACNotificationsModule_$1;
}

@end

void ACNotificationsModule_$1_initWithACNotificationsModule_(ACNotificationsModule_$1 *self, ACNotificationsModule *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACNotificationsModule_$1 *new_ACNotificationsModule_$1_initWithACNotificationsModule_(ACNotificationsModule *outer$) {
  ACNotificationsModule_$1 *self = [ACNotificationsModule_$1 alloc];
  ACNotificationsModule_$1_initWithACNotificationsModule_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACNotificationsModule_$1)

#pragma clang diagnostic pop

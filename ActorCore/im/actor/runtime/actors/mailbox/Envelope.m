//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/Envelope.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorScope.h"
#include "im/actor/runtime/actors/ActorTime.h"
#include "im/actor/runtime/actors/mailbox/Envelope.h"
#include "im/actor/runtime/actors/mailbox/Mailbox.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface AREnvelope () {
 @public
  id message_;
  ARActorRef *sender_;
  ARMailbox *mailbox_;
  ARActorScope *scope_;
  jlong sendTime_;
}

@end

J2OBJC_FIELD_SETTER(AREnvelope, message_, id)
J2OBJC_FIELD_SETTER(AREnvelope, sender_, ARActorRef *)
J2OBJC_FIELD_SETTER(AREnvelope, mailbox_, ARMailbox *)
J2OBJC_FIELD_SETTER(AREnvelope, scope_, ARActorScope *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/Envelope.java"


#line 16
@implementation AREnvelope

@synthesize message = message_;
@synthesize sender = sender_;
@synthesize mailbox = mailbox_;
@synthesize scope = scope_;
@synthesize sendTime = sendTime_;


#line 37
- (instancetype)initWithId:(id)message
          withARActorScope:(ARActorScope *)scope
             withARMailbox:(ARMailbox *)mailbox
            withARActorRef:(ARActorRef *)sender {
  AREnvelope_initWithId_withARActorScope_withARMailbox_withARActorRef_(self, message, scope, mailbox, sender);
  return self;
}

- (ARActorScope *)getScope {
  return scope_;
}


#line 54
- (id)getMessage {
  return message_;
}


#line 63
- (ARMailbox *)getMailbox {
  return mailbox_;
}


#line 72
- (ARActorRef *)getSender {
  return sender_;
}

- (jlong)getSendTime {
  return sendTime_;
}


#line 81
- (NSString *)description {
  return JreStrcat("C@$$C", '{', message_, @" -> ", [((ARActorScope *) nil_chk(scope_)) getPath], '}');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:withARActorScope:withARMailbox:withARActorRef:", "Envelope", NULL, 0x1, NULL, NULL },
    { "getScope", NULL, "Lim.actor.runtime.actors.ActorScope;", 0x1, NULL, NULL },
    { "getMessage", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "getMailbox", NULL, "Lim.actor.runtime.actors.mailbox.Mailbox;", 0x1, NULL, NULL },
    { "getSender", NULL, "Lim.actor.runtime.actors.ActorRef;", 0x1, NULL, NULL },
    { "getSendTime", NULL, "J", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "message_", NULL, 0x12, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "sender_", NULL, 0x12, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "mailbox_", NULL, 0x12, "Lim.actor.runtime.actors.mailbox.Mailbox;", NULL, NULL, .constantValue.asLong = 0 },
    { "scope_", NULL, 0x12, "Lim.actor.runtime.actors.ActorScope;", NULL, NULL, .constantValue.asLong = 0 },
    { "sendTime_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _AREnvelope = { 2, "Envelope", "im.actor.runtime.actors.mailbox", NULL, 0x1, 7, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_AREnvelope;
}

@end


#line 37
void AREnvelope_initWithId_withARActorScope_withARMailbox_withARActorRef_(AREnvelope *self, id message, ARActorScope *scope, ARMailbox *mailbox, ARActorRef *sender) {
  (void) NSObject_init(self);
  
#line 38
  self->scope_ = scope;
  self->message_ = message;
  self->sender_ = sender;
  self->mailbox_ = mailbox;
  self->sendTime_ = ARActorTime_currentTime();
}


#line 37
AREnvelope *new_AREnvelope_initWithId_withARActorScope_withARMailbox_withARActorRef_(id message, ARActorScope *scope, ARMailbox *mailbox, ARActorRef *sender) {
  AREnvelope *self = [AREnvelope alloc];
  AREnvelope_initWithId_withARActorScope_withARMailbox_withARActorRef_(self, message, scope, mailbox, sender);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AREnvelope)

#pragma clang diagnostic pop
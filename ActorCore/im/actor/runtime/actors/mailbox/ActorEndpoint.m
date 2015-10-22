//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/ActorEndpoint.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/actors/ActorScope.h"
#include "im/actor/runtime/actors/mailbox/ActorEndpoint.h"
#include "im/actor/runtime/actors/mailbox/Mailbox.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARActorEndpoint () {
 @public
  NSString *path_;
  ARMailbox *mailbox_;
  ARActorScope *scope_;
  jboolean isDisconnected_;
}

@end

J2OBJC_FIELD_SETTER(ARActorEndpoint, path_, NSString *)
J2OBJC_FIELD_SETTER(ARActorEndpoint, mailbox_, ARMailbox *)
J2OBJC_FIELD_SETTER(ARActorEndpoint, scope_, ARActorScope *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/ActorEndpoint.java"


#line 11
@implementation ARActorEndpoint

@synthesize path = path_;
@synthesize mailbox = mailbox_;
@synthesize scope = scope_;
@synthesize isDisconnected = isDisconnected_;


#line 21
- (instancetype)initWithNSString:(NSString *)path {
  ARActorEndpoint_initWithNSString_(self, path);
  return self;
}

- (NSString *)getPath {
  return path_;
}

- (ARMailbox *)getMailbox {
  return mailbox_;
}

- (ARActorScope *)getScope {
  return scope_;
}

- (jboolean)isDisconnected {
  return isDisconnected_;
}

- (void)connectWithARMailbox:(ARMailbox *)mailbox
            withARActorScope:(ARActorScope *)scope {
  isDisconnected_ = false;
  self->mailbox_ = mailbox;
  self->scope_ = scope;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "ActorEndpoint", NULL, 0x1, NULL, NULL },
    { "getPath", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getMailbox", NULL, "Lim.actor.runtime.actors.mailbox.Mailbox;", 0x1, NULL, NULL },
    { "getScope", NULL, "Lim.actor.runtime.actors.ActorScope;", 0x1, NULL, NULL },
    { "isDisconnected", NULL, "Z", 0x1, NULL, NULL },
    { "connectWithARMailbox:withARActorScope:", "connect", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "path_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "mailbox_", NULL, 0x2, "Lim.actor.runtime.actors.mailbox.Mailbox;", NULL, NULL, .constantValue.asLong = 0 },
    { "scope_", NULL, 0x2, "Lim.actor.runtime.actors.ActorScope;", NULL, NULL, .constantValue.asLong = 0 },
    { "isDisconnected_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARActorEndpoint = { 2, "ActorEndpoint", "im.actor.runtime.actors.mailbox", NULL, 0x1, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARActorEndpoint;
}

@end


#line 21
void ARActorEndpoint_initWithNSString_(ARActorEndpoint *self, NSString *path) {
  (void) NSObject_init(self);
  
#line 22
  self->path_ = path;
  self->isDisconnected_ = false;
}


#line 21
ARActorEndpoint *new_ARActorEndpoint_initWithNSString_(NSString *path) {
  ARActorEndpoint *self = [ARActorEndpoint alloc];
  ARActorEndpoint_initWithNSString_(self, path);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARActorEndpoint)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/messages/PoisonPill.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/messages/PoisonPill.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARPoisonPill ()

- (instancetype)init;

@end

__attribute__((unused)) static void ARPoisonPill_init(ARPoisonPill *self);

__attribute__((unused)) static ARPoisonPill *new_ARPoisonPill_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/messages/PoisonPill.java"

J2OBJC_INITIALIZED_DEFN(ARPoisonPill)

ARPoisonPill *ARPoisonPill_INSTANCE_;


#line 10
@implementation ARPoisonPill

+ (ARPoisonPill *)INSTANCE {
  return ARPoisonPill_INSTANCE_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 13
- (instancetype)init {
  ARPoisonPill_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 17
- (NSString *)description {
  return @"PoisonPill";
}

+ (void)initialize {
  if (self == [ARPoisonPill class]) {
    ARPoisonPill_INSTANCE_ = new_ARPoisonPill_init();
    J2OBJC_SET_INITIALIZED(ARPoisonPill)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PoisonPill", NULL, 0x2, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x19, "Lim.actor.runtime.actors.messages.PoisonPill;", &ARPoisonPill_INSTANCE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARPoisonPill = { 2, "PoisonPill", "im.actor.runtime.actors.messages", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARPoisonPill;
}

@end


#line 13
void ARPoisonPill_init(ARPoisonPill *self) {
  (void) NSObject_init(self);
}


#line 13
ARPoisonPill *new_ARPoisonPill_init() {
  ARPoisonPill *self = [ARPoisonPill alloc];
  ARPoisonPill_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARPoisonPill)

#pragma clang diagnostic pop
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/BserLimits.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/bser/BserLimits.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARBserLimits ()

- (instancetype)init;

@end

__attribute__((unused)) static void ARBserLimits_init(ARBserLimits *self);

__attribute__((unused)) static ARBserLimits *new_ARBserLimits_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/BserLimits.java"


#line 7
@implementation ARBserLimits

+ (jint)MAX_BLOCK_SIZE {
  return ARBserLimits_MAX_BLOCK_SIZE;
}

+ (jint)MAX_PROTO_REPEATED {
  return ARBserLimits_MAX_PROTO_REPEATED;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 12
- (instancetype)init {
  ARBserLimits_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BserLimits", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_BLOCK_SIZE", "MAX_BLOCK_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = ARBserLimits_MAX_BLOCK_SIZE },
    { "MAX_PROTO_REPEATED", "MAX_PROTO_REPEATED", 0x19, "I", NULL, NULL, .constantValue.asInt = ARBserLimits_MAX_PROTO_REPEATED },
  };
  static const J2ObjcClassInfo _ARBserLimits = { 2, "BserLimits", "im.actor.runtime.bser", NULL, 0x10, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARBserLimits;
}

@end


#line 12
void ARBserLimits_init(ARBserLimits *self) {
  (void) NSObject_init(self);
}


#line 12
ARBserLimits *new_ARBserLimits_init() {
  ARBserLimits *self = [ARBserLimits alloc];
  ARBserLimits_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARBserLimits)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/eventbus/Event.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/eventbus/Event.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/eventbus/Event.java"


#line 3
@implementation ImActorRuntimeEventbusEvent

- (NSString *)getType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 8
- (NSString *)description {
  return [self getType];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ImActorRuntimeEventbusEvent_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getType", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ImActorRuntimeEventbusEvent = { 2, "Event", "im.actor.runtime.eventbus", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorRuntimeEventbusEvent;
}

@end

void ImActorRuntimeEventbusEvent_init(ImActorRuntimeEventbusEvent *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorRuntimeEventbusEvent)

#pragma clang diagnostic pop
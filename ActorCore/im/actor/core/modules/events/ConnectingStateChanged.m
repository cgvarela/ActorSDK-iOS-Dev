//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/ConnectingStateChanged.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/modules/events/ConnectingStateChanged.h"
#include "im/actor/runtime/eventbus/Event.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ImActorCoreModulesEventsConnectingStateChanged () {
 @public
  jboolean isConnecting_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/ConnectingStateChanged.java"

NSString *ImActorCoreModulesEventsConnectingStateChanged_EVENT_ = @"connecting_state_changed";


#line 5
@implementation ImActorCoreModulesEventsConnectingStateChanged

+ (NSString *)EVENT {
  return ImActorCoreModulesEventsConnectingStateChanged_EVENT_;
}

- (instancetype)initWithBoolean:(jboolean)isConnecting {
  ImActorCoreModulesEventsConnectingStateChanged_initWithBoolean_(self, isConnecting);
  return self;
}


#line 15
- (jboolean)isConnecting {
  return isConnecting_;
}


#line 20
- (NSString *)getType {
  return ImActorCoreModulesEventsConnectingStateChanged_EVENT_;
}


#line 25
- (NSString *)description {
  return JreStrcat("$$ZC", ImActorCoreModulesEventsConnectingStateChanged_EVENT_, @" {", isConnecting_, '}');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:", "ConnectingStateChanged", NULL, 0x1, NULL, NULL },
    { "isConnecting", NULL, "Z", 0x1, NULL, NULL },
    { "getType", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EVENT_", NULL, 0x19, "Ljava.lang.String;", &ImActorCoreModulesEventsConnectingStateChanged_EVENT_, NULL, .constantValue.asLong = 0 },
    { "isConnecting_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorCoreModulesEventsConnectingStateChanged = { 2, "ConnectingStateChanged", "im.actor.core.modules.events", NULL, 0x1, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorCoreModulesEventsConnectingStateChanged;
}

@end


#line 11
void ImActorCoreModulesEventsConnectingStateChanged_initWithBoolean_(ImActorCoreModulesEventsConnectingStateChanged *self, jboolean isConnecting) {
  (void) ImActorRuntimeEventbusEvent_init(self);
  
#line 12
  self->isConnecting_ = isConnecting;
}


#line 11
ImActorCoreModulesEventsConnectingStateChanged *new_ImActorCoreModulesEventsConnectingStateChanged_initWithBoolean_(jboolean isConnecting) {
  ImActorCoreModulesEventsConnectingStateChanged *self = [ImActorCoreModulesEventsConnectingStateChanged alloc];
  ImActorCoreModulesEventsConnectingStateChanged_initWithBoolean_(self, isConnecting);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesEventsConnectingStateChanged)

#pragma clang diagnostic pop

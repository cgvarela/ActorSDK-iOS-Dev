//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/DialogsOpened.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/modules/events/DialogsOpened.h"
#include "im/actor/runtime/eventbus/Event.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/DialogsOpened.java"

NSString *ImActorCoreModulesEventsDialogsOpened_EVENT_ = @"dialogs_opened";


#line 5
@implementation ImActorCoreModulesEventsDialogsOpened

+ (NSString *)EVENT {
  return ImActorCoreModulesEventsDialogsOpened_EVENT_;
}


#line 9
- (NSString *)getType {
  return ImActorCoreModulesEventsDialogsOpened_EVENT_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ImActorCoreModulesEventsDialogsOpened_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getType", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EVENT_", NULL, 0x19, "Ljava.lang.String;", &ImActorCoreModulesEventsDialogsOpened_EVENT_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorCoreModulesEventsDialogsOpened = { 2, "DialogsOpened", "im.actor.core.modules.events", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorCoreModulesEventsDialogsOpened;
}

@end

void ImActorCoreModulesEventsDialogsOpened_init(ImActorCoreModulesEventsDialogsOpened *self) {
  (void) ImActorRuntimeEventbusEvent_init(self);
}

ImActorCoreModulesEventsDialogsOpened *new_ImActorCoreModulesEventsDialogsOpened_init() {
  ImActorCoreModulesEventsDialogsOpened *self = [ImActorCoreModulesEventsDialogsOpened alloc];
  ImActorCoreModulesEventsDialogsOpened_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesEventsDialogsOpened)

#pragma clang diagnostic pop
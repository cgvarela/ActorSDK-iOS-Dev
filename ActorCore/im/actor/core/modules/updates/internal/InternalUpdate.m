//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/InternalUpdate.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/modules/updates/internal/InternalUpdate.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/InternalUpdate.java"


#line 7
@implementation ACInternalUpdate

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACInternalUpdate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACInternalUpdate = { 2, "InternalUpdate", "im.actor.core.modules.updates.internal", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACInternalUpdate;
}

@end

void ACInternalUpdate_init(ACInternalUpdate *self) {
  (void) NSObject_init(self);
}

ACInternalUpdate *new_ACInternalUpdate_init() {
  ACInternalUpdate *self = [ACInternalUpdate alloc];
  ACInternalUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACInternalUpdate)

#pragma clang diagnostic pop

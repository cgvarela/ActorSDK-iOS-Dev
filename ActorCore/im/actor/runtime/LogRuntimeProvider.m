//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/LogRuntimeProvider.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/LogRuntimeProvider.h"
#include "im/actor/runtime/cocoa/CocoaLogProvider.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/LogRuntimeProvider.java"


#line 5
@implementation ARLogRuntimeProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARLogRuntimeProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARLogRuntimeProvider = { 2, "LogRuntimeProvider", "im.actor.runtime", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARLogRuntimeProvider;
}

@end

void ARLogRuntimeProvider_init(ARLogRuntimeProvider *self) {
  (void) ARCocoaLogProvider_init(self);
}

ARLogRuntimeProvider *new_ARLogRuntimeProvider_init() {
  ARLogRuntimeProvider *self = [ARLogRuntimeProvider alloc];
  ARLogRuntimeProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARLogRuntimeProvider)

#pragma clang diagnostic pop
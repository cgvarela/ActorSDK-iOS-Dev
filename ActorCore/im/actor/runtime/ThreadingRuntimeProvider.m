//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/ThreadingRuntimeProvider.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/ThreadingRuntimeProvider.h"
#include "im/actor/runtime/cocoa/CocoaThreadingProvider.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/ThreadingRuntimeProvider.java"


#line 5
@implementation ARThreadingRuntimeProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARThreadingRuntimeProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARThreadingRuntimeProvider = { 2, "ThreadingRuntimeProvider", "im.actor.runtime", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARThreadingRuntimeProvider;
}

@end

void ARThreadingRuntimeProvider_init(ARThreadingRuntimeProvider *self) {
  (void) ARCocoaThreadingProvider_init(self);
}

ARThreadingRuntimeProvider *new_ARThreadingRuntimeProvider_init() {
  ARThreadingRuntimeProvider *self = [ARThreadingRuntimeProvider alloc];
  ARThreadingRuntimeProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARThreadingRuntimeProvider)

#pragma clang diagnostic pop
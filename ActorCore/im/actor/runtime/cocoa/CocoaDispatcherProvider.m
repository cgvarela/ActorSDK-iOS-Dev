//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaDispatcherProvider.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/cocoa/CocoaDispatcherProvider.h"
#include "java/lang/Runnable.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaDispatcherProvider.java"


#line 5
@implementation ARCocoaDispatcherProvider


#line 8
- (void)dispatchWithRunnable:(id<JavaLangRunnable>)runnable {
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
    [runnable run];
  });
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARCocoaDispatcherProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "dispatchWithRunnable:", "dispatch", "V", 0x101, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARCocoaDispatcherProvider = { 2, "CocoaDispatcherProvider", "im.actor.runtime.cocoa", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARCocoaDispatcherProvider;
}

@end

void ARCocoaDispatcherProvider_init(ARCocoaDispatcherProvider *self) {
  (void) NSObject_init(self);
}

ARCocoaDispatcherProvider *new_ARCocoaDispatcherProvider_init() {
  ARCocoaDispatcherProvider *self = [ARCocoaDispatcherProvider alloc];
  ARCocoaDispatcherProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARCocoaDispatcherProvider)

#pragma clang diagnostic pop
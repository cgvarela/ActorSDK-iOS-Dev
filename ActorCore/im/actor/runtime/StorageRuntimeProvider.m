//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/StorageRuntimeProvider.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/StorageRuntimeProvider.h"
#include "im/actor/runtime/cocoa/CocoaStorageProxyProvider.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/StorageRuntimeProvider.java"


#line 5
@implementation ARStorageRuntimeProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARStorageRuntimeProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARStorageRuntimeProvider = { 2, "StorageRuntimeProvider", "im.actor.runtime", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARStorageRuntimeProvider;
}

@end

void ARStorageRuntimeProvider_init(ARStorageRuntimeProvider *self) {
  (void) ARCocoaStorageProxyProvider_init(self);
}

ARStorageRuntimeProvider *new_ARStorageRuntimeProvider_init() {
  ARStorageRuntimeProvider *self = [ARStorageRuntimeProvider alloc];
  ARStorageRuntimeProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARStorageRuntimeProvider)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaCryptoProvider.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/cocoa/CocoaCryptoProvider.h"
#include "im/actor/runtime/crypto/bouncycastle/BouncyCastleRuntime.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaCryptoProvider.java"


#line 9
@implementation ARCocoaCryptoProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARCocoaCryptoProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARCocoaCryptoProvider = { 2, "CocoaCryptoProvider", "im.actor.runtime.cocoa", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARCocoaCryptoProvider;
}

@end

void ARCocoaCryptoProvider_init(ARCocoaCryptoProvider *self) {
  (void) ARBouncyCastleRuntime_init(self);
}

ARCocoaCryptoProvider *new_ARCocoaCryptoProvider_init() {
  ARCocoaCryptoProvider *self = [ARCocoaCryptoProvider alloc];
  ARCocoaCryptoProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARCocoaCryptoProvider)

#pragma clang diagnostic pop

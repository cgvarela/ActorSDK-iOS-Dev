//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/GenericNetworkProvider.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/generic/GenericNetworkProvider.h"
#include "im/actor/runtime/generic/network/AsyncTcpConnectionFactory.h"
#include "im/actor/runtime/mtproto/ManagedNetworkProvider.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/GenericNetworkProvider.java"


#line 8
@implementation ARGenericNetworkProvider

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 10
- (instancetype)init {
  ARGenericNetworkProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "GenericNetworkProvider", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARGenericNetworkProvider = { 2, "GenericNetworkProvider", "im.actor.runtime.generic", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARGenericNetworkProvider;
}

@end


#line 10
void ARGenericNetworkProvider_init(ARGenericNetworkProvider *self) {
  (void) ARManagedNetworkProvider_initWithFactory_(self, new_ARAsyncTcpConnectionFactory_init());
}


#line 10
ARGenericNetworkProvider *new_ARGenericNetworkProvider_init() {
  ARGenericNetworkProvider *self = [ARGenericNetworkProvider alloc];
  ARGenericNetworkProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericNetworkProvider)

#pragma clang diagnostic pop

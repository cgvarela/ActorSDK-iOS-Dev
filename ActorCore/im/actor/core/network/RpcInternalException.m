//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/RpcInternalException.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/RpcException.h"
#include "im/actor/core/network/RpcInternalException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/RpcInternalException.java"


#line 7
@implementation ACRpcInternalException

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 8
- (instancetype)init {
  ACRpcInternalException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RpcInternalException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACRpcInternalException = { 2, "RpcInternalException", "im.actor.core.network", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACRpcInternalException;
}

@end


#line 8
void ACRpcInternalException_init(ACRpcInternalException *self) {
  (void) ACRpcException_initWithNSString_withInt_withNSString_withBoolean_withByteArray_(self, @"INTERNAL_ERROR", 500, @"Internal server error", true, nil);
}


#line 8
ACRpcInternalException *new_ACRpcInternalException_init() {
  ACRpcInternalException *self = [ACRpcInternalException alloc];
  ACRpcInternalException_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACRpcInternalException)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/parser/HeaderBserObject.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/network/parser/HeaderBserObject.h"
#include "im/actor/runtime/bser/BserObject.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/parser/HeaderBserObject.java"


#line 9
@implementation ACHeaderBserObject


#line 10
- (jint)getHeaderKey {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACHeaderBserObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getHeaderKey", NULL, "I", 0x401, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACHeaderBserObject = { 2, "HeaderBserObject", "im.actor.core.network.parser", NULL, 0x401, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACHeaderBserObject;
}

@end

void ACHeaderBserObject_init(ACHeaderBserObject *self) {
  (void) ARBserObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACHeaderBserObject)

#pragma clang diagnostic pop

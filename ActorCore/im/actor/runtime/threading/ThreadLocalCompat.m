//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/ThreadLocalCompat.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/threading/ThreadLocalCompat.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/ThreadLocalCompat.java"


#line 10
@implementation ARThreadLocalCompat


#line 16
- (id)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 23
- (void)setWithId:(id)v {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)remove {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARThreadLocalCompat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "get", NULL, "TT;", 0x401, NULL, "()TT;" },
    { "setWithId:", "set", "V", 0x401, NULL, "(TT;)V" },
    { "remove", NULL, "V", 0x401, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARThreadLocalCompat = { 2, "ThreadLocalCompat", "im.actor.runtime.threading", NULL, 0x401, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_ARThreadLocalCompat;
}

@end

void ARThreadLocalCompat_init(ARThreadLocalCompat *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARThreadLocalCompat)

#pragma clang diagnostic pop

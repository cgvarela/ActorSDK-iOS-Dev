//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/AtomicLongCompat.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/threading/AtomicLongCompat.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/AtomicLongCompat.java"


#line 10
@implementation ARAtomicLongCompat


#line 16
- (jlong)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 23
- (jlong)incrementAndGet {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 30
- (jlong)getAndIncrement {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 37
- (void)setWithLong:(jlong)v {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARAtomicLongCompat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "get", NULL, "J", 0x401, NULL, NULL },
    { "incrementAndGet", NULL, "J", 0x401, NULL, NULL },
    { "getAndIncrement", NULL, "J", 0x401, NULL, NULL },
    { "setWithLong:", "set", "V", 0x401, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARAtomicLongCompat = { 2, "AtomicLongCompat", "im.actor.runtime.threading", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARAtomicLongCompat;
}

@end

void ARAtomicLongCompat_init(ARAtomicLongCompat *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAtomicLongCompat)

#pragma clang diagnostic pop
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/AtomicIntegerCompat.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/threading/AtomicIntegerCompat.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/threading/AtomicIntegerCompat.java"


#line 10
@implementation ARAtomicIntegerCompat


#line 16
- (jint)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 23
- (jint)incrementAndGet {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 30
- (jint)getAndIncrement {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 38
- (void)compareAndSetWithInt:(jint)exp
                     withInt:(jint)v {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 45
- (void)setWithInt:(jint)v {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARAtomicIntegerCompat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "get", NULL, "I", 0x401, NULL, NULL },
    { "incrementAndGet", NULL, "I", 0x401, NULL, NULL },
    { "getAndIncrement", NULL, "I", 0x401, NULL, NULL },
    { "compareAndSetWithInt:withInt:", "compareAndSet", "V", 0x401, NULL, NULL },
    { "setWithInt:", "set", "V", 0x401, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARAtomicIntegerCompat = { 2, "AtomicIntegerCompat", "im.actor.runtime.threading", NULL, 0x401, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARAtomicIntegerCompat;
}

@end

void ARAtomicIntegerCompat_init(ARAtomicIntegerCompat *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAtomicIntegerCompat)

#pragma clang diagnostic pop
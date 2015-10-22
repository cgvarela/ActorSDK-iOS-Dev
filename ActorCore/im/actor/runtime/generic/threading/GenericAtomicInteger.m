//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericAtomicInteger.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/generic/threading/GenericAtomicInteger.h"
#include "im/actor/runtime/threading/AtomicIntegerCompat.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARGenericAtomicInteger () {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *atomicInteger_;
}

@end

J2OBJC_FIELD_SETTER(ARGenericAtomicInteger, atomicInteger_, JavaUtilConcurrentAtomicAtomicInteger *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericAtomicInteger.java"


#line 11
@implementation ARGenericAtomicInteger


#line 15
- (instancetype)initWithInt:(jint)value {
  ARGenericAtomicInteger_initWithInt_(self, value);
  return self;
}

- (jint)get {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) get];
}


#line 25
- (jint)incrementAndGet {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) incrementAndGet];
}


#line 30
- (jint)getAndIncrement {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) getAndIncrement];
}


#line 35
- (void)compareAndSetWithInt:(jint)exp
                     withInt:(jint)v {
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) compareAndSetWithInt:exp withInt:v];
}

- (void)setWithInt:(jint)v {
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) setWithInt:v];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "GenericAtomicInteger", NULL, 0x1, NULL, NULL },
    { "get", NULL, "I", 0x1, NULL, NULL },
    { "incrementAndGet", NULL, "I", 0x1, NULL, NULL },
    { "getAndIncrement", NULL, "I", 0x1, NULL, NULL },
    { "compareAndSetWithInt:withInt:", "compareAndSet", "V", 0x1, NULL, NULL },
    { "setWithInt:", "set", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "atomicInteger_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARGenericAtomicInteger = { 2, "GenericAtomicInteger", "im.actor.runtime.generic.threading", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARGenericAtomicInteger;
}

@end


#line 15
void ARGenericAtomicInteger_initWithInt_(ARGenericAtomicInteger *self, jint value) {
  (void) ARAtomicIntegerCompat_init(self);
  
#line 16
  self->atomicInteger_ = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(value);
}


#line 15
ARGenericAtomicInteger *new_ARGenericAtomicInteger_initWithInt_(jint value) {
  ARGenericAtomicInteger *self = [ARGenericAtomicInteger alloc];
  ARGenericAtomicInteger_initWithInt_(self, value);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericAtomicInteger)

#pragma clang diagnostic pop

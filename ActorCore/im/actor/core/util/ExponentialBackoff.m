//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/ExponentialBackoff.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/util/ExponentialBackoff.h"
#include "im/actor/runtime/Runtime.h"
#include "im/actor/runtime/threading/AtomicIntegerCompat.h"
#include "java/util/Random.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACExponentialBackoff () {
 @public
  jint minDelay_;
  jint maxDelay_;
  jint maxFailureCount_;
  ARAtomicIntegerCompat *currentFailureCount_;
  JavaUtilRandom *random_;
}

@end

J2OBJC_FIELD_SETTER(ACExponentialBackoff, currentFailureCount_, ARAtomicIntegerCompat *)
J2OBJC_FIELD_SETTER(ACExponentialBackoff, random_, JavaUtilRandom *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/ExponentialBackoff.java"


#line 15
@implementation ACExponentialBackoff


#line 21
- (instancetype)initWithInt:(jint)minDelay
                    withInt:(jint)maxDelay
                    withInt:(jint)maxFailureCount {
  ACExponentialBackoff_initWithInt_withInt_withInt_(self, minDelay, maxDelay, maxFailureCount);
  return self;
}


#line 38
- (jlong)exponentialWait {
  jlong maxDelayRet = minDelay_ + ((maxDelay_ - minDelay_) / maxFailureCount_) * [((ARAtomicIntegerCompat *) nil_chk(currentFailureCount_)) get];
  @synchronized(random_) {
    return JreFpToLong(([((JavaUtilRandom *) nil_chk(random_)) nextFloat] * maxDelayRet));
  }
}


#line 48
- (void)onFailure {
  jint val = [((ARAtomicIntegerCompat *) nil_chk(currentFailureCount_)) incrementAndGet];
  if (val > maxFailureCount_) {
    [currentFailureCount_ compareAndSetWithInt:val withInt:maxFailureCount_];
  }
}


#line 58
- (void)onSuccess {
  [self reset];
}


#line 65
- (void)reset {
  [((ARAtomicIntegerCompat *) nil_chk(currentFailureCount_)) setWithInt:0];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:", "ExponentialBackoff", NULL, 0x1, NULL, NULL },
    { "exponentialWait", NULL, "J", 0x1, NULL, NULL },
    { "onFailure", NULL, "V", 0x1, NULL, NULL },
    { "onSuccess", NULL, "V", 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "minDelay_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDelay_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxFailureCount_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "currentFailureCount_", NULL, 0x12, "Lim.actor.runtime.threading.AtomicIntegerCompat;", NULL, NULL, .constantValue.asLong = 0 },
    { "random_", NULL, 0x12, "Ljava.util.Random;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACExponentialBackoff = { 2, "ExponentialBackoff", "im.actor.core.util", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACExponentialBackoff;
}

@end


#line 21
void ACExponentialBackoff_initWithInt_withInt_withInt_(ACExponentialBackoff *self, jint minDelay, jint maxDelay, jint maxFailureCount) {
  (void) NSObject_init(self);
  self->currentFailureCount_ = ARRuntime_createAtomicIntWithInt_(
#line 29
  1);
  self->random_ = new_JavaUtilRandom_init();
  
#line 24
  self->minDelay_ = minDelay;
  self->maxDelay_ = maxDelay;
  self->maxFailureCount_ = maxFailureCount;
}


#line 21
ACExponentialBackoff *new_ACExponentialBackoff_initWithInt_withInt_withInt_(jint minDelay, jint maxDelay, jint maxFailureCount) {
  ACExponentialBackoff *self = [ACExponentialBackoff alloc];
  ACExponentialBackoff_initWithInt_withInt_withInt_(self, minDelay, maxDelay, maxFailureCount);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACExponentialBackoff)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/ExecuteAfter.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/modules/updates/internal/ExecuteAfter.h"
#include "java/lang/Runnable.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACExecuteAfter () {
 @public
  jint seq_;
  id<JavaLangRunnable> runnable_;
}

@end

J2OBJC_FIELD_SETTER(ACExecuteAfter, runnable_, id<JavaLangRunnable>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/ExecuteAfter.java"


#line 7
@implementation ACExecuteAfter


#line 11
- (instancetype)initWithInt:(jint)seq
       withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  ACExecuteAfter_initWithInt_withJavaLangRunnable_(self, seq, runnable);
  return self;
}


#line 16
- (jint)getSeq {
  return seq_;
}

- (id<JavaLangRunnable>)getRunnable {
  return runnable_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withJavaLangRunnable:", "ExecuteAfter", NULL, 0x1, NULL, NULL },
    { "getSeq", NULL, "I", 0x1, NULL, NULL },
    { "getRunnable", NULL, "Ljava.lang.Runnable;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "runnable_", NULL, 0x2, "Ljava.lang.Runnable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACExecuteAfter = { 2, "ExecuteAfter", "im.actor.core.modules.updates.internal", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACExecuteAfter;
}

@end


#line 11
void ACExecuteAfter_initWithInt_withJavaLangRunnable_(ACExecuteAfter *self, jint seq, id<JavaLangRunnable> runnable) {
  (void) NSObject_init(self);
  
#line 12
  self->seq_ = seq;
  self->runnable_ = runnable;
}


#line 11
ACExecuteAfter *new_ACExecuteAfter_initWithInt_withJavaLangRunnable_(jint seq, id<JavaLangRunnable> runnable) {
  ACExecuteAfter *self = [ACExecuteAfter alloc];
  ACExecuteAfter_initWithInt_withJavaLangRunnable_(self, seq, runnable);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACExecuteAfter)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/AsyncVM.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/Runtime.h"
#include "im/actor/runtime/mvvm/AsyncVM.h"
#include <j2objc/java/lang/Runnable.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARAsyncVM () {
 @public
  jboolean isDetached_;
}

@end

@interface ARAsyncVM_$1 : NSObject < JavaLangRunnable > {
 @public
  ARAsyncVM *this$0_;
  id val$obj_;
}

- (void)run;

- (instancetype)initWithARAsyncVM:(ARAsyncVM *)outer$
                           withId:(id)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ARAsyncVM_$1)

J2OBJC_FIELD_SETTER(ARAsyncVM_$1, this$0_, ARAsyncVM *)
J2OBJC_FIELD_SETTER(ARAsyncVM_$1, val$obj_, id)

__attribute__((unused)) static void ARAsyncVM_$1_initWithARAsyncVM_withId_(ARAsyncVM_$1 *self, ARAsyncVM *outer$, id capture$0);

__attribute__((unused)) static ARAsyncVM_$1 *new_ARAsyncVM_$1_initWithARAsyncVM_withId_(ARAsyncVM *outer$, id capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARAsyncVM_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/AsyncVM.java"


#line 7
@implementation ARAsyncVM


#line 11
- (void)postWithId:(id)obj {
  ARRuntime_postToMainThreadWithJavaLangRunnable_(new_ARAsyncVM_$1_initWithARAsyncVM_withId_(self, obj));
}


#line 22
- (void)onObjectReceivedWithId:(id)obj {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 24
- (void)detach {
  isDetached_ = true;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARAsyncVM_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "postWithId:", "post", "V", 0x14, NULL, NULL },
    { "onObjectReceivedWithId:", "onObjectReceived", "V", 0x404, NULL, NULL },
    { "detach", NULL, "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "isDetached_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARAsyncVM = { 2, "AsyncVM", "im.actor.runtime.mvvm", NULL, 0x401, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARAsyncVM;
}

@end

void ARAsyncVM_init(ARAsyncVM *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncVM)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/AsyncVM.java"

@implementation ARAsyncVM_$1


#line 14
- (void)run {
  if (!this$0_->isDetached_) {
    [this$0_ onObjectReceivedWithId:val$obj_];
  }
}

- (instancetype)initWithARAsyncVM:(ARAsyncVM *)outer$
                           withId:(id)capture$0 {
  ARAsyncVM_$1_initWithARAsyncVM_withId_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithARAsyncVM:withId:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.runtime.mvvm.AsyncVM;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$obj_", NULL, 0x1012, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARAsyncVM", "postWithId:" };
  static const J2ObjcClassInfo _ARAsyncVM_$1 = { 2, "", "im.actor.runtime.mvvm", "AsyncVM", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ARAsyncVM_$1;
}

@end

void ARAsyncVM_$1_initWithARAsyncVM_withId_(ARAsyncVM_$1 *self, ARAsyncVM *outer$, id capture$0) {
  self->this$0_ = outer$;
  self->val$obj_ = capture$0;
  (void) NSObject_init(self);
}

ARAsyncVM_$1 *new_ARAsyncVM_$1_initWithARAsyncVM_withId_(ARAsyncVM *outer$, id capture$0) {
  ARAsyncVM_$1 *self = [ARAsyncVM_$1 alloc];
  ARAsyncVM_$1_initWithARAsyncVM_withId_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncVM_$1)

#pragma clang diagnostic pop

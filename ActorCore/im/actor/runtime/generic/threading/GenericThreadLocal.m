//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericThreadLocal.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/generic/threading/GenericThreadLocal.h"
#include "im/actor/runtime/threading/ThreadLocalCompat.h"
#include <j2objc/java/lang/ThreadLocal.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARGenericThreadLocal () {
 @public
  JavaLangThreadLocal *tThreadLocal_;
}

@end

J2OBJC_FIELD_SETTER(ARGenericThreadLocal, tThreadLocal_, JavaLangThreadLocal *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericThreadLocal.java"


#line 9
@implementation ARGenericThreadLocal


#line 13
- (id)get {
  return [((JavaLangThreadLocal *) nil_chk(tThreadLocal_)) get];
}


#line 18
- (void)setWithId:(id)v {
  [((JavaLangThreadLocal *) nil_chk(tThreadLocal_)) setWithId:v];
}


#line 23
- (void)remove {
  [((JavaLangThreadLocal *) nil_chk(tThreadLocal_)) remove];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARGenericThreadLocal_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "get", NULL, "TT;", 0x1, NULL, "()TT;" },
    { "setWithId:", "set", "V", 0x1, NULL, "(TT;)V" },
    { "remove", NULL, "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tThreadLocal_", NULL, 0x12, "Ljava.lang.ThreadLocal;", NULL, "Ljava/lang/ThreadLocal<TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjcClassInfo _ARGenericThreadLocal = { 2, "GenericThreadLocal", "im.actor.runtime.generic.threading", NULL, 0x1, 4, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lim/actor/runtime/threading/ThreadLocalCompat<TT;>;" };
  return &_ARGenericThreadLocal;
}

@end

void ARGenericThreadLocal_init(ARGenericThreadLocal *self) {
  (void) ARThreadLocalCompat_init(self);
  self->tThreadLocal_ = new_JavaLangThreadLocal_init();
}

ARGenericThreadLocal *new_ARGenericThreadLocal_init() {
  ARGenericThreadLocal *self = [ARGenericThreadLocal alloc];
  ARGenericThreadLocal_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericThreadLocal)

#pragma clang diagnostic pop

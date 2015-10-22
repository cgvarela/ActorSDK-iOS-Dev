//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/LockableValue.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/mvvm/LockableValue.h"
#include "im/actor/runtime/mvvm/Value.h"
#include "im/actor/runtime/mvvm/ValueChangedListener.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashSet.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARLockableValue () {
 @public
  id<ARValueChangedListener> listener_;
  ARValue *baseValue_;
  id originalValue_;
  id modifiedValue_;
  jboolean isLockEnabled_;
  jint NEXT_LOCK_ID_;
  JavaUtilHashSet *activeLocks_;
}

@end

J2OBJC_FIELD_SETTER(ARLockableValue, listener_, id<ARValueChangedListener>)
J2OBJC_FIELD_SETTER(ARLockableValue, baseValue_, ARValue *)
J2OBJC_FIELD_SETTER(ARLockableValue, originalValue_, id)
J2OBJC_FIELD_SETTER(ARLockableValue, modifiedValue_, id)
J2OBJC_FIELD_SETTER(ARLockableValue, activeLocks_, JavaUtilHashSet *)

@interface ARLockableValue_$1 : NSObject < ARValueChangedListener > {
 @public
  ARLockableValue *this$0_;
}

- (void)onChanged:(id)val
        withModel:(ARValue *)valueModel;

- (instancetype)initWithARLockableValue:(ARLockableValue *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ARLockableValue_$1)

J2OBJC_FIELD_SETTER(ARLockableValue_$1, this$0_, ARLockableValue *)

__attribute__((unused)) static void ARLockableValue_$1_initWithARLockableValue_(ARLockableValue_$1 *self, ARLockableValue *outer$);

__attribute__((unused)) static ARLockableValue_$1 *new_ARLockableValue_$1_initWithARLockableValue_(ARLockableValue *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARLockableValue_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/LockableValue.java"


#line 7
@implementation ARLockableValue


#line 28
- (instancetype)initWithNSString:(NSString *)name
                     withARValue:(ARValue *)baseValue {
  ARLockableValue_initWithNSString_withARValue_(self, name, baseValue);
  return self;
}


#line 37
- (jint)createLock {
  
#line 39
  if ([((JavaUtilHashSet *) nil_chk(activeLocks_)) size] == 0) {
    modifiedValue_ = originalValue_;
    isLockEnabled_ = true;
  }
  
#line 45
  jint lockId = NEXT_LOCK_ID_++;
  [activeLocks_ addWithId:JavaLangInteger_valueOfWithInt_(lockId)];
  return lockId;
}


#line 54
- (void)changeWithId:(id)obj {
  if (!isLockEnabled_) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"changing of values only cen be performed in locked state");
  }
  
#line 59
  modifiedValue_ = obj;
  [self notifyInMainThreadWithId:modifiedValue_];
}

- (void)releaseLockWithInt:(jint)id_ {
  
#line 66
  [((JavaUtilHashSet *) nil_chk(activeLocks_)) removeWithId:JavaLangInteger_valueOfWithInt_(id_)];
  
#line 69
  if ([activeLocks_ size] == 0) {
    modifiedValue_ = nil;
    isLockEnabled_ = false;
    [self notifyInMainThreadWithId:originalValue_];
  }
}

- (id)get {
  if (isLockEnabled_) {
    return modifiedValue_;
  }
  else {
    
#line 81
    return originalValue_;
  }
}


#line 85
- (id)getModifiedValue {
  return modifiedValue_;
}

- (void)destroy {
  [((ARValue *) nil_chk(baseValue_)) unsubscribeWithListener:listener_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withARValue:", "LockableValue", NULL, 0x1, NULL, NULL },
    { "createLock", NULL, "I", 0x1, NULL, NULL },
    { "changeWithId:", "change", "V", 0x1, NULL, "(TT;)V" },
    { "releaseLockWithInt:", "releaseLock", "V", 0x1, NULL, NULL },
    { "get", NULL, "TT;", 0x1, NULL, "()TT;" },
    { "getModifiedValue", NULL, "TT;", 0x4, NULL, "()TT;" },
    { "destroy", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "listener_", NULL, 0x2, "Lim.actor.runtime.mvvm.ValueChangedListener;", NULL, "Lim/actor/runtime/mvvm/ValueChangedListener<TT;>;", .constantValue.asLong = 0 },
    { "baseValue_", NULL, 0x2, "Lim.actor.runtime.mvvm.Value;", NULL, "Lim/actor/runtime/mvvm/Value<TT;>;", .constantValue.asLong = 0 },
    { "originalValue_", NULL, 0x2, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
    { "modifiedValue_", NULL, 0x2, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
    { "isLockEnabled_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "NEXT_LOCK_ID_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "activeLocks_", NULL, 0x2, "Ljava.util.HashSet;", NULL, "Ljava/util/HashSet<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjcClassInfo _ARLockableValue = { 2, "LockableValue", "im.actor.runtime.mvvm", NULL, 0x1, 7, methods, 7, fields, 1, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lim/actor/runtime/mvvm/Value<TT;>;" };
  return &_ARLockableValue;
}

@end


#line 28
void ARLockableValue_initWithNSString_withARValue_(ARLockableValue *self, NSString *name, ARValue *baseValue) {
  (void) ARValue_initWithNSString_(self, name);
  self->listener_ = new_ARLockableValue_$1_initWithARLockableValue_(self);
  self->isLockEnabled_ =
#line 24
  false;
  self->NEXT_LOCK_ID_ = 0;
  self->activeLocks_ = new_JavaUtilHashSet_init();
  
#line 30
  self->baseValue_ = baseValue;
  self->originalValue_ = [((ARValue *) nil_chk(baseValue)) get];
  
#line 33
  [baseValue subscribeWithListener:self->listener_];
}


#line 28
ARLockableValue *new_ARLockableValue_initWithNSString_withARValue_(NSString *name, ARValue *baseValue) {
  ARLockableValue *self = [ARLockableValue alloc];
  ARLockableValue_initWithNSString_withARValue_(self, name, baseValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARLockableValue)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/LockableValue.java"

@implementation ARLockableValue_$1


#line 11
- (void)onChanged:(id)val
        withModel:(ARValue *)valueModel {
  this$0_->originalValue_ = val;
  
#line 14
  if (!this$0_->isLockEnabled_) {
    [this$0_ notifyInMainThreadWithId:this$0_->originalValue_];
  }
}

- (instancetype)initWithARLockableValue:(ARLockableValue *)outer$ {
  ARLockableValue_$1_initWithARLockableValue_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onChanged:withModel:", "onChanged", "V", 0x1, NULL, "(TT;Lim/actor/runtime/mvvm/Value<TT;>;)V" },
    { "initWithARLockableValue:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.runtime.mvvm.LockableValue;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARLockableValue_$1 = { 2, "", "im.actor.runtime.mvvm", "LockableValue", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/mvvm/ValueChangedListener<TT;>;" };
  return &_ARLockableValue_$1;
}

@end

void ARLockableValue_$1_initWithARLockableValue_(ARLockableValue_$1 *self, ARLockableValue *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ARLockableValue_$1 *new_ARLockableValue_$1_initWithARLockableValue_(ARLockableValue *outer$) {
  ARLockableValue_$1 *self = [ARLockableValue_$1 alloc];
  ARLockableValue_$1_initWithARLockableValue_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARLockableValue_$1)

#pragma clang diagnostic pop
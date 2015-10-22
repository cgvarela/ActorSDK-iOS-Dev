//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/DialogSpecVM.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/DialogSpec.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/viewmodel/DialogSpecVM.h"
#include "im/actor/core/viewmodel/generics/BooleanValueModel.h"
#include "im/actor/core/viewmodel/generics/IntValueModel.h"
#include "im/actor/runtime/mvvm/BaseValueModel.h"
#include "im/actor/runtime/mvvm/ValueModelCreator.h"
#include <j2objc/java/lang/Boolean.h>
#include <j2objc/java/lang/Integer.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACDialogSpecVM () {
 @public
  ACPeer *peer_;
  ACIntValueModel *counter_;
  ACBooleanValueModel *isUnread_;
}

@end

J2OBJC_FIELD_SETTER(ACDialogSpecVM, peer_, ACPeer *)
J2OBJC_FIELD_SETTER(ACDialogSpecVM, counter_, ACIntValueModel *)
J2OBJC_FIELD_SETTER(ACDialogSpecVM, isUnread_, ACBooleanValueModel *)

@interface ACDialogSpecVM_$1 : NSObject < ARValueModelCreator >

- (ACDialogSpecVM *)createWithId:(ACDialogSpec *)baseValue;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogSpecVM_$1)

__attribute__((unused)) static void ACDialogSpecVM_$1_init(ACDialogSpecVM_$1 *self);

__attribute__((unused)) static ACDialogSpecVM_$1 *new_ACDialogSpecVM_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogSpecVM_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/DialogSpecVM.java"

J2OBJC_INITIALIZED_DEFN(ACDialogSpecVM)

id<ARValueModelCreator> ACDialogSpecVM_CREATOR_;


#line 12
@implementation ACDialogSpecVM

@synthesize peer = peer_;
@synthesize counter = counter_;
@synthesize isUnread = isUnread_;

+ (id<ARValueModelCreator>)CREATOR {
  return ACDialogSpecVM_CREATOR_;
}

+ (void)setCREATOR:(id<ARValueModelCreator>)value {
  ACDialogSpecVM_CREATOR_ = value;
}


#line 28
- (instancetype)initWithACDialogSpec:(ACDialogSpec *)rawObj {
  ACDialogSpecVM_initWithACDialogSpec_(self, rawObj);
  return self;
}


#line 36
- (ACPeer *)getPeer {
  return peer_;
}

- (ACIntValueModel *)getCounter {
  return counter_;
}

- (ACBooleanValueModel *)getIsUnread {
  return isUnread_;
}


#line 49
- (void)updateValuesWithId:(ACDialogSpec *)rawObj {
  [((ACIntValueModel *) nil_chk(counter_)) changeWithValue:JavaLangInteger_valueOfWithInt_([((ACDialogSpec *) nil_chk(rawObj)) getCounter])];
  [((ACBooleanValueModel *) nil_chk(isUnread_)) changeWithValue:JavaLangBoolean_valueOfWithBoolean_([rawObj isUnread])];
}

+ (void)initialize {
  if (self == [ACDialogSpecVM class]) {
    ACDialogSpecVM_CREATOR_ = new_ACDialogSpecVM_$1_init();
    J2OBJC_SET_INITIALIZED(ACDialogSpecVM)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACDialogSpec:", "DialogSpecVM", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.entity.Peer;", 0x1, NULL, NULL },
    { "getCounter", NULL, "Lim.actor.core.viewmodel.generics.IntValueModel;", 0x1, NULL, NULL },
    { "getIsUnread", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "updateValuesWithId:", "updateValues", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CREATOR_", NULL, 0x9, "Lim.actor.runtime.mvvm.ValueModelCreator;", &ACDialogSpecVM_CREATOR_, "Lim/actor/runtime/mvvm/ValueModelCreator<Lim/actor/core/entity/DialogSpec;Lim/actor/core/viewmodel/DialogSpecVM;>;", .constantValue.asLong = 0 },
    { "peer_", NULL, 0x12, "Lim.actor.core.entity.Peer;", NULL, NULL, .constantValue.asLong = 0 },
    { "counter_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.IntValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isUnread_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.entity.DialogSpec;"};
  static const J2ObjcClassInfo _ACDialogSpecVM = { 2, "DialogSpecVM", "im.actor.core.viewmodel", NULL, 0x1, 5, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/runtime/mvvm/BaseValueModel<Lim/actor/core/entity/DialogSpec;>;" };
  return &_ACDialogSpecVM;
}

@end


#line 28
void ACDialogSpecVM_initWithACDialogSpec_(ACDialogSpecVM *self, ACDialogSpec *rawObj) {
  (void) ARBaseValueModel_initWithId_(self, rawObj);
  
#line 31
  self->peer_ = [((ACDialogSpec *) nil_chk(rawObj)) getPeer];
  self->counter_ = new_ACIntValueModel_initWithNSString_withJavaLangInteger_(@"dialogs.desc.counter", JavaLangInteger_valueOfWithInt_([rawObj getCounter]));
  self->isUnread_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"dialogs.desc.unread", JavaLangBoolean_valueOfWithBoolean_([rawObj isUnread]));
}


#line 28
ACDialogSpecVM *new_ACDialogSpecVM_initWithACDialogSpec_(ACDialogSpec *rawObj) {
  ACDialogSpecVM *self = [ACDialogSpecVM alloc];
  ACDialogSpecVM_initWithACDialogSpec_(self, rawObj);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogSpecVM)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/DialogSpecVM.java"

@implementation ACDialogSpecVM_$1


#line 16
- (ACDialogSpecVM *)createWithId:(ACDialogSpec *)baseValue {
  return new_ACDialogSpecVM_initWithACDialogSpec_(baseValue);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACDialogSpecVM_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithId:", "create", "Lim.actor.core.viewmodel.DialogSpecVM;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACDialogSpecVM_$1 = { 2, "", "im.actor.core.viewmodel", "DialogSpecVM", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/mvvm/ValueModelCreator<Lim/actor/core/entity/DialogSpec;Lim/actor/core/viewmodel/DialogSpecVM;>;" };
  return &_ACDialogSpecVM_$1;
}

@end

void ACDialogSpecVM_$1_init(ACDialogSpecVM_$1 *self) {
  (void) NSObject_init(self);
}

ACDialogSpecVM_$1 *new_ACDialogSpecVM_$1_init() {
  ACDialogSpecVM_$1 *self = [ACDialogSpecVM_$1 alloc];
  ACDialogSpecVM_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogSpecVM_$1)

#pragma clang diagnostic pop

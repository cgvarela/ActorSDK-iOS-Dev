//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/FilteredValue.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/mvvm/FilteredValue.h"
#include "im/actor/runtime/mvvm/Value.h"
#include "im/actor/runtime/mvvm/ValueChangedListener.h"
#include "im/actor/runtime/mvvm/ValueConverter.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARFilteredValue () {
 @public
  ARValue *baseValue_;
  id value_;
  id<ARValueConverter> converter_;
  id<ARValueChangedListener> changedListener_;
}

@end

J2OBJC_FIELD_SETTER(ARFilteredValue, baseValue_, ARValue *)
J2OBJC_FIELD_SETTER(ARFilteredValue, value_, id)
J2OBJC_FIELD_SETTER(ARFilteredValue, converter_, id<ARValueConverter>)
J2OBJC_FIELD_SETTER(ARFilteredValue, changedListener_, id<ARValueChangedListener>)

@interface ARFilteredValue_$1 : NSObject < ARValueChangedListener > {
 @public
  ARFilteredValue *this$0_;
}

- (void)onChanged:(id)val
        withModel:(ARValue *)valueModel;

- (instancetype)initWithARFilteredValue:(ARFilteredValue *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ARFilteredValue_$1)

J2OBJC_FIELD_SETTER(ARFilteredValue_$1, this$0_, ARFilteredValue *)

__attribute__((unused)) static void ARFilteredValue_$1_initWithARFilteredValue_(ARFilteredValue_$1 *self, ARFilteredValue *outer$);

__attribute__((unused)) static ARFilteredValue_$1 *new_ARFilteredValue_$1_initWithARFilteredValue_(ARFilteredValue *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARFilteredValue_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/FilteredValue.java"


#line 3
@implementation ARFilteredValue


#line 16
- (instancetype)initWithNSString:(NSString *)name
                     withARValue:(ARValue *)valueModel
            withARValueConverter:(id<ARValueConverter>)converter {
  ARFilteredValue_initWithNSString_withARValue_withARValueConverter_(self, name, valueModel, converter);
  return self;
}


#line 27
- (id)get {
  return value_;
}

- (void)destroy {
  [((ARValue *) nil_chk(baseValue_)) unsubscribeWithListener:changedListener_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withARValue:withARValueConverter:", "FilteredValue", NULL, 0x1, NULL, NULL },
    { "get", NULL, "TS;", 0x1, NULL, "()TS;" },
    { "destroy", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "baseValue_", NULL, 0x2, "Lim.actor.runtime.mvvm.Value;", NULL, "Lim/actor/runtime/mvvm/Value<TT;>;", .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "TS;", NULL, "TS;", .constantValue.asLong = 0 },
    { "converter_", NULL, 0x2, "Lim.actor.runtime.mvvm.ValueConverter;", NULL, "Lim/actor/runtime/mvvm/ValueConverter<TT;TS;>;", .constantValue.asLong = 0 },
    { "changedListener_", NULL, 0x2, "Lim.actor.runtime.mvvm.ValueChangedListener;", NULL, "Lim/actor/runtime/mvvm/ValueChangedListener<TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TS;"};
  static const J2ObjcClassInfo _ARFilteredValue = { 2, "FilteredValue", "im.actor.runtime.mvvm", NULL, 0x1, 3, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;S:Ljava/lang/Object;>Lim/actor/runtime/mvvm/Value<TS;>;" };
  return &_ARFilteredValue;
}

@end


#line 16
void ARFilteredValue_initWithNSString_withARValue_withARValueConverter_(ARFilteredValue *self, NSString *name, ARValue *valueModel, id<ARValueConverter> converter) {
  (void) ARValue_initWithNSString_(self, name);
  self->changedListener_ = new_ARFilteredValue_$1_initWithARFilteredValue_(self);
  self->converter_ = converter;
  self->baseValue_ = valueModel;
  self->value_ = [((id<ARValueConverter>) nil_chk(converter)) convertWithId:[((ARValue *) nil_chk(valueModel)) get]];
  
#line 23
  [((ARValue *) nil_chk(self->baseValue_)) subscribeWithListener:self->changedListener_ notify:false];
}


#line 16
ARFilteredValue *new_ARFilteredValue_initWithNSString_withARValue_withARValueConverter_(NSString *name, ARValue *valueModel, id<ARValueConverter> converter) {
  ARFilteredValue *self = [ARFilteredValue alloc];
  ARFilteredValue_initWithNSString_withARValue_withARValueConverter_(self, name, valueModel, converter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARFilteredValue)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/FilteredValue.java"

@implementation ARFilteredValue_$1


#line 10
- (void)onChanged:(id)val
        withModel:(ARValue *)valueModel {
  this$0_->value_ = [((id<ARValueConverter>) nil_chk(this$0_->converter_)) convertWithId:val];
  [this$0_ notifyInMainThreadWithId:this$0_->value_];
}

- (instancetype)initWithARFilteredValue:(ARFilteredValue *)outer$ {
  ARFilteredValue_$1_initWithARFilteredValue_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onChanged:withModel:", "onChanged", "V", 0x1, NULL, "(TT;Lim/actor/runtime/mvvm/Value<TT;>;)V" },
    { "initWithARFilteredValue:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.runtime.mvvm.FilteredValue;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARFilteredValue_$1 = { 2, "", "im.actor.runtime.mvvm", "FilteredValue", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/mvvm/ValueChangedListener<TT;>;" };
  return &_ARFilteredValue_$1;
}

@end

void ARFilteredValue_$1_initWithARFilteredValue_(ARFilteredValue_$1 *self, ARFilteredValue *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ARFilteredValue_$1 *new_ARFilteredValue_$1_initWithARFilteredValue_(ARFilteredValue *outer$) {
  ARFilteredValue_$1 *self = [ARFilteredValue_$1 alloc];
  ARFilteredValue_$1_initWithARFilteredValue_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARFilteredValue_$1)

#pragma clang diagnostic pop

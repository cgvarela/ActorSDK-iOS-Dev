//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/IntValueModel.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/viewmodel/generics/IntValueModel.h"
#include "im/actor/runtime/mvvm/ValueModel.h"
#include "java/lang/Integer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/IntValueModel.java"


#line 5
@implementation ACIntValueModel


#line 12
- (instancetype)initWithNSString:(NSString *)name
             withJavaLangInteger:(JavaLangInteger *)defaultValue {
  ACIntValueModel_initWithNSString_withJavaLangInteger_(self, name, defaultValue);
  return self;
}


#line 17
- (JavaLangInteger *)get {
  return [super get];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaLangInteger:", "IntValueModel", NULL, 0x1, NULL, NULL },
    { "get", NULL, "Ljava.lang.Integer;", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.Integer;"};
  static const J2ObjcClassInfo _ACIntValueModel = { 2, "IntValueModel", "im.actor.core.viewmodel.generics", NULL, 0x1, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/runtime/mvvm/ValueModel<Ljava/lang/Integer;>;" };
  return &_ACIntValueModel;
}

@end


#line 12
void ACIntValueModel_initWithNSString_withJavaLangInteger_(ACIntValueModel *self, NSString *name, JavaLangInteger *defaultValue) {
  (void) ARValueModel_initWithNSString_withId_(self, name, defaultValue);
}


#line 12
ACIntValueModel *new_ACIntValueModel_initWithNSString_withJavaLangInteger_(NSString *name, JavaLangInteger *defaultValue) {
  ACIntValueModel *self = [ACIntValueModel alloc];
  ACIntValueModel_initWithNSString_withJavaLangInteger_(self, name, defaultValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACIntValueModel)

#pragma clang diagnostic pop

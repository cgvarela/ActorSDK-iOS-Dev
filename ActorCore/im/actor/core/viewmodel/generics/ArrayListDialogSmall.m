//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListDialogSmall.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/viewmodel/DialogSmall.h"
#include "im/actor/core/viewmodel/generics/ArrayListDialogSmall.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListDialogSmall.java"


#line 7
@implementation ACArrayListDialogSmall


#line 10
- (ACDialogSmall *)getWithInt:(jint)index {
  return [super getWithInt:index];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACArrayListDialogSmall_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Lim.actor.core.viewmodel.DialogSmall;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.viewmodel.DialogSmall;"};
  static const J2ObjcClassInfo _ACArrayListDialogSmall = { 2, "ArrayListDialogSmall", "im.actor.core.viewmodel.generics", NULL, 0x1, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/util/ArrayList<Lim/actor/core/viewmodel/DialogSmall;>;" };
  return &_ACArrayListDialogSmall;
}

@end

void ACArrayListDialogSmall_init(ACArrayListDialogSmall *self) {
  (void) JavaUtilArrayList_init(self);
}

ACArrayListDialogSmall *new_ACArrayListDialogSmall_init() {
  ACArrayListDialogSmall *self = [ACArrayListDialogSmall alloc];
  ACArrayListDialogSmall_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACArrayListDialogSmall)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListUserPhone.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/viewmodel/UserPhone.h"
#include "im/actor/core/viewmodel/generics/ArrayListUserPhone.h"
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/Collection.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListUserPhone.java"


#line 15
@implementation ACArrayListUserPhone

- (instancetype)initWithInt:(jint)initialCapacity {
  ACArrayListUserPhone_initWithInt_(self, initialCapacity);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 21
- (instancetype)init {
  ACArrayListUserPhone_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 25
- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  ACArrayListUserPhone_initWithJavaUtilCollection_(self, c);
  return self;
}

- (jint)size {
  return [super size];
}


#line 35
- (jboolean)isEmpty {
  return [super isEmpty];
}


#line 40
- (ACUserPhone *)getWithInt:(jint)index {
  return [super getWithInt:index];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "ArrayListUserPhone", NULL, 0x1, NULL, NULL },
    { "init", "ArrayListUserPhone", NULL, 0x1, NULL, NULL },
    { "initWithJavaUtilCollection:", "ArrayListUserPhone", NULL, 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL, NULL },
    { "getWithInt:", "get", "Lim.actor.core.viewmodel.UserPhone;", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.viewmodel.UserPhone;"};
  static const J2ObjcClassInfo _ACArrayListUserPhone = { 2, "ArrayListUserPhone", "im.actor.core.viewmodel.generics", NULL, 0x1, 6, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/util/ArrayList<Lim/actor/core/viewmodel/UserPhone;>;" };
  return &_ACArrayListUserPhone;
}

@end


#line 17
void ACArrayListUserPhone_initWithInt_(ACArrayListUserPhone *self, jint initialCapacity) {
  (void) JavaUtilArrayList_initWithInt_(self, initialCapacity);
}


#line 17
ACArrayListUserPhone *new_ACArrayListUserPhone_initWithInt_(jint initialCapacity) {
  ACArrayListUserPhone *self = [ACArrayListUserPhone alloc];
  ACArrayListUserPhone_initWithInt_(self, initialCapacity);
  return self;
}


#line 21
void ACArrayListUserPhone_init(ACArrayListUserPhone *self) {
  (void) JavaUtilArrayList_init(self);
}


#line 21
ACArrayListUserPhone *new_ACArrayListUserPhone_init() {
  ACArrayListUserPhone *self = [ACArrayListUserPhone alloc];
  ACArrayListUserPhone_init(self);
  return self;
}


#line 25
void ACArrayListUserPhone_initWithJavaUtilCollection_(ACArrayListUserPhone *self, id<JavaUtilCollection> c) {
  (void) JavaUtilArrayList_initWithJavaUtilCollection_(self, c);
}


#line 25
ACArrayListUserPhone *new_ACArrayListUserPhone_initWithJavaUtilCollection_(id<JavaUtilCollection> c) {
  ACArrayListUserPhone *self = [ACArrayListUserPhone alloc];
  ACArrayListUserPhone_initWithJavaUtilCollection_(self, c);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACArrayListUserPhone)

#pragma clang diagnostic pop

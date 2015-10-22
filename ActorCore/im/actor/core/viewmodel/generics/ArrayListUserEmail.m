//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListUserEmail.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/viewmodel/UserEmail.h"
#include "im/actor/core/viewmodel/generics/ArrayListUserEmail.h"
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/Collection.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListUserEmail.java"


#line 16
@implementation ACArrayListUserEmail

- (instancetype)initWithInt:(jint)initialCapacity {
  ACArrayListUserEmail_initWithInt_(self, initialCapacity);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 22
- (instancetype)init {
  ACArrayListUserEmail_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 26
- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  ACArrayListUserEmail_initWithJavaUtilCollection_(self, c);
  return self;
}

- (jint)size {
  return [super size];
}


#line 36
- (jboolean)isEmpty {
  return [super isEmpty];
}


#line 41
- (ACUserEmail *)getWithInt:(jint)index {
  return [super getWithInt:index];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "ArrayListUserEmail", NULL, 0x1, NULL, NULL },
    { "init", "ArrayListUserEmail", NULL, 0x1, NULL, NULL },
    { "initWithJavaUtilCollection:", "ArrayListUserEmail", NULL, 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL, NULL },
    { "getWithInt:", "get", "Lim.actor.core.viewmodel.UserEmail;", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.viewmodel.UserEmail;"};
  static const J2ObjcClassInfo _ACArrayListUserEmail = { 2, "ArrayListUserEmail", "im.actor.core.viewmodel.generics", NULL, 0x1, 6, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/util/ArrayList<Lim/actor/core/viewmodel/UserEmail;>;" };
  return &_ACArrayListUserEmail;
}

@end


#line 18
void ACArrayListUserEmail_initWithInt_(ACArrayListUserEmail *self, jint initialCapacity) {
  (void) JavaUtilArrayList_initWithInt_(self, initialCapacity);
}


#line 18
ACArrayListUserEmail *new_ACArrayListUserEmail_initWithInt_(jint initialCapacity) {
  ACArrayListUserEmail *self = [ACArrayListUserEmail alloc];
  ACArrayListUserEmail_initWithInt_(self, initialCapacity);
  return self;
}


#line 22
void ACArrayListUserEmail_init(ACArrayListUserEmail *self) {
  (void) JavaUtilArrayList_init(self);
}


#line 22
ACArrayListUserEmail *new_ACArrayListUserEmail_init() {
  ACArrayListUserEmail *self = [ACArrayListUserEmail alloc];
  ACArrayListUserEmail_init(self);
  return self;
}


#line 26
void ACArrayListUserEmail_initWithJavaUtilCollection_(ACArrayListUserEmail *self, id<JavaUtilCollection> c) {
  (void) JavaUtilArrayList_initWithJavaUtilCollection_(self, c);
}


#line 26
ACArrayListUserEmail *new_ACArrayListUserEmail_initWithJavaUtilCollection_(id<JavaUtilCollection> c) {
  ACArrayListUserEmail *self = [ACArrayListUserEmail alloc];
  ACArrayListUserEmail_initWithJavaUtilCollection_(self, c);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACArrayListUserEmail)

#pragma clang diagnostic pop

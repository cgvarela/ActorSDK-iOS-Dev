//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListContactRecord.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/ContactRecord.h"
#include "im/actor/core/viewmodel/generics/ArrayListContactRecord.h"
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/Collection.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListContactRecord.java"


#line 8
@implementation ACArrayListContactRecord

- (instancetype)initWithInt:(jint)capacity {
  ACArrayListContactRecord_initWithInt_(self, capacity);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 14
- (instancetype)init {
  ACArrayListContactRecord_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 17
- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  ACArrayListContactRecord_initWithJavaUtilCollection_(self, collection);
  return self;
}

- (ACContactRecord *)getWithInt:(jint)index {
  return [super getWithInt:index];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "ArrayListContactRecord", NULL, 0x1, NULL, NULL },
    { "init", "ArrayListContactRecord", NULL, 0x1, NULL, NULL },
    { "initWithJavaUtilCollection:", "ArrayListContactRecord", NULL, 0x1, NULL, NULL },
    { "getWithInt:", "get", "Lim.actor.core.entity.ContactRecord;", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.entity.ContactRecord;"};
  static const J2ObjcClassInfo _ACArrayListContactRecord = { 2, "ArrayListContactRecord", "im.actor.core.viewmodel.generics", NULL, 0x1, 4, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Ljava/util/ArrayList<Lim/actor/core/entity/ContactRecord;>;" };
  return &_ACArrayListContactRecord;
}

@end


#line 10
void ACArrayListContactRecord_initWithInt_(ACArrayListContactRecord *self, jint capacity) {
  (void) JavaUtilArrayList_initWithInt_(self, capacity);
}


#line 10
ACArrayListContactRecord *new_ACArrayListContactRecord_initWithInt_(jint capacity) {
  ACArrayListContactRecord *self = [ACArrayListContactRecord alloc];
  ACArrayListContactRecord_initWithInt_(self, capacity);
  return self;
}


#line 14
void ACArrayListContactRecord_init(ACArrayListContactRecord *self) {
  (void) JavaUtilArrayList_init(self);
}


#line 14
ACArrayListContactRecord *new_ACArrayListContactRecord_init() {
  ACArrayListContactRecord *self = [ACArrayListContactRecord alloc];
  ACArrayListContactRecord_init(self);
  return self;
}


#line 17
void ACArrayListContactRecord_initWithJavaUtilCollection_(ACArrayListContactRecord *self, id<JavaUtilCollection> collection) {
  (void) JavaUtilArrayList_initWithJavaUtilCollection_(self, collection);
}


#line 17
ACArrayListContactRecord *new_ACArrayListContactRecord_initWithJavaUtilCollection_(id<JavaUtilCollection> collection) {
  ACArrayListContactRecord *self = [ACArrayListContactRecord alloc];
  ACArrayListContactRecord_initWithJavaUtilCollection_(self, collection);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACArrayListContactRecord)

#pragma clang diagnostic pop

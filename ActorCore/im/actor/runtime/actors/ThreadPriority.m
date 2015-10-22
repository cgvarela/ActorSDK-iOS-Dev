//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/ThreadPriority.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/ThreadPriority.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

__attribute__((unused)) static void ARThreadPriorityEnum_initWithNSString_withInt_(ARThreadPriorityEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ARThreadPriorityEnum *new_ARThreadPriorityEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/ThreadPriority.java"

J2OBJC_INITIALIZED_DEFN(ARThreadPriorityEnum)

ARThreadPriorityEnum *ARThreadPriorityEnum_values_[3];


#line 7
@implementation ARThreadPriorityEnum

+ (ARThreadPriorityEnum *)HIGH {
  return ARThreadPriorityEnum_HIGH;
}

+ (ARThreadPriorityEnum *)NORMAL {
  return ARThreadPriorityEnum_NORMAL;
}

+ (ARThreadPriorityEnum *)LOW {
  return ARThreadPriorityEnum_LOW;
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  ARThreadPriorityEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ARThreadPriorityEnum_values() {
  ARThreadPriorityEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ARThreadPriorityEnum_values_ count:3 type:ARThreadPriorityEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ARThreadPriorityEnum_values();
}

+ (ARThreadPriorityEnum *)valueOfWithNSString:(NSString *)name {
  return ARThreadPriorityEnum_valueOfWithNSString_(name);
}

ARThreadPriorityEnum *ARThreadPriorityEnum_valueOfWithNSString_(NSString *name) {
  ARThreadPriorityEnum_initialize();
  for (int i = 0; i < 3; i++) {
    ARThreadPriorityEnum *e = ARThreadPriorityEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ARThreadPriorityEnum class]) {
    ARThreadPriorityEnum_HIGH = new_ARThreadPriorityEnum_initWithNSString_withInt_(@"HIGH", 0);
    ARThreadPriorityEnum_NORMAL = new_ARThreadPriorityEnum_initWithNSString_withInt_(@"NORMAL", 1);
    ARThreadPriorityEnum_LOW = new_ARThreadPriorityEnum_initWithNSString_withInt_(@"LOW", 2);
    J2OBJC_SET_INITIALIZED(ARThreadPriorityEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "HIGH", "HIGH", 0x4019, "Lim.actor.runtime.actors.ThreadPriority;", &ARThreadPriorityEnum_HIGH, NULL, .constantValue.asLong = 0 },
    { "NORMAL", "NORMAL", 0x4019, "Lim.actor.runtime.actors.ThreadPriority;", &ARThreadPriorityEnum_NORMAL, NULL, .constantValue.asLong = 0 },
    { "LOW", "LOW", 0x4019, "Lim.actor.runtime.actors.ThreadPriority;", &ARThreadPriorityEnum_LOW, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.runtime.actors.ThreadPriority;"};
  static const J2ObjcClassInfo _ARThreadPriorityEnum = { 2, "ThreadPriority", "im.actor.runtime.actors", NULL, 0x4011, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/runtime/actors/ThreadPriority;>;" };
  return &_ARThreadPriorityEnum;
}

@end

void ARThreadPriorityEnum_initWithNSString_withInt_(ARThreadPriorityEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ARThreadPriorityEnum *new_ARThreadPriorityEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ARThreadPriorityEnum *self = [ARThreadPriorityEnum alloc];
  ARThreadPriorityEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARThreadPriorityEnum)

#pragma clang diagnostic pop

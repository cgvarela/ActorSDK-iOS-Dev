//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiSex.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiSex.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Enum.h>
#include <j2objc/java/lang/IllegalArgumentException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiSexEnum () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static void ARApiSexEnum_initWithInt_withNSString_withInt_(ARApiSexEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static ARApiSexEnum *new_ARApiSexEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiSex.java"

J2OBJC_INITIALIZED_DEFN(ARApiSexEnum)

ARApiSexEnum *ARApiSexEnum_values_[4];


#line 8
@implementation ARApiSexEnum

+ (ARApiSexEnum *)UNKNOWN {
  return ARApiSexEnum_UNKNOWN;
}

+ (ARApiSexEnum *)MALE {
  return ARApiSexEnum_MALE;
}

+ (ARApiSexEnum *)FEMALE {
  return ARApiSexEnum_FEMALE;
}

+ (ARApiSexEnum *)UNSUPPORTED_VALUE {
  return ARApiSexEnum_UNSUPPORTED_VALUE;
}


#line 17
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  ARApiSexEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 21
- (jint)getValue {
  return value_;
}

+ (ARApiSexEnum *)parseWithInt:(jint)value {
  return ARApiSexEnum_parseWithInt_(value);
}

IOSObjectArray *ARApiSexEnum_values() {
  ARApiSexEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ARApiSexEnum_values_ count:4 type:ARApiSexEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ARApiSexEnum_values();
}

+ (ARApiSexEnum *)valueOfWithNSString:(NSString *)name {
  return ARApiSexEnum_valueOfWithNSString_(name);
}

ARApiSexEnum *ARApiSexEnum_valueOfWithNSString_(NSString *name) {
  ARApiSexEnum_initialize();
  for (int i = 0; i < 4; i++) {
    ARApiSexEnum *e = ARApiSexEnum_values_[i];
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
  if (self == [ARApiSexEnum class]) {
    ARApiSexEnum_UNKNOWN = new_ARApiSexEnum_initWithInt_withNSString_withInt_(
#line 10
    1, @"UNKNOWN", 0);
    ARApiSexEnum_MALE = new_ARApiSexEnum_initWithInt_withNSString_withInt_(
#line 11
    2, @"MALE", 1);
    ARApiSexEnum_FEMALE = new_ARApiSexEnum_initWithInt_withNSString_withInt_(
#line 12
    3, @"FEMALE", 2);
    ARApiSexEnum_UNSUPPORTED_VALUE = new_ARApiSexEnum_initWithInt_withNSString_withInt_(
#line 13
    -1, @"UNSUPPORTED_VALUE", 3);
    J2OBJC_SET_INITIALIZED(ARApiSexEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "I", 0x1, NULL, NULL },
    { "parseWithInt:", "parse", "Lim.actor.core.api.ApiSex;", 0x9, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "UNKNOWN", "UNKNOWN", 0x4019, "Lim.actor.core.api.ApiSex;", &ARApiSexEnum_UNKNOWN, NULL, .constantValue.asLong = 0 },
    { "MALE", "MALE", 0x4019, "Lim.actor.core.api.ApiSex;", &ARApiSexEnum_MALE, NULL, .constantValue.asLong = 0 },
    { "FEMALE", "FEMALE", 0x4019, "Lim.actor.core.api.ApiSex;", &ARApiSexEnum_FEMALE, NULL, .constantValue.asLong = 0 },
    { "UNSUPPORTED_VALUE", "UNSUPPORTED_VALUE", 0x4019, "Lim.actor.core.api.ApiSex;", &ARApiSexEnum_UNSUPPORTED_VALUE, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.ApiSex;"};
  static const J2ObjcClassInfo _ARApiSexEnum = { 2, "ApiSex", "im.actor.core.api", NULL, 0x4011, 2, methods, 5, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/api/ApiSex;>;" };
  return &_ARApiSexEnum;
}

@end


#line 17
void ARApiSexEnum_initWithInt_withNSString_withInt_(ARApiSexEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  
#line 18
  self->value_ = value;
}


#line 17
ARApiSexEnum *new_ARApiSexEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  ARApiSexEnum *self = [ARApiSexEnum alloc];
  ARApiSexEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 25
ARApiSexEnum *ARApiSexEnum_parseWithInt_(jint value) {
  ARApiSexEnum_initialize();
  
#line 26
  switch (value) {
    case 1:
    
#line 27
    return ARApiSexEnum_UNKNOWN;
    case 2:
    
#line 28
    return ARApiSexEnum_MALE;
    case 3:
    
#line 29
    return ARApiSexEnum_FEMALE;
    default:
    
#line 30
    return ARApiSexEnum_UNSUPPORTED_VALUE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiSexEnum)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContactType.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiContactType.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Enum.h>
#include <j2objc/java/lang/IllegalArgumentException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiContactTypeEnum () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static void ARApiContactTypeEnum_initWithInt_withNSString_withInt_(ARApiContactTypeEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static ARApiContactTypeEnum *new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContactType.java"

J2OBJC_INITIALIZED_DEFN(ARApiContactTypeEnum)

ARApiContactTypeEnum *ARApiContactTypeEnum_values_[5];


#line 8
@implementation ARApiContactTypeEnum

+ (ARApiContactTypeEnum *)PHONE {
  return ARApiContactTypeEnum_PHONE;
}

+ (ARApiContactTypeEnum *)EMAIL {
  return ARApiContactTypeEnum_EMAIL;
}

+ (ARApiContactTypeEnum *)WEB {
  return ARApiContactTypeEnum_WEB;
}

+ (ARApiContactTypeEnum *)SOCIAL {
  return ARApiContactTypeEnum_SOCIAL;
}

+ (ARApiContactTypeEnum *)UNSUPPORTED_VALUE {
  return ARApiContactTypeEnum_UNSUPPORTED_VALUE;
}


#line 18
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  ARApiContactTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 22
- (jint)getValue {
  return value_;
}

+ (ARApiContactTypeEnum *)parseWithInt:(jint)value {
  return ARApiContactTypeEnum_parseWithInt_(value);
}

IOSObjectArray *ARApiContactTypeEnum_values() {
  ARApiContactTypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ARApiContactTypeEnum_values_ count:5 type:ARApiContactTypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ARApiContactTypeEnum_values();
}

+ (ARApiContactTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ARApiContactTypeEnum_valueOfWithNSString_(name);
}

ARApiContactTypeEnum *ARApiContactTypeEnum_valueOfWithNSString_(NSString *name) {
  ARApiContactTypeEnum_initialize();
  for (int i = 0; i < 5; i++) {
    ARApiContactTypeEnum *e = ARApiContactTypeEnum_values_[i];
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
  if (self == [ARApiContactTypeEnum class]) {
    ARApiContactTypeEnum_PHONE = new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(
#line 10
    1, @"PHONE", 0);
    ARApiContactTypeEnum_EMAIL = new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(
#line 11
    2, @"EMAIL", 1);
    ARApiContactTypeEnum_WEB = new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(
#line 12
    3, @"WEB", 2);
    ARApiContactTypeEnum_SOCIAL = new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(
#line 13
    4, @"SOCIAL", 3);
    ARApiContactTypeEnum_UNSUPPORTED_VALUE = new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(
#line 14
    -1, @"UNSUPPORTED_VALUE", 4);
    J2OBJC_SET_INITIALIZED(ARApiContactTypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "I", 0x1, NULL, NULL },
    { "parseWithInt:", "parse", "Lim.actor.core.api.ApiContactType;", 0x9, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PHONE", "PHONE", 0x4019, "Lim.actor.core.api.ApiContactType;", &ARApiContactTypeEnum_PHONE, NULL, .constantValue.asLong = 0 },
    { "EMAIL", "EMAIL", 0x4019, "Lim.actor.core.api.ApiContactType;", &ARApiContactTypeEnum_EMAIL, NULL, .constantValue.asLong = 0 },
    { "WEB", "WEB", 0x4019, "Lim.actor.core.api.ApiContactType;", &ARApiContactTypeEnum_WEB, NULL, .constantValue.asLong = 0 },
    { "SOCIAL", "SOCIAL", 0x4019, "Lim.actor.core.api.ApiContactType;", &ARApiContactTypeEnum_SOCIAL, NULL, .constantValue.asLong = 0 },
    { "UNSUPPORTED_VALUE", "UNSUPPORTED_VALUE", 0x4019, "Lim.actor.core.api.ApiContactType;", &ARApiContactTypeEnum_UNSUPPORTED_VALUE, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.ApiContactType;"};
  static const J2ObjcClassInfo _ARApiContactTypeEnum = { 2, "ApiContactType", "im.actor.core.api", NULL, 0x4011, 2, methods, 6, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/api/ApiContactType;>;" };
  return &_ARApiContactTypeEnum;
}

@end


#line 18
void ARApiContactTypeEnum_initWithInt_withNSString_withInt_(ARApiContactTypeEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  
#line 19
  self->value_ = value;
}


#line 18
ARApiContactTypeEnum *new_ARApiContactTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  ARApiContactTypeEnum *self = [ARApiContactTypeEnum alloc];
  ARApiContactTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 26
ARApiContactTypeEnum *ARApiContactTypeEnum_parseWithInt_(jint value) {
  ARApiContactTypeEnum_initialize();
  
#line 27
  switch (value) {
    case 1:
    
#line 28
    return ARApiContactTypeEnum_PHONE;
    case 2:
    
#line 29
    return ARApiContactTypeEnum_EMAIL;
    case 3:
    
#line 30
    return ARApiContactTypeEnum_WEB;
    case 4:
    
#line 31
    return ARApiContactTypeEnum_SOCIAL;
    default:
    
#line 32
    return ARApiContactTypeEnum_UNSUPPORTED_VALUE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiContactTypeEnum)

#pragma clang diagnostic pop

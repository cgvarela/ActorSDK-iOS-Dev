//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTypingType.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiTypingType.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Enum.h>
#include <j2objc/java/lang/IllegalArgumentException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiTypingTypeEnum () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static void ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(ARApiTypingTypeEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static ARApiTypingTypeEnum *new_ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTypingType.java"

J2OBJC_INITIALIZED_DEFN(ARApiTypingTypeEnum)

ARApiTypingTypeEnum *ARApiTypingTypeEnum_values_[2];


#line 8
@implementation ARApiTypingTypeEnum

+ (ARApiTypingTypeEnum *)TEXT {
  return ARApiTypingTypeEnum_TEXT;
}

+ (ARApiTypingTypeEnum *)UNSUPPORTED_VALUE {
  return ARApiTypingTypeEnum_UNSUPPORTED_VALUE;
}


#line 15
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 19
- (jint)getValue {
  return value_;
}

+ (ARApiTypingTypeEnum *)parseWithInt:(jint)value {
  return ARApiTypingTypeEnum_parseWithInt_(value);
}

IOSObjectArray *ARApiTypingTypeEnum_values() {
  ARApiTypingTypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ARApiTypingTypeEnum_values_ count:2 type:ARApiTypingTypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ARApiTypingTypeEnum_values();
}

+ (ARApiTypingTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ARApiTypingTypeEnum_valueOfWithNSString_(name);
}

ARApiTypingTypeEnum *ARApiTypingTypeEnum_valueOfWithNSString_(NSString *name) {
  ARApiTypingTypeEnum_initialize();
  for (int i = 0; i < 2; i++) {
    ARApiTypingTypeEnum *e = ARApiTypingTypeEnum_values_[i];
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
  if (self == [ARApiTypingTypeEnum class]) {
    ARApiTypingTypeEnum_TEXT = new_ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(
#line 10
    0, @"TEXT", 0);
    ARApiTypingTypeEnum_UNSUPPORTED_VALUE = new_ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(
#line 11
    -1, @"UNSUPPORTED_VALUE", 1);
    J2OBJC_SET_INITIALIZED(ARApiTypingTypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "I", 0x1, NULL, NULL },
    { "parseWithInt:", "parse", "Lim.actor.core.api.ApiTypingType;", 0x9, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TEXT", "TEXT", 0x4019, "Lim.actor.core.api.ApiTypingType;", &ARApiTypingTypeEnum_TEXT, NULL, .constantValue.asLong = 0 },
    { "UNSUPPORTED_VALUE", "UNSUPPORTED_VALUE", 0x4019, "Lim.actor.core.api.ApiTypingType;", &ARApiTypingTypeEnum_UNSUPPORTED_VALUE, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.ApiTypingType;"};
  static const J2ObjcClassInfo _ARApiTypingTypeEnum = { 2, "ApiTypingType", "im.actor.core.api", NULL, 0x4011, 2, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/api/ApiTypingType;>;" };
  return &_ARApiTypingTypeEnum;
}

@end


#line 15
void ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(ARApiTypingTypeEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  
#line 16
  self->value_ = value;
}


#line 15
ARApiTypingTypeEnum *new_ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  ARApiTypingTypeEnum *self = [ARApiTypingTypeEnum alloc];
  ARApiTypingTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 23
ARApiTypingTypeEnum *ARApiTypingTypeEnum_parseWithInt_(jint value) {
  ARApiTypingTypeEnum_initialize();
  
#line 24
  switch (value) {
    case 0:
    
#line 25
    return ARApiTypingTypeEnum_TEXT;
    default:
    
#line 26
    return ARApiTypingTypeEnum_UNSUPPORTED_VALUE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiTypingTypeEnum)

#pragma clang diagnostic pop

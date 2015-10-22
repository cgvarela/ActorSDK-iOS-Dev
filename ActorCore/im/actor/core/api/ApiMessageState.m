//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiMessageState.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiMessageState.h"
#include "java/io/IOException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiMessageStateEnum () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static void ARApiMessageStateEnum_initWithInt_withNSString_withInt_(ARApiMessageStateEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static ARApiMessageStateEnum *new_ARApiMessageStateEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiMessageState.java"

J2OBJC_INITIALIZED_DEFN(ARApiMessageStateEnum)

ARApiMessageStateEnum *ARApiMessageStateEnum_values_[4];


#line 8
@implementation ARApiMessageStateEnum

+ (ARApiMessageStateEnum *)SENT {
  return ARApiMessageStateEnum_SENT;
}

+ (ARApiMessageStateEnum *)RECEIVED {
  return ARApiMessageStateEnum_RECEIVED;
}

+ (ARApiMessageStateEnum *)READ {
  return ARApiMessageStateEnum_READ;
}

+ (ARApiMessageStateEnum *)UNSUPPORTED_VALUE {
  return ARApiMessageStateEnum_UNSUPPORTED_VALUE;
}


#line 17
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  ARApiMessageStateEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 21
- (jint)getValue {
  return value_;
}

+ (ARApiMessageStateEnum *)parseWithInt:(jint)value {
  return ARApiMessageStateEnum_parseWithInt_(value);
}

IOSObjectArray *ARApiMessageStateEnum_values() {
  ARApiMessageStateEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ARApiMessageStateEnum_values_ count:4 type:ARApiMessageStateEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ARApiMessageStateEnum_values();
}

+ (ARApiMessageStateEnum *)valueOfWithNSString:(NSString *)name {
  return ARApiMessageStateEnum_valueOfWithNSString_(name);
}

ARApiMessageStateEnum *ARApiMessageStateEnum_valueOfWithNSString_(NSString *name) {
  ARApiMessageStateEnum_initialize();
  for (int i = 0; i < 4; i++) {
    ARApiMessageStateEnum *e = ARApiMessageStateEnum_values_[i];
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
  if (self == [ARApiMessageStateEnum class]) {
    ARApiMessageStateEnum_SENT = new_ARApiMessageStateEnum_initWithInt_withNSString_withInt_(
#line 10
    1, @"SENT", 0);
    ARApiMessageStateEnum_RECEIVED = new_ARApiMessageStateEnum_initWithInt_withNSString_withInt_(
#line 11
    2, @"RECEIVED", 1);
    ARApiMessageStateEnum_READ = new_ARApiMessageStateEnum_initWithInt_withNSString_withInt_(
#line 12
    3, @"READ", 2);
    ARApiMessageStateEnum_UNSUPPORTED_VALUE = new_ARApiMessageStateEnum_initWithInt_withNSString_withInt_(
#line 13
    -1, @"UNSUPPORTED_VALUE", 3);
    J2OBJC_SET_INITIALIZED(ARApiMessageStateEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "I", 0x1, NULL, NULL },
    { "parseWithInt:", "parse", "Lim.actor.core.api.ApiMessageState;", 0x9, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SENT", "SENT", 0x4019, "Lim.actor.core.api.ApiMessageState;", &ARApiMessageStateEnum_SENT, NULL, .constantValue.asLong = 0 },
    { "RECEIVED", "RECEIVED", 0x4019, "Lim.actor.core.api.ApiMessageState;", &ARApiMessageStateEnum_RECEIVED, NULL, .constantValue.asLong = 0 },
    { "READ", "READ", 0x4019, "Lim.actor.core.api.ApiMessageState;", &ARApiMessageStateEnum_READ, NULL, .constantValue.asLong = 0 },
    { "UNSUPPORTED_VALUE", "UNSUPPORTED_VALUE", 0x4019, "Lim.actor.core.api.ApiMessageState;", &ARApiMessageStateEnum_UNSUPPORTED_VALUE, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.ApiMessageState;"};
  static const J2ObjcClassInfo _ARApiMessageStateEnum = { 2, "ApiMessageState", "im.actor.core.api", NULL, 0x4011, 2, methods, 5, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/api/ApiMessageState;>;" };
  return &_ARApiMessageStateEnum;
}

@end


#line 17
void ARApiMessageStateEnum_initWithInt_withNSString_withInt_(ARApiMessageStateEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  
#line 18
  self->value_ = value;
}


#line 17
ARApiMessageStateEnum *new_ARApiMessageStateEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  ARApiMessageStateEnum *self = [ARApiMessageStateEnum alloc];
  ARApiMessageStateEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 25
ARApiMessageStateEnum *ARApiMessageStateEnum_parseWithInt_(jint value) {
  ARApiMessageStateEnum_initialize();
  
#line 26
  switch (value) {
    case 1:
    
#line 27
    return ARApiMessageStateEnum_SENT;
    case 2:
    
#line 28
    return ARApiMessageStateEnum_RECEIVED;
    case 3:
    
#line 29
    return ARApiMessageStateEnum_READ;
    default:
    
#line 30
    return ARApiMessageStateEnum_UNSUPPORTED_VALUE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiMessageStateEnum)

#pragma clang diagnostic pop
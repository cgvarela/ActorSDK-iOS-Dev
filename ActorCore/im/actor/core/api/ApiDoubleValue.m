//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDoubleValue.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiDoubleValue.h"
#include "im/actor/core/api/ApiRawValue.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiDoubleValue () {
 @public
  jdouble value_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDoubleValue.java"


#line 17
@implementation ARApiDoubleValue


#line 21
- (instancetype)initWithDouble:(jdouble)value {
  ARApiDoubleValue_initWithDouble_(self, value);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  ARApiDoubleValue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 29
- (jint)getHeader {
  return 4;
}

- (jdouble)getValue {
  return self->value_;
}


#line 38
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->value_ = [((ARBserValues *) nil_chk(values)) getDoubleWithInt:1];
}


#line 43
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeDoubleWithInt:1 withDouble:self->value_];
}


#line 48
- (NSString *)description {
  NSString *res = @"struct DoubleValue{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDouble:", "ApiDoubleValue", NULL, 0x1, NULL, NULL },
    { "init", "ApiDoubleValue", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "getValue", NULL, "D", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "value_", NULL, 0x2, "D", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiDoubleValue = { 2, "ApiDoubleValue", "im.actor.core.api", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiDoubleValue;
}

@end


#line 21
void ARApiDoubleValue_initWithDouble_(ARApiDoubleValue *self, jdouble value) {
  (void) ARApiRawValue_init(self);
  
#line 22
  self->value_ = value;
}


#line 21
ARApiDoubleValue *new_ARApiDoubleValue_initWithDouble_(jdouble value) {
  ARApiDoubleValue *self = [ARApiDoubleValue alloc];
  ARApiDoubleValue_initWithDouble_(self, value);
  return self;
}


#line 25
void ARApiDoubleValue_init(ARApiDoubleValue *self) {
  (void) ARApiRawValue_init(self);
}


#line 25
ARApiDoubleValue *new_ARApiDoubleValue_init() {
  ARApiDoubleValue *self = [ARApiDoubleValue alloc];
  ARApiDoubleValue_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiDoubleValue)

#pragma clang diagnostic pop
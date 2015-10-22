//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/json/JSONException.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/json/JSONException.h"
#include <j2objc/java/lang/RuntimeException.h>
#include <j2objc/java/lang/Throwable.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ARJSONException_serialVersionUID 0LL

@interface ARJSONException () {
 @public
  JavaLangThrowable *cause_;
}

@end

J2OBJC_FIELD_SETTER(ARJSONException, cause_, JavaLangThrowable *)

J2OBJC_STATIC_FIELD_GETTER(ARJSONException, serialVersionUID, jlong)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/json/JSONException.java"


#line 13
@implementation ARJSONException


#line 23
- (instancetype)initWithNSString:(NSString *)message {
  ARJSONException_initWithNSString_(self, message);
  return self;
}


#line 31
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  ARJSONException_initWithJavaLangThrowable_(self, cause);
  return self;
}


#line 44
- (JavaLangThrowable *)getCause {
  return self->cause_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "JSONException", NULL, 0x1, NULL, NULL },
    { "initWithJavaLangThrowable:", "JSONException", NULL, 0x1, NULL, NULL },
    { "getCause", NULL, "Ljava.lang.Throwable;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = ARJSONException_serialVersionUID },
    { "cause_", NULL, 0x2, "Ljava.lang.Throwable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARJSONException = { 2, "JSONException", "im.actor.runtime.json", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARJSONException;
}

@end


#line 23
void ARJSONException_initWithNSString_(ARJSONException *self, NSString *message) {
  (void) JavaLangRuntimeException_initWithNSString_(self, message);
}


#line 23
ARJSONException *new_ARJSONException_initWithNSString_(NSString *message) {
  ARJSONException *self = [ARJSONException alloc];
  ARJSONException_initWithNSString_(self, message);
  return self;
}


#line 31
void ARJSONException_initWithJavaLangThrowable_(ARJSONException *self, JavaLangThrowable *cause) {
  (void) JavaLangRuntimeException_initWithNSString_(self, [((JavaLangThrowable *) nil_chk(cause)) getMessage]);
  self->cause_ = cause;
}


#line 31
ARJSONException *new_ARJSONException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  ARJSONException *self = [ARJSONException alloc];
  ARJSONException_initWithJavaLangThrowable_(self, cause);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARJSONException)

#pragma clang diagnostic pop

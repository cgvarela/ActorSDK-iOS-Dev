//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/IncorrectTypeException.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/bser/IncorrectTypeException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/IncorrectTypeException.java"


#line 7
@implementation ARIncorrectTypeException

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 8
- (instancetype)init {
  ARIncorrectTypeException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 11
- (instancetype)initWithNSString:(NSString *)detailMessage {
  ARIncorrectTypeException_initWithNSString_(self, detailMessage);
  return self;
}


#line 15
- (instancetype)initWithNSString:(NSString *)detailMessage
           withJavaLangThrowable:(JavaLangThrowable *)throwable {
  ARIncorrectTypeException_initWithNSString_withJavaLangThrowable_(self, detailMessage, throwable);
  return self;
}


#line 19
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)throwable {
  ARIncorrectTypeException_initWithJavaLangThrowable_(self, throwable);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IncorrectTypeException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "IncorrectTypeException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withJavaLangThrowable:", "IncorrectTypeException", NULL, 0x1, NULL, NULL },
    { "initWithJavaLangThrowable:", "IncorrectTypeException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARIncorrectTypeException = { 2, "IncorrectTypeException", "im.actor.runtime.bser", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARIncorrectTypeException;
}

@end


#line 8
void ARIncorrectTypeException_init(ARIncorrectTypeException *self) {
  (void) JavaLangRuntimeException_init(self);
}


#line 8
ARIncorrectTypeException *new_ARIncorrectTypeException_init() {
  ARIncorrectTypeException *self = [ARIncorrectTypeException alloc];
  ARIncorrectTypeException_init(self);
  return self;
}


#line 11
void ARIncorrectTypeException_initWithNSString_(ARIncorrectTypeException *self, NSString *detailMessage) {
  (void) JavaLangRuntimeException_initWithNSString_(self, detailMessage);
}


#line 11
ARIncorrectTypeException *new_ARIncorrectTypeException_initWithNSString_(NSString *detailMessage) {
  ARIncorrectTypeException *self = [ARIncorrectTypeException alloc];
  ARIncorrectTypeException_initWithNSString_(self, detailMessage);
  return self;
}


#line 15
void ARIncorrectTypeException_initWithNSString_withJavaLangThrowable_(ARIncorrectTypeException *self, NSString *detailMessage, JavaLangThrowable *throwable) {
  (void) JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, detailMessage, throwable);
}


#line 15
ARIncorrectTypeException *new_ARIncorrectTypeException_initWithNSString_withJavaLangThrowable_(NSString *detailMessage, JavaLangThrowable *throwable) {
  ARIncorrectTypeException *self = [ARIncorrectTypeException alloc];
  ARIncorrectTypeException_initWithNSString_withJavaLangThrowable_(self, detailMessage, throwable);
  return self;
}


#line 19
void ARIncorrectTypeException_initWithJavaLangThrowable_(ARIncorrectTypeException *self, JavaLangThrowable *throwable) {
  (void) JavaLangRuntimeException_initWithJavaLangThrowable_(self, throwable);
}


#line 19
ARIncorrectTypeException *new_ARIncorrectTypeException_initWithJavaLangThrowable_(JavaLangThrowable *throwable) {
  ARIncorrectTypeException *self = [ARIncorrectTypeException alloc];
  ARIncorrectTypeException_initWithJavaLangThrowable_(self, throwable);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARIncorrectTypeException)

#pragma clang diagnostic pop
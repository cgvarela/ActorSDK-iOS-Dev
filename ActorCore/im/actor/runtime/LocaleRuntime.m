//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LocaleRuntime.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/LocaleRuntime.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARLocaleRuntime : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LocaleRuntime.java"


#line 5
@implementation ARLocaleRuntime

+ (IOSObjectArray *)__annotations_getCurrentLocale {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getCurrentLocale"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_formatDateWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"formatDate:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getCurrentLocale", NULL, "Ljava.lang.String;", 0x401, NULL, NULL },
    { "formatDate:", "formatDate", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "formatTimeWithLong:", "formatTime", "Ljava.lang.String;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARLocaleRuntime = { 2, "LocaleRuntime", "im.actor.runtime", NULL, 0x609, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARLocaleRuntime;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARLocaleRuntime)

#pragma clang diagnostic pop
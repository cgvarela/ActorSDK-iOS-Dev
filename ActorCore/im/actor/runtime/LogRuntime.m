//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LogRuntime.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/LogRuntime.h"
#include <j2objc/java/lang/Throwable.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARLogRuntime : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LogRuntime.java"


#line 12
@implementation ARLogRuntime

+ (IOSObjectArray *)__annotations_wWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"warringWithTag:withMessage:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_eWithNSString_withJavaLangThrowable_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"errorWithTag:withThrowable:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_dWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"debugWithTag:withMessage:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_vWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"verboseWithTag:withMessage:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "warringWithTag:withMessage:", "w", "V", 0x401, NULL, NULL },
    { "errorWithTag:withThrowable:", "e", "V", 0x401, NULL, NULL },
    { "debugWithTag:withMessage:", "d", "V", 0x401, NULL, NULL },
    { "verboseWithTag:withMessage:", "v", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARLogRuntime = { 2, "LogRuntime", "im.actor.runtime", NULL, 0x609, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARLogRuntime;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARLogRuntime)

#pragma clang diagnostic pop

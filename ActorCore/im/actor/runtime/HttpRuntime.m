//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/HttpRuntime.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/HttpRuntime.h"
#include "im/actor/runtime/http/FileDownloadCallback.h"
#include "im/actor/runtime/http/FileUploadCallback.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARHttpRuntime : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/HttpRuntime.java"


#line 15
@implementation ARHttpRuntime

+ (IOSObjectArray *)__annotations_getMethodWithNSString_withInt_withInt_withInt_withARFileDownloadCallback_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getMethodWithUrl:withStartOffset:withSize:withTotalSize:withCallback:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_putMethodWithNSString_withByteArray_withARFileUploadCallback_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"putMethodWithUrl:withContents:withCallback:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getMethodWithUrl:withStartOffset:withSize:withTotalSize:withCallback:", "getMethod", "V", 0x401, NULL, NULL },
    { "putMethodWithUrl:withContents:withCallback:", "putMethod", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARHttpRuntime = { 2, "HttpRuntime", "im.actor.runtime", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARHttpRuntime;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARHttpRuntime)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/ListProcessor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/generic/mvvm/ListProcessor.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARListProcessor : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/ListProcessor.java"


#line 10
@implementation ARListProcessor

+ (IOSObjectArray *)__annotations_processWithJavaUtilList_withId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"processWithItems:withPrevious:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "processWithItems:withPrevious:", "process", "Ljava.lang.Object;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARListProcessor = { 2, "ListProcessor", "im.actor.runtime.generic.mvvm", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_ARListProcessor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARListProcessor)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LifecycleRuntime.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/LifecycleRuntime.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARLifecycleRuntime : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LifecycleRuntime.java"


#line 9
@implementation ARLifecycleRuntime

+ (IOSObjectArray *)__annotations_killApp {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"killApp"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "killApp", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARLifecycleRuntime = { 2, "LifecycleRuntime", "im.actor.runtime", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARLifecycleRuntime;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARLifecycleRuntime)

#pragma clang diagnostic pop
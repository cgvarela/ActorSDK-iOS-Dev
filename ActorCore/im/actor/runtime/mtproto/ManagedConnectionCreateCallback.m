//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ManagedConnectionCreateCallback.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/mtproto/ManagedConnection.h"
#include "im/actor/runtime/mtproto/ManagedConnectionCreateCallback.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARManagedConnectionCreateCallback : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ManagedConnectionCreateCallback.java"


#line 9
@implementation ARManagedConnectionCreateCallback

+ (IOSObjectArray *)__annotations_onConnectionCreatedWithARManagedConnection_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onConnectionCreated:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onConnectionCreateErrorWithARManagedConnection_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onConnectionCreateError:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onConnectionCreated:", "onConnectionCreated", "V", 0x401, NULL, NULL },
    { "onConnectionCreateError:", "onConnectionCreateError", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARManagedConnectionCreateCallback = { 2, "ManagedConnectionCreateCallback", "im.actor.runtime.mtproto", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARManagedConnectionCreateCallback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARManagedConnectionCreateCallback)

#pragma clang diagnostic pop

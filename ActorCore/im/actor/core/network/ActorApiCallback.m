//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/ActorApiCallback.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/core/network/ActorApiCallback.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACActorApiCallback : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/ActorApiCallback.java"


#line 12
@implementation ACActorApiCallback

+ (IOSObjectArray *)__annotations_onAuthIdInvalidated {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onAuthIdInvalidated"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onNewSessionCreated {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onNewSessionCreated"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onUpdateReceivedWithId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onUpdateReceived:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onConnectionsChangedWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onConnectionsChanged:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onAuthIdInvalidated", NULL, "V", 0x401, NULL, NULL },
    { "onNewSessionCreated", NULL, "V", 0x401, NULL, NULL },
    { "onUpdateReceived:", "onUpdateReceived", "V", 0x401, NULL, NULL },
    { "onConnectionsChanged:", "onConnectionsChanged", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACActorApiCallback = { 2, "ActorApiCallback", "im.actor.core.network", NULL, 0x609, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACActorApiCallback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ACActorApiCallback)

#pragma clang diagnostic pop
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/NetworkRuntime.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/NetworkRuntime.h"
#include "im/actor/runtime/mtproto/ConnectionCallback.h"
#include "im/actor/runtime/mtproto/ConnectionEndpoint.h"
#include "im/actor/runtime/mtproto/CreateConnectionCallback.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARNetworkRuntime : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/NetworkRuntime.java"


#line 16
@implementation ARNetworkRuntime

+ (IOSObjectArray *)__annotations_createConnectionWithInt_withInt_withInt_withInt_withARConnectionEndpoint_withARConnectionCallback_withARCreateConnectionCallback_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"createConnectionWithId:withMTVersion:withApiMajor:withApiMinor:withEndpoint:withCallback:withCreateCallback:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createConnectionWithId:withMTVersion:withApiMajor:withApiMinor:withEndpoint:withCallback:withCreateCallback:", "createConnection", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARNetworkRuntime = { 2, "NetworkRuntime", "im.actor.runtime", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARNetworkRuntime;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARNetworkRuntime)

#pragma clang diagnostic pop

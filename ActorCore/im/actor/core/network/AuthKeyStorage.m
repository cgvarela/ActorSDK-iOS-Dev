//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/AuthKeyStorage.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/core/network/AuthKeyStorage.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACAuthKeyStorage : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/AuthKeyStorage.java"


#line 9
@implementation ACAuthKeyStorage

+ (IOSObjectArray *)__annotations_getAuthKey {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getAuthKey"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_saveAuthKeyWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"saveAuthKey:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getAuthKey", NULL, "J", 0x401, NULL, NULL },
    { "saveAuthKey:", "saveAuthKey", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACAuthKeyStorage = { 2, "AuthKeyStorage", "im.actor.core.network", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACAuthKeyStorage;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ACAuthKeyStorage)

#pragma clang diagnostic pop

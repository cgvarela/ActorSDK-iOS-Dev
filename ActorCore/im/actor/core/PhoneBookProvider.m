//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/PhoneBookProvider.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/core/PhoneBookProvider.h"
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPhoneBookProvider : NSObject

@end

@interface ACPhoneBookProvider_Callback : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/PhoneBookProvider.java"


#line 17
@implementation ACPhoneBookProvider

+ (IOSObjectArray *)__annotations_loadPhoneBookWithACPhoneBookProvider_Callback_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"loadPhoneBookWithCallback:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "loadPhoneBookWithCallback:", "loadPhoneBook", "V", 0x401, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lim.actor.core.PhoneBookProvider$Callback;"};
  static const J2ObjcClassInfo _ACPhoneBookProvider = { 2, "PhoneBookProvider", "im.actor.core", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ACPhoneBookProvider;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ACPhoneBookProvider)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/PhoneBookProvider.java"


#line 29
@implementation ACPhoneBookProvider_Callback

+ (IOSObjectArray *)__annotations_onLoadedWithJavaUtilList_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onLoadedWithContacts:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onLoadedWithContacts:", "onLoaded", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACPhoneBookProvider_Callback = { 2, "Callback", "im.actor.core", "PhoneBookProvider", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPhoneBookProvider_Callback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ACPhoneBookProvider_Callback)

#pragma clang diagnostic pop

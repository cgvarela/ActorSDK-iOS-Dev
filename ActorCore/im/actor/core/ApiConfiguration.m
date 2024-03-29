//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/ApiConfiguration.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/core/ApiConfiguration.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACApiConfiguration () {
 @public
  NSString *appTitle_;
  jint appId_;
  NSString *appKey_;
  NSString *deviceTitle_;
  NSString *deviceString_;
}

@end

J2OBJC_FIELD_SETTER(ACApiConfiguration, appTitle_, NSString *)
J2OBJC_FIELD_SETTER(ACApiConfiguration, appKey_, NSString *)
J2OBJC_FIELD_SETTER(ACApiConfiguration, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ACApiConfiguration, deviceString_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/ApiConfiguration.java"


#line 12
@implementation ACApiConfiguration


#line 32
- (instancetype)initWithAppTitle:(NSString *)appTitle
                       withAppId:(jint)appId
                      withAppKey:(NSString *)appKey
                 withDeviceTitle:(NSString *)deviceTitle
                    withDeviceId:(NSString *)deviceString {
  ACApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(self, appTitle, appId, appKey, deviceTitle, deviceString);
  return self;
}


#line 46
- (NSString *)getAppTitle {
  return appTitle_;
}


#line 56
- (jint)getAppId {
  return appId_;
}


#line 66
- (NSString *)getAppKey {
  return appKey_;
}


#line 76
- (NSString *)getDeviceTitle {
  return deviceTitle_;
}


#line 86
- (NSString *)getDeviceString {
  return deviceString_;
}

+ (IOSObjectArray *)__annotations_initWithNSString_withInt_withNSString_withNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"initWithAppTitle:withAppId:withAppKey:withDeviceTitle:withDeviceId:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getAppTitle {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getAppTitle"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getAppId {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getAppId"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getAppKey {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getAppKey"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getDeviceTitle {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getDeviceTitle"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getDeviceString {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getDeviceString"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithAppTitle:withAppId:withAppKey:withDeviceTitle:withDeviceId:", "ApiConfiguration", NULL, 0x1, NULL, NULL },
    { "getAppTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAppId", NULL, "I", 0x1, NULL, NULL },
    { "getAppKey", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDeviceTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDeviceString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "appTitle_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "appId_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "appKey_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "deviceTitle_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "deviceString_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACApiConfiguration = { 2, "ApiConfiguration", "im.actor.core", NULL, 0x1, 6, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACApiConfiguration;
}

@end


#line 32
void ACApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(ACApiConfiguration *self, NSString *appTitle, jint appId, NSString *appKey, NSString *deviceTitle, NSString *deviceString) {
  (void) NSObject_init(self);
  
#line 33
  self->appTitle_ = appTitle;
  self->appId_ = appId;
  self->appKey_ = appKey;
  self->deviceTitle_ = deviceTitle;
  self->deviceString_ = deviceString;
}


#line 32
ACApiConfiguration *new_ACApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(NSString *appTitle, jint appId, NSString *appKey, NSString *deviceTitle, NSString *deviceString) {
  ACApiConfiguration *self = [ACApiConfiguration alloc];
  ACApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(self, appTitle, appId, appKey, deviceTitle, deviceString);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACApiConfiguration)

#pragma clang diagnostic pop

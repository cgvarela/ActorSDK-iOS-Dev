//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/ConfigurationBuilder.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSObjectArray.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/core/ApiConfiguration.h"
#include "im/actor/core/Configuration.h"
#include "im/actor/core/ConfigurationBuilder.h"
#include "im/actor/core/ConfigurationExtension.h"
#include "im/actor/core/DeviceCategory.h"
#include "im/actor/core/Extension.h"
#include "im/actor/core/NotificationProvider.h"
#include "im/actor/core/PhoneBookProvider.h"
#include "im/actor/core/PlatformType.h"
#include "im/actor/runtime/mtproto/ConnectionEndpoint.h"
#include <j2objc/java/lang/Integer.h>
#include <j2objc/java/lang/RuntimeException.h>
#include <j2objc/java/util/ArrayList.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACConfigurationBuilder () {
 @public
  JavaUtilArrayList *extensions_;
  JavaUtilArrayList *endpoints_;
  id<ACPhoneBookProvider> phoneBookProvider_;
  jboolean enableContactsLogging_;
  jboolean enableNetworkLogging_;
  jboolean enableFilesLogging_;
  id<ACNotificationProvider> notificationProvider_;
  ACApiConfiguration *apiConfiguration_;
  ACPlatformTypeEnum *platformType_;
  ACDeviceCategoryEnum *deviceCategory_;
  jint minDelay_;
  jint maxDelay_;
  jint maxFailureCount_;
}

@end

J2OBJC_FIELD_SETTER(ACConfigurationBuilder, extensions_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ACConfigurationBuilder, endpoints_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ACConfigurationBuilder, phoneBookProvider_, id<ACPhoneBookProvider>)
J2OBJC_FIELD_SETTER(ACConfigurationBuilder, notificationProvider_, id<ACNotificationProvider>)
J2OBJC_FIELD_SETTER(ACConfigurationBuilder, apiConfiguration_, ACApiConfiguration *)
J2OBJC_FIELD_SETTER(ACConfigurationBuilder, platformType_, ACPlatformTypeEnum *)
J2OBJC_FIELD_SETTER(ACConfigurationBuilder, deviceCategory_, ACDeviceCategoryEnum *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/ConfigurationBuilder.java"


#line 18
@implementation ACConfigurationBuilder


#line 49
- (ACConfigurationBuilder *)setPlatformType:(ACPlatformTypeEnum *)platformType {
  self->platformType_ = platformType;
  return self;
}


#line 62
- (ACConfigurationBuilder *)setDeviceCategory:(ACDeviceCategoryEnum *)deviceCategory {
  self->deviceCategory_ = deviceCategory;
  return self;
}


#line 75
- (ACConfigurationBuilder *)setApiConfiguration:(ACApiConfiguration *)apiConfiguration {
  self->apiConfiguration_ = apiConfiguration;
  return self;
}


#line 88
- (ACConfigurationBuilder *)setNotificationProvider:(id<ACNotificationProvider>)notificationProvider {
  self->notificationProvider_ = notificationProvider;
  return self;
}


#line 101
- (ACConfigurationBuilder *)setEnableContactsLogging:(jboolean)enableContactsLogging {
  self->enableContactsLogging_ = enableContactsLogging;
  return self;
}


#line 114
- (ACConfigurationBuilder *)setEnableNetworkLogging:(jboolean)enableNetworkLogging {
  self->enableNetworkLogging_ = enableNetworkLogging;
  return self;
}


#line 127
- (ACConfigurationBuilder *)setEnableFilesLogging:(jboolean)enableFilesLogging {
  self->enableFilesLogging_ = enableFilesLogging;
  return self;
}


#line 140
- (ACConfigurationBuilder *)setPhoneBookProvider:(id<ACPhoneBookProvider>)phoneBookProvider {
  self->phoneBookProvider_ = phoneBookProvider;
  return self;
}


#line 152
- (ACConfigurationBuilder *)setMinDelay:(jint)minDelay {
  self->minDelay_ = minDelay;
  return self;
}


#line 164
- (ACConfigurationBuilder *)setMaxDelay:(jint)maxDelay {
  self->maxDelay_ = maxDelay;
  return self;
}


#line 176
- (ACConfigurationBuilder *)setMaxFailureCount:(jint)maxFailureCount {
  self->maxFailureCount_ = maxFailureCount;
  return self;
}


#line 188
- (ACConfigurationBuilder *)addExtensionWithNSString:(NSString *)key
                                     withACExtension:(id<ACExtension>)extension {
  [((JavaUtilArrayList *) nil_chk(self->extensions_)) addWithId:new_ACConfigurationExtension_initWithNSString_withACExtension_(key, extension)];
  return self;
}


#line 206
- (ACConfigurationBuilder *)addEndpoint:(NSString *)url {
  
#line 209
  NSString *scheme = [((NSString *) nil_chk([url substring:0 endIndex:[((NSString *) nil_chk(url)) indexOfString:@":"]])) lowercaseString];
  NSString *host = [url substring:[url indexOfString:@"://"] + ((jint) [@"://" length])];
  if ([((NSString *) nil_chk(host)) hasSuffix:@"/"]) {
    host = [host substring:0 endIndex:((jint) [host length]) - 1];
  }
  jint port = -1;
  if ([((NSString *) nil_chk(host)) contains:@":"]) {
    IOSObjectArray *parts = [host split:@":"];
    host = IOSObjectArray_Get(nil_chk(parts), 0);
    port = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(parts, 1));
  }
  
#line 221
  if ([((NSString *) nil_chk(scheme)) isEqual:@"ssl"] || [scheme isEqual:@"tls"]) {
    if (port <= 0) {
      port = 443;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:new_ARConnectionEndpoint_initWithHost_withPort_withType_(host, port, JreLoadStatic(ARConnectionEndpoint_TypeEnum, TCP_TLS))];
  }
  else
#line 226
  if ([scheme isEqual:@"tcp"]) {
    if (port <= 0) {
      port = 80;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:new_ARConnectionEndpoint_initWithHost_withPort_withType_(host, port, JreLoadStatic(ARConnectionEndpoint_TypeEnum, TCP))];
  }
  else
#line 231
  if ([scheme isEqual:@"ws"]) {
    if (port <= 0) {
      port = 80;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:new_ARConnectionEndpoint_initWithHost_withPort_withType_(host, port, JreLoadStatic(ARConnectionEndpoint_TypeEnum, WS))];
  }
  else
#line 236
  if ([scheme isEqual:@"wss"]) {
    if (port <= 0) {
      port = 443;
    }
    [((JavaUtilArrayList *) nil_chk(endpoints_)) addWithId:new_ARConnectionEndpoint_initWithHost_withPort_withType_(host, port, JreLoadStatic(ARConnectionEndpoint_TypeEnum, WS_TLS))];
  }
  else {
    
#line 242
    @throw new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$$", @"Unknown scheme type: ", scheme));
  }
  return self;
}


#line 254
- (ACConfiguration *)build {
  if ([((JavaUtilArrayList *) nil_chk(endpoints_)) size] == 0) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Endpoints not set");
  }
  if (phoneBookProvider_ == nil) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Phonebook Provider not set");
  }
  if (apiConfiguration_ == nil) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Api Configuration not set");
  }
  if (deviceCategory_ == nil) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Device Category not set");
  }
  if (platformType_ == nil) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"App Category not set");
  }
  return new_ACConfiguration_initWithARConnectionEndpointArray_withACPhoneBookProvider_withACNotificationProvider_withACApiConfiguration_withBoolean_withBoolean_withBoolean_withACDeviceCategoryEnum_withACPlatformTypeEnum_withInt_withInt_withInt_withACConfigurationExtensionArray_([endpoints_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[endpoints_ size] type:ARConnectionEndpoint_class_()]],
#line 271
  phoneBookProvider_, notificationProvider_,
#line 272
  apiConfiguration_, enableContactsLogging_, enableNetworkLogging_,
#line 273
  enableFilesLogging_, deviceCategory_, platformType_,
#line 274
  minDelay_, maxDelay_, maxFailureCount_,
#line 275
  [extensions_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(extensions_)) size] type:ACConfigurationExtension_class_()]]);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACConfigurationBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_setPlatformTypeWithACPlatformTypeEnum_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setPlatformType:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setDeviceCategoryWithACDeviceCategoryEnum_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setDeviceCategory:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setApiConfigurationWithACApiConfiguration_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setApiConfiguration:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setNotificationProviderWithACNotificationProvider_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setNotificationProvider:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setEnableContactsLoggingWithBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setEnableContactsLogging:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setEnableNetworkLoggingWithBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setEnableNetworkLogging:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setEnableFilesLoggingWithBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setEnableFilesLogging:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setPhoneBookProviderWithACPhoneBookProvider_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setPhoneBookProvider:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setMinDelayWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setMinDelay:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setMaxDelayWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setMaxDelay:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_setMaxFailureCountWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setMaxFailureCount:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_addEndpointWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"addEndpoint:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_build {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"build"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setPlatformType:", "setPlatformType", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setDeviceCategory:", "setDeviceCategory", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setApiConfiguration:", "setApiConfiguration", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setNotificationProvider:", "setNotificationProvider", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setEnableContactsLogging:", "setEnableContactsLogging", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setEnableNetworkLogging:", "setEnableNetworkLogging", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setEnableFilesLogging:", "setEnableFilesLogging", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setPhoneBookProvider:", "setPhoneBookProvider", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setMinDelay:", "setMinDelay", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setMaxDelay:", "setMaxDelay", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "setMaxFailureCount:", "setMaxFailureCount", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "addExtensionWithNSString:withACExtension:", "addExtension", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "addEndpoint:", "addEndpoint", "Lim.actor.core.ConfigurationBuilder;", 0x1, NULL, NULL },
    { "build", NULL, "Lim.actor.core.Configuration;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "extensions_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/core/ConfigurationExtension;>;", .constantValue.asLong = 0 },
    { "endpoints_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/runtime/mtproto/ConnectionEndpoint;>;", .constantValue.asLong = 0 },
    { "phoneBookProvider_", NULL, 0x2, "Lim.actor.core.PhoneBookProvider;", NULL, NULL, .constantValue.asLong = 0 },
    { "enableContactsLogging_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "enableNetworkLogging_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "enableFilesLogging_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "notificationProvider_", NULL, 0x2, "Lim.actor.core.NotificationProvider;", NULL, NULL, .constantValue.asLong = 0 },
    { "apiConfiguration_", NULL, 0x2, "Lim.actor.core.ApiConfiguration;", NULL, NULL, .constantValue.asLong = 0 },
    { "platformType_", NULL, 0x2, "Lim.actor.core.PlatformType;", NULL, NULL, .constantValue.asLong = 0 },
    { "deviceCategory_", NULL, 0x2, "Lim.actor.core.DeviceCategory;", NULL, NULL, .constantValue.asLong = 0 },
    { "minDelay_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDelay_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxFailureCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACConfigurationBuilder = { 2, "ConfigurationBuilder", "im.actor.core", NULL, 0x1, 15, methods, 13, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACConfigurationBuilder;
}

@end

void ACConfigurationBuilder_init(ACConfigurationBuilder *self) {
  (void) NSObject_init(self);
  self->extensions_ = new_JavaUtilArrayList_init();
  self->endpoints_ = new_JavaUtilArrayList_init();
  self->enableContactsLogging_ =
#line 25
  false;
  self->enableNetworkLogging_ = false;
  self->enableFilesLogging_ = false;
  self->platformType_ = JreLoadStatic(ACPlatformTypeEnum, GENERIC);
  self->deviceCategory_ = JreLoadStatic(ACDeviceCategoryEnum, UNKNOWN);
  self->minDelay_ =
#line 37
  100;
  self->maxDelay_ = 15000;
  self->maxFailureCount_ = 50;
}

ACConfigurationBuilder *new_ACConfigurationBuilder_init() {
  ACConfigurationBuilder *self = [ACConfigurationBuilder alloc];
  ACConfigurationBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACConfigurationBuilder)

#pragma clang diagnostic pop

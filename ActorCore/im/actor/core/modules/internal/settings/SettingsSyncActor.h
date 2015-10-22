//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/settings/SettingsSyncActor.java
//

#ifndef _ImActorCoreModulesInternalSettingsSettingsSyncActor_H_
#define _ImActorCoreModulesInternalSettingsSettingsSyncActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/utils/ModuleActor.h"

@protocol ACModuleContext;

@interface ACSettingsSyncActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)modules;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSettingsSyncActor)

FOUNDATION_EXPORT void ACSettingsSyncActor_initWithACModuleContext_(ACSettingsSyncActor *self, id<ACModuleContext> modules);

FOUNDATION_EXPORT ACSettingsSyncActor *new_ACSettingsSyncActor_initWithACModuleContext_(id<ACModuleContext> modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSettingsSyncActor)

@compatibility_alias ImActorCoreModulesInternalSettingsSettingsSyncActor ACSettingsSyncActor;

@interface ACSettingsSyncActor_ChangeSettings : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value;

- (NSString *)getKey;

- (NSString *)getValue;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSettingsSyncActor_ChangeSettings)

FOUNDATION_EXPORT void ACSettingsSyncActor_ChangeSettings_initWithNSString_withNSString_(ACSettingsSyncActor_ChangeSettings *self, NSString *key, NSString *value);

FOUNDATION_EXPORT ACSettingsSyncActor_ChangeSettings *new_ACSettingsSyncActor_ChangeSettings_initWithNSString_withNSString_(NSString *key, NSString *value) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSettingsSyncActor_ChangeSettings)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalSettingsSettingsSyncActor_H_

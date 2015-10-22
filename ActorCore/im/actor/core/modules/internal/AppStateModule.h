//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/AppStateModule.java
//

#ifndef _ImActorCoreModulesInternalAppStateModule_H_
#define _ImActorCoreModulesInternalAppStateModule_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/AbsModule.h>

@class ACAppStateVM;
@class ARApiAppCounters;
@protocol ACModuleContext;

@interface ACAppStateModule : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (ACAppStateVM *)getAppStateVM;

- (void)onBookImported;

- (void)onContactsLoaded;

- (void)onContactsUpdateWithBoolean:(jboolean)isEmpty;

- (void)onCountersChangedWithARApiAppCounters:(ARApiAppCounters *)counters;

- (void)onDialogsLoaded;

- (void)onDialogsUpdateWithBoolean:(jboolean)isEmpty;

- (void)resetModule;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAppStateModule)

FOUNDATION_EXPORT void ACAppStateModule_initWithACModuleContext_(ACAppStateModule *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACAppStateModule *new_ACAppStateModule_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAppStateModule)

@compatibility_alias ImActorCoreModulesInternalAppStateModule ACAppStateModule;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalAppStateModule_H_
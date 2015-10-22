//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/SearchModule.java
//

#ifndef _ImActorCoreModulesInternalSearchModule_H_
#define _ImActorCoreModulesInternalSearchModule_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/AbsModule.h>

@class ACModules;
@class IOSObjectArray;
@protocol ARListEngine;
@protocol JavaUtilList;

@interface ACSearchModule : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModules:(ACModules *)modules;

- (id<ARListEngine>)getSearchList;

- (void)onContactsChangedWithJavaLangIntegerArray:(IOSObjectArray *)contacts;

- (void)onDialogsChangedWithJavaUtilList:(id<JavaUtilList>)dialogs;

- (void)resetModule;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSearchModule)

FOUNDATION_EXPORT void ACSearchModule_initWithACModules_(ACSearchModule *self, ACModules *modules);

FOUNDATION_EXPORT ACSearchModule *new_ACSearchModule_initWithACModules_(ACModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSearchModule)

@compatibility_alias ImActorCoreModulesInternalSearchModule ACSearchModule;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalSearchModule_H_

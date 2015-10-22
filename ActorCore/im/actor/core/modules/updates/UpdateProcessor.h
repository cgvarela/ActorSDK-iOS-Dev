//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/UpdateProcessor.java
//

#ifndef _ImActorCoreModulesUpdatesUpdateProcessor_H_
#define _ImActorCoreModulesUpdatesUpdateProcessor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/AbsModule.h"

@class ACInternalUpdate;
@class ACUpdate;
@protocol ACModuleContext;
@protocol JavaUtilList;

@interface ACUpdateProcessor : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)applyDifferenceUpdateWithJavaUtilList:(id<JavaUtilList>)users
                             withJavaUtilList:(id<JavaUtilList>)groups
                             withJavaUtilList:(id<JavaUtilList>)updates;

- (void)applyRelatedWithJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)groups
                         withBoolean:(jboolean)force;

- (jboolean)isCausesInvalidationWithACUpdate:(ACUpdate *)update;

- (void)processInternalUpdateWithACInternalUpdate:(ACInternalUpdate *)update;

- (void)processUpdateWithACUpdate:(ACUpdate *)update;

- (void)processWeakUpdateWithACUpdate:(ACUpdate *)update
                             withLong:(jlong)date;

@end

J2OBJC_EMPTY_STATIC_INIT(ACUpdateProcessor)

FOUNDATION_EXPORT void ACUpdateProcessor_initWithACModuleContext_(ACUpdateProcessor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACUpdateProcessor *new_ACUpdateProcessor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACUpdateProcessor)

@compatibility_alias ImActorCoreModulesUpdatesUpdateProcessor ACUpdateProcessor;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesUpdateProcessor_H_

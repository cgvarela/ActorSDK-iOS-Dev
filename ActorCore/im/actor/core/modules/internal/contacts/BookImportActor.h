//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/contacts/BookImportActor.java
//

#ifndef _ImActorCoreModulesInternalContactsBookImportActor_H_
#define _ImActorCoreModulesInternalContactsBookImportActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/utils/ModuleActor.h"

@protocol ACModuleContext;

@interface ACBookImportActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACBookImportActor)

FOUNDATION_EXPORT void ACBookImportActor_initWithACModuleContext_(ACBookImportActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACBookImportActor *new_ACBookImportActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACBookImportActor)

@compatibility_alias ImActorCoreModulesInternalContactsBookImportActor ACBookImportActor;

@interface ACBookImportActor_PerformSync : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACBookImportActor_PerformSync)

FOUNDATION_EXPORT void ACBookImportActor_PerformSync_init(ACBookImportActor_PerformSync *self);

FOUNDATION_EXPORT ACBookImportActor_PerformSync *new_ACBookImportActor_PerformSync_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACBookImportActor_PerformSync)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalContactsBookImportActor_H_

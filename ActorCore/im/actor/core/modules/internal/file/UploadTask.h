//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/file/UploadTask.java
//

#ifndef _ImActorCoreModulesInternalFileUploadTask_H_
#define _ImActorCoreModulesInternalFileUploadTask_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/utils/ModuleActor.h>

@class ARActorRef;
@protocol ACModuleContext;

@interface ACUploadTask : ACModuleActor

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid
                withNSString:(NSString *)descriptor
                withNSString:(NSString *)fileName
              withARActorRef:(ARActorRef *)manager
         withACModuleContext:(id<ACModuleContext>)context;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACUploadTask)

FOUNDATION_EXPORT void ACUploadTask_initWithLong_withNSString_withNSString_withARActorRef_withACModuleContext_(ACUploadTask *self, jlong rid, NSString *descriptor, NSString *fileName, ARActorRef *manager, id<ACModuleContext> context);

FOUNDATION_EXPORT ACUploadTask *new_ACUploadTask_initWithLong_withNSString_withNSString_withARActorRef_withACModuleContext_(jlong rid, NSString *descriptor, NSString *fileName, ARActorRef *manager, id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACUploadTask)

@compatibility_alias ImActorCoreModulesInternalFileUploadTask ACUploadTask;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalFileUploadTask_H_

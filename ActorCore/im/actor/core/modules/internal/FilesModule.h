//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java
//

#ifndef _ImActorCoreModulesInternalFilesModule_H_
#define _ImActorCoreModulesInternalFilesModule_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/AbsModule.h>

@class ACFileReference;
@class ARActorRef;
@protocol ACFileCallback;
@protocol ACModuleContext;
@protocol ACUploadFileCallback;
@protocol ARKeyValueEngine;

@interface ACFilesModule : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)bindFileWithACFileReference:(ACFileReference *)fileReference
                        withBoolean:(jboolean)isAutostart
                 withACFileCallback:(id<ACFileCallback>)callback;

- (void)bindUploadFileWithLong:(jlong)rid
      withACUploadFileCallback:(id<ACUploadFileCallback>)uploadFileCallback;

- (void)cancelDownloadingWithLong:(jlong)fileId;

- (void)cancelUploadWithLong:(jlong)rid;

- (NSString *)getDownloadedDescriptorWithLong:(jlong)fileId;

- (id<ARKeyValueEngine>)getDownloadedEngine;

- (void)pauseUploadWithLong:(jlong)rid;

- (void)requestStateWithLong:(jlong)fileId
          withACFileCallback:(id<ACFileCallback>)callback;

- (void)requestUploadWithLong:(jlong)rid
                 withNSString:(NSString *)descriptor
                 withNSString:(NSString *)fileName
               withARActorRef:(ARActorRef *)requester;

- (void)requestUploadStateWithLong:(jlong)rid
          withACUploadFileCallback:(id<ACUploadFileCallback>)callback;

- (void)resetModule;

- (void)resumeUploadWithLong:(jlong)rid;

- (void)run;

- (void)startDownloadingWithACFileReference:(ACFileReference *)location;

- (void)unbindFileWithLong:(jlong)fileId
        withACFileCallback:(id<ACFileCallback>)callback
               withBoolean:(jboolean)cancel;

- (void)unbindUploadFileWithLong:(jlong)rid
        withACUploadFileCallback:(id<ACUploadFileCallback>)callback;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule)

FOUNDATION_EXPORT void ACFilesModule_initWithACModuleContext_(ACFilesModule *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACFilesModule *new_ACFilesModule_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule)

@compatibility_alias ImActorCoreModulesInternalFilesModule ACFilesModule;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalFilesModule_H_
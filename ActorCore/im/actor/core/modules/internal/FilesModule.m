//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/FileReference.h"
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/FilesModule.h"
#include "im/actor/core/modules/internal/file/DownloadManager.h"
#include "im/actor/core/modules/internal/file/UploadManager.h"
#include "im/actor/core/modules/internal/file/entity/Downloaded.h"
#include "im/actor/core/modules/utils/BaseKeyValueEngine.h"
#include "im/actor/core/viewmodel/FileCallback.h"
#include "im/actor/core/viewmodel/UploadFileCallback.h"
#include "im/actor/runtime/Storage.h"
#include "im/actor/runtime/actors/ActorCreator.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/Props.h"
#include "im/actor/runtime/files/FileSystemReference.h"
#include "im/actor/runtime/storage/KeyValueEngine.h"
#include "im/actor/runtime/storage/KeyValueStorage.h"
#include "java/io/IOException.h"
#include "java/lang/Runnable.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACFilesModule () {
 @public
  id<ARKeyValueEngine> downloadedEngine_;
  ARActorRef *downloadManager_;
  ARActorRef *uploadManager_;
}

@end

J2OBJC_FIELD_SETTER(ACFilesModule, downloadedEngine_, id<ARKeyValueEngine>)
J2OBJC_FIELD_SETTER(ACFilesModule, downloadManager_, ARActorRef *)
J2OBJC_FIELD_SETTER(ACFilesModule, uploadManager_, ARActorRef *)

@interface ACFilesModule_$1 : ACBaseKeyValueEngine

- (IOSByteArray *)serializeWithARKeyValueItem:(ACDownloaded *)value;

- (ACDownloaded *)deserializeWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithARKeyValueStorage:(id<ARKeyValueStorage>)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$1)

__attribute__((unused)) static void ACFilesModule_$1_initWithARKeyValueStorage_(ACFilesModule_$1 *self, id<ARKeyValueStorage> arg$0);

__attribute__((unused)) static ACFilesModule_$1 *new_ACFilesModule_$1_initWithARKeyValueStorage_(id<ARKeyValueStorage> arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$1)

@interface ACFilesModule_$2 : NSObject < ARActorCreator > {
 @public
  ACFilesModule *this$0_;
}

- (ACDownloadManager *)create;

- (instancetype)initWithACFilesModule:(ACFilesModule *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$2)

J2OBJC_FIELD_SETTER(ACFilesModule_$2, this$0_, ACFilesModule *)

__attribute__((unused)) static void ACFilesModule_$2_initWithACFilesModule_(ACFilesModule_$2 *self, ACFilesModule *outer$);

__attribute__((unused)) static ACFilesModule_$2 *new_ACFilesModule_$2_initWithACFilesModule_(ACFilesModule *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$2)

@interface ACFilesModule_$3 : NSObject < ARActorCreator > {
 @public
  ACFilesModule *this$0_;
}

- (ACUploadManager *)create;

- (instancetype)initWithACFilesModule:(ACFilesModule *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$3)

J2OBJC_FIELD_SETTER(ACFilesModule_$3, this$0_, ACFilesModule *)

__attribute__((unused)) static void ACFilesModule_$3_initWithACFilesModule_(ACFilesModule_$3 *self, ACFilesModule *outer$);

__attribute__((unused)) static ACFilesModule_$3 *new_ACFilesModule_$3_initWithACFilesModule_(ACFilesModule *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$3)

@interface ACFilesModule_$4 : NSObject < ACFileCallback > {
 @public
  ACFilesModule *this$0_;
  id<ACFileCallback> val$callback_;
}

- (void)onNotDownloaded;

- (void)onDownloading:(jfloat)progress;

- (void)onDownloaded:(id<ARFileSystemReference>)reference;

- (instancetype)initWithACFilesModule:(ACFilesModule *)outer$
                   withACFileCallback:(id<ACFileCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$4)

J2OBJC_FIELD_SETTER(ACFilesModule_$4, this$0_, ACFilesModule *)
J2OBJC_FIELD_SETTER(ACFilesModule_$4, val$callback_, id<ACFileCallback>)

__attribute__((unused)) static void ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(ACFilesModule_$4 *self, ACFilesModule *outer$, id<ACFileCallback> capture$0);

__attribute__((unused)) static ACFilesModule_$4 *new_ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(ACFilesModule *outer$, id<ACFileCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$4)

@interface ACFilesModule_$4_$1 : NSObject < JavaLangRunnable > {
 @public
  ACFilesModule_$4 *this$0_;
}

- (void)run;

- (instancetype)initWithACFilesModule_$4:(ACFilesModule_$4 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$4_$1)

J2OBJC_FIELD_SETTER(ACFilesModule_$4_$1, this$0_, ACFilesModule_$4 *)

__attribute__((unused)) static void ACFilesModule_$4_$1_initWithACFilesModule_$4_(ACFilesModule_$4_$1 *self, ACFilesModule_$4 *outer$);

__attribute__((unused)) static ACFilesModule_$4_$1 *new_ACFilesModule_$4_$1_initWithACFilesModule_$4_(ACFilesModule_$4 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$4_$1)

@interface ACFilesModule_$4_$2 : NSObject < JavaLangRunnable > {
 @public
  ACFilesModule_$4 *this$0_;
  jfloat val$progress_;
}

- (void)run;

- (instancetype)initWithACFilesModule_$4:(ACFilesModule_$4 *)outer$
                               withFloat:(jfloat)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$4_$2)

J2OBJC_FIELD_SETTER(ACFilesModule_$4_$2, this$0_, ACFilesModule_$4 *)

__attribute__((unused)) static void ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(ACFilesModule_$4_$2 *self, ACFilesModule_$4 *outer$, jfloat capture$0);

__attribute__((unused)) static ACFilesModule_$4_$2 *new_ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(ACFilesModule_$4 *outer$, jfloat capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$4_$2)

@interface ACFilesModule_$4_$3 : NSObject < JavaLangRunnable > {
 @public
  ACFilesModule_$4 *this$0_;
  id<ARFileSystemReference> val$reference_;
}

- (void)run;

- (instancetype)initWithACFilesModule_$4:(ACFilesModule_$4 *)outer$
               withARFileSystemReference:(id<ARFileSystemReference>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFilesModule_$4_$3)

J2OBJC_FIELD_SETTER(ACFilesModule_$4_$3, this$0_, ACFilesModule_$4 *)
J2OBJC_FIELD_SETTER(ACFilesModule_$4_$3, val$reference_, id<ARFileSystemReference>)

__attribute__((unused)) static void ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(ACFilesModule_$4_$3 *self, ACFilesModule_$4 *outer$, id<ARFileSystemReference> capture$0);

__attribute__((unused)) static ACFilesModule_$4_$3 *new_ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(ACFilesModule_$4 *outer$, id<ARFileSystemReference> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFilesModule_$4_$3)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"


#line 27
@implementation ACFilesModule


#line 33
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACFilesModule_initWithACModuleContext_(self, context);
  return self;
}


#line 54
- (void)run {
  downloadManager_ = [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:[((ARProps *) nil_chk(ARProps_createWithIOSClass_withARActorCreator_(ACDownloadManager_class_(), new_ACFilesModule_$2_initWithACFilesModule_(self)))) changeDispatcherWithNSString:
#line 60
  @"heavy"] withNSString:@"actor/download/manager"];
  uploadManager_ = [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:[((ARProps *) nil_chk(ARProps_createWithIOSClass_withARActorCreator_(ACUploadManager_class_(), new_ACFilesModule_$3_initWithACFilesModule_(self)))) changeDispatcherWithNSString:
#line 66
  @"heavy"] withNSString:@"actor/upload/manager"];
}


#line 69
- (id<ARKeyValueEngine>)getDownloadedEngine {
  return downloadedEngine_;
}

- (void)bindFileWithACFileReference:(ACFileReference *)fileReference
                        withBoolean:(jboolean)isAutostart
                 withACFileCallback:(id<ACFileCallback>)callback {
  [((ARActorRef *) nil_chk(downloadManager_)) sendWithId:new_ACDownloadManager_BindDownload_initWithACFileReference_withBoolean_withACFileCallback_(fileReference, isAutostart, callback)];
}


#line 77
- (void)unbindFileWithLong:(jlong)fileId
        withACFileCallback:(id<ACFileCallback>)callback
               withBoolean:(jboolean)cancel {
  [((ARActorRef *) nil_chk(downloadManager_)) sendWithId:new_ACDownloadManager_UnbindDownload_initWithLong_withBoolean_withACFileCallback_(fileId, cancel, callback)];
}


#line 81
- (void)requestStateWithLong:(jlong)fileId
          withACFileCallback:(id<ACFileCallback>)callback {
  [((ARActorRef *) nil_chk(downloadManager_)) sendWithId:new_ACDownloadManager_RequestState_initWithLong_withACFileCallback_(fileId, new_ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(self, callback))];
}


#line 115
- (void)startDownloadingWithACFileReference:(ACFileReference *)location {
  [((ARActorRef *) nil_chk(downloadManager_)) sendWithId:new_ACDownloadManager_StartDownload_initWithACFileReference_(location)];
}

- (void)cancelDownloadingWithLong:(jlong)fileId {
  [((ARActorRef *) nil_chk(downloadManager_)) sendWithId:new_ACDownloadManager_CancelDownload_initWithLong_(fileId)];
}


#line 125
- (void)bindUploadFileWithLong:(jlong)rid
      withACUploadFileCallback:(id<ACUploadFileCallback>)uploadFileCallback {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_BindUpload_initWithLong_withACUploadFileCallback_(rid, uploadFileCallback)];
}


#line 129
- (void)unbindUploadFileWithLong:(jlong)rid
        withACUploadFileCallback:(id<ACUploadFileCallback>)callback {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_UnbindUpload_initWithLong_withACUploadFileCallback_(rid, callback)];
}


#line 133
- (void)requestUploadWithLong:(jlong)rid
                 withNSString:(NSString *)descriptor
                 withNSString:(NSString *)fileName
               withARActorRef:(ARActorRef *)requester {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_StartUpload_initWithLong_withNSString_withNSString_(rid, descriptor, fileName) withARActorRef:requester];
}


#line 137
- (void)cancelUploadWithLong:(jlong)rid {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_StopUpload_initWithLong_(rid)];
}

- (void)requestUploadStateWithLong:(jlong)rid
          withACUploadFileCallback:(id<ACUploadFileCallback>)callback {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_RequestState_initWithLong_withACUploadFileCallback_(rid, callback)];
}


#line 145
- (void)resumeUploadWithLong:(jlong)rid {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_ResumeUpload_initWithLong_(rid)];
}

- (void)pauseUploadWithLong:(jlong)rid {
  [((ARActorRef *) nil_chk(uploadManager_)) sendWithId:new_ACUploadManager_PauseUpload_initWithLong_(rid)];
}

- (NSString *)getDownloadedDescriptorWithLong:(jlong)fileId {
  ACDownloaded *downloaded = [((id<ARKeyValueEngine>) nil_chk(downloadedEngine_)) getValueWithKey:fileId];
  if (downloaded == nil) {
    return nil;
  }
  else {
    
#line 158
    return [downloaded getDescriptor];
  }
}


#line 162
- (void)resetModule {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "FilesModule", NULL, 0x1, NULL, NULL },
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "getDownloadedEngine", NULL, "Lim.actor.runtime.storage.KeyValueEngine;", 0x1, NULL, NULL },
    { "bindFileWithACFileReference:withBoolean:withACFileCallback:", "bindFile", "V", 0x1, NULL, NULL },
    { "unbindFileWithLong:withACFileCallback:withBoolean:", "unbindFile", "V", 0x1, NULL, NULL },
    { "requestStateWithLong:withACFileCallback:", "requestState", "V", 0x1, NULL, NULL },
    { "startDownloadingWithACFileReference:", "startDownloading", "V", 0x1, NULL, NULL },
    { "cancelDownloadingWithLong:", "cancelDownloading", "V", 0x1, NULL, NULL },
    { "bindUploadFileWithLong:withACUploadFileCallback:", "bindUploadFile", "V", 0x1, NULL, NULL },
    { "unbindUploadFileWithLong:withACUploadFileCallback:", "unbindUploadFile", "V", 0x1, NULL, NULL },
    { "requestUploadWithLong:withNSString:withNSString:withARActorRef:", "requestUpload", "V", 0x1, NULL, NULL },
    { "cancelUploadWithLong:", "cancelUpload", "V", 0x1, NULL, NULL },
    { "requestUploadStateWithLong:withACUploadFileCallback:", "requestUploadState", "V", 0x1, NULL, NULL },
    { "resumeUploadWithLong:", "resumeUpload", "V", 0x1, NULL, NULL },
    { "pauseUploadWithLong:", "pauseUpload", "V", 0x1, NULL, NULL },
    { "getDownloadedDescriptorWithLong:", "getDownloadedDescriptor", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "resetModule", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "downloadedEngine_", NULL, 0x2, "Lim.actor.runtime.storage.KeyValueEngine;", NULL, "Lim/actor/runtime/storage/KeyValueEngine<Lim/actor/core/modules/internal/file/entity/Downloaded;>;", .constantValue.asLong = 0 },
    { "downloadManager_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "uploadManager_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACFilesModule = { 2, "FilesModule", "im.actor.core.modules.internal", NULL, 0x1, 17, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACFilesModule;
}

@end


#line 33
void ACFilesModule_initWithACModuleContext_(ACFilesModule *self, id<ACModuleContext> context) {
  (void) ACAbsModule_initWithACModuleContext_(self, context);
  
#line 36
  self->downloadedEngine_ = new_ACFilesModule_$1_initWithARKeyValueStorage_(ARStorage_createKeyValueWithNSString_(ACAbsModule_STORAGE_DOWNLOADS_));
}


#line 33
ACFilesModule *new_ACFilesModule_initWithACModuleContext_(id<ACModuleContext> context) {
  ACFilesModule *self = [ACFilesModule alloc];
  ACFilesModule_initWithACModuleContext_(self, context);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$1


#line 38
- (IOSByteArray *)serializeWithARKeyValueItem:(ACDownloaded *)value {
  return [((ACDownloaded *) nil_chk(value)) toByteArray];
}


#line 43
- (ACDownloaded *)deserializeWithByteArray:(IOSByteArray *)data {
  @try {
    return ACDownloaded_fromBytesWithByteArray_(data);
  }
  @catch (
#line 46
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    return nil;
  }
}

- (instancetype)initWithARKeyValueStorage:(id<ARKeyValueStorage>)arg$0 {
  ACFilesModule_$1_initWithARKeyValueStorage_(self, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithARKeyValueItem:", "serialize", "[B", 0x4, NULL, NULL },
    { "deserializeWithByteArray:", "deserialize", "Lim.actor.core.modules.internal.file.entity.Downloaded;", 0x4, NULL, NULL },
    { "initWithARKeyValueStorage:", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.modules.internal.file.entity.Downloaded;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule", "initWithACModuleContext:" };
  static const J2ObjcClassInfo _ACFilesModule_$1 = { 2, "", "im.actor.core.modules.internal", "FilesModule", 0x8008, 3, methods, 0, NULL, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lim/actor/core/modules/utils/BaseKeyValueEngine<Lim/actor/core/modules/internal/file/entity/Downloaded;>;" };
  return &_ACFilesModule_$1;
}

@end

void ACFilesModule_$1_initWithARKeyValueStorage_(ACFilesModule_$1 *self, id<ARKeyValueStorage> arg$0) {
  (void) ACBaseKeyValueEngine_initWithARKeyValueStorage_(self, arg$0);
}

ACFilesModule_$1 *new_ACFilesModule_$1_initWithARKeyValueStorage_(id<ARKeyValueStorage> arg$0) {
  ACFilesModule_$1 *self = [ACFilesModule_$1 alloc];
  ACFilesModule_$1_initWithARKeyValueStorage_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$2


#line 57
- (ACDownloadManager *)create {
  return new_ACDownloadManager_initWithACModuleContext_([this$0_ context]);
}

- (instancetype)initWithACFilesModule:(ACFilesModule *)outer$ {
  ACFilesModule_$2_initWithACFilesModule_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.core.modules.internal.file.DownloadManager;", 0x1, NULL, NULL },
    { "initWithACFilesModule:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.FilesModule;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule", "run" };
  static const J2ObjcClassInfo _ACFilesModule_$2 = { 2, "", "im.actor.core.modules.internal", "FilesModule", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/core/modules/internal/file/DownloadManager;>;" };
  return &_ACFilesModule_$2;
}

@end

void ACFilesModule_$2_initWithACFilesModule_(ACFilesModule_$2 *self, ACFilesModule *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACFilesModule_$2 *new_ACFilesModule_$2_initWithACFilesModule_(ACFilesModule *outer$) {
  ACFilesModule_$2 *self = [ACFilesModule_$2 alloc];
  ACFilesModule_$2_initWithACFilesModule_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$3


#line 63
- (ACUploadManager *)create {
  return new_ACUploadManager_initWithACModuleContext_([this$0_ context]);
}

- (instancetype)initWithACFilesModule:(ACFilesModule *)outer$ {
  ACFilesModule_$3_initWithACFilesModule_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.core.modules.internal.file.UploadManager;", 0x1, NULL, NULL },
    { "initWithACFilesModule:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.FilesModule;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule", "run" };
  static const J2ObjcClassInfo _ACFilesModule_$3 = { 2, "", "im.actor.core.modules.internal", "FilesModule", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/core/modules/internal/file/UploadManager;>;" };
  return &_ACFilesModule_$3;
}

@end

void ACFilesModule_$3_initWithACFilesModule_(ACFilesModule_$3 *self, ACFilesModule *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACFilesModule_$3 *new_ACFilesModule_$3_initWithACFilesModule_(ACFilesModule *outer$) {
  ACFilesModule_$3 *self = [ACFilesModule_$3 alloc];
  ACFilesModule_$3_initWithACFilesModule_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$3)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$4


#line 84
- (void)onNotDownloaded {
  [this$0_ runOnUiThreadWithJavaLangRunnable:new_ACFilesModule_$4_$1_initWithACFilesModule_$4_(self)];
}


#line 94
- (void)onDownloading:(jfloat)progress {
  [this$0_ runOnUiThreadWithJavaLangRunnable:new_ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(self, progress)];
}


#line 104
- (void)onDownloaded:(id<ARFileSystemReference>)reference {
  [this$0_ runOnUiThreadWithJavaLangRunnable:new_ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(self, reference)];
}

- (instancetype)initWithACFilesModule:(ACFilesModule *)outer$
                   withACFileCallback:(id<ACFileCallback>)capture$0 {
  ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNotDownloaded", NULL, "V", 0x1, NULL, NULL },
    { "onDownloading:", "onDownloading", "V", 0x1, NULL, NULL },
    { "onDownloaded:", "onDownloaded", "V", 0x1, NULL, NULL },
    { "initWithACFilesModule:withACFileCallback:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.FilesModule;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$callback_", NULL, 0x1012, "Lim.actor.core.viewmodel.FileCallback;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule", "requestStateWithLong:withACFileCallback:" };
  static const J2ObjcClassInfo _ACFilesModule_$4 = { 2, "", "im.actor.core.modules.internal", "FilesModule", 0x8008, 4, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACFilesModule_$4;
}

@end

void ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(ACFilesModule_$4 *self, ACFilesModule *outer$, id<ACFileCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ACFilesModule_$4 *new_ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(ACFilesModule *outer$, id<ACFileCallback> capture$0) {
  ACFilesModule_$4 *self = [ACFilesModule_$4 alloc];
  ACFilesModule_$4_initWithACFilesModule_withACFileCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$4)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$4_$1


#line 87
- (void)run {
  [((id<ACFileCallback>) nil_chk(this$0_->val$callback_)) onNotDownloaded];
}

- (instancetype)initWithACFilesModule_$4:(ACFilesModule_$4 *)outer$ {
  ACFilesModule_$4_$1_initWithACFilesModule_$4_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithACFilesModule_$4:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.FilesModule$4;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule_$4", "onNotDownloaded" };
  static const J2ObjcClassInfo _ACFilesModule_$4_$1 = { 2, "", "im.actor.core.modules.internal", "FilesModule$", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACFilesModule_$4_$1;
}

@end

void ACFilesModule_$4_$1_initWithACFilesModule_$4_(ACFilesModule_$4_$1 *self, ACFilesModule_$4 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACFilesModule_$4_$1 *new_ACFilesModule_$4_$1_initWithACFilesModule_$4_(ACFilesModule_$4 *outer$) {
  ACFilesModule_$4_$1 *self = [ACFilesModule_$4_$1 alloc];
  ACFilesModule_$4_$1_initWithACFilesModule_$4_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$4_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$4_$2


#line 97
- (void)run {
  [((id<ACFileCallback>) nil_chk(this$0_->val$callback_)) onDownloading:val$progress_];
}

- (instancetype)initWithACFilesModule_$4:(ACFilesModule_$4 *)outer$
                               withFloat:(jfloat)capture$0 {
  ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithACFilesModule_$4:withFloat:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.FilesModule$4;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$progress_", NULL, 0x1012, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule_$4", "onDownloading:" };
  static const J2ObjcClassInfo _ACFilesModule_$4_$2 = { 2, "", "im.actor.core.modules.internal", "FilesModule$", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACFilesModule_$4_$2;
}

@end

void ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(ACFilesModule_$4_$2 *self, ACFilesModule_$4 *outer$, jfloat capture$0) {
  self->this$0_ = outer$;
  self->val$progress_ = capture$0;
  (void) NSObject_init(self);
}

ACFilesModule_$4_$2 *new_ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(ACFilesModule_$4 *outer$, jfloat capture$0) {
  ACFilesModule_$4_$2 *self = [ACFilesModule_$4_$2 alloc];
  ACFilesModule_$4_$2_initWithACFilesModule_$4_withFloat_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$4_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/FilesModule.java"

@implementation ACFilesModule_$4_$3


#line 107
- (void)run {
  [((id<ACFileCallback>) nil_chk(this$0_->val$callback_)) onDownloaded:val$reference_];
}

- (instancetype)initWithACFilesModule_$4:(ACFilesModule_$4 *)outer$
               withARFileSystemReference:(id<ARFileSystemReference>)capture$0 {
  ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithACFilesModule_$4:withARFileSystemReference:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.FilesModule$4;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$reference_", NULL, 0x1012, "Lim.actor.runtime.files.FileSystemReference;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACFilesModule_$4", "onDownloaded:" };
  static const J2ObjcClassInfo _ACFilesModule_$4_$3 = { 2, "", "im.actor.core.modules.internal", "FilesModule$", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACFilesModule_$4_$3;
}

@end

void ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(ACFilesModule_$4_$3 *self, ACFilesModule_$4 *outer$, id<ARFileSystemReference> capture$0) {
  self->this$0_ = outer$;
  self->val$reference_ = capture$0;
  (void) NSObject_init(self);
}

ACFilesModule_$4_$3 *new_ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(ACFilesModule_$4 *outer$, id<ARFileSystemReference> capture$0) {
  ACFilesModule_$4_$3 *self = [ACFilesModule_$4_$3 alloc];
  ACFilesModule_$4_$3_initWithACFilesModule_$4_withARFileSystemReference_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACFilesModule_$4_$3)

#pragma clang diagnostic pop
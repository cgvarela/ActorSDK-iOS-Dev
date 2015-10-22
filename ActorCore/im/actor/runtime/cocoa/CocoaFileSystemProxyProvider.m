//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaFileSystemProxyProvider.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/FileSystemRuntime.h"
#include "im/actor/runtime/cocoa/CocoaFileSystemProxyProvider.h"
#include "im/actor/runtime/files/FileSystemReference.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static id<ARFileSystemRuntime> ARCocoaFileSystemProxyProvider_runtime_;
J2OBJC_STATIC_FIELD_GETTER(ARCocoaFileSystemProxyProvider, runtime_, id<ARFileSystemRuntime>)
J2OBJC_STATIC_FIELD_SETTER(ARCocoaFileSystemProxyProvider, runtime_, id<ARFileSystemRuntime>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaFileSystemProxyProvider.java"


#line 8
@implementation ARCocoaFileSystemProxyProvider


#line 13
+ (void)setFileSystemRuntime:(id<ARFileSystemRuntime>)runtime {
  ARCocoaFileSystemProxyProvider_setFileSystemRuntime_(runtime);
}


#line 18
- (id<ARFileSystemReference>)createTempFile {
  return [((id<ARFileSystemRuntime>) nil_chk(ARCocoaFileSystemProxyProvider_runtime_)) createTempFile];
}


#line 23
- (id<ARFileSystemReference>)commitTempFile:(id<ARFileSystemReference>)sourceFile
                                 withFileId:(jlong)fileId
                               withFileName:(NSString *)fileName {
  return [((id<ARFileSystemRuntime>) nil_chk(ARCocoaFileSystemProxyProvider_runtime_)) commitTempFile:sourceFile withFileId:fileId withFileName:fileName];
}


#line 28
- (jboolean)isFsPersistent {
  return [((id<ARFileSystemRuntime>) nil_chk(ARCocoaFileSystemProxyProvider_runtime_)) isFsPersistent];
}


#line 33
- (id<ARFileSystemReference>)fileFromDescriptor:(NSString *)descriptor {
  return [((id<ARFileSystemRuntime>) nil_chk(ARCocoaFileSystemProxyProvider_runtime_)) fileFromDescriptor:descriptor];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARCocoaFileSystemProxyProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_setFileSystemRuntimeWithARFileSystemRuntime_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"setFileSystemRuntime:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setFileSystemRuntime:", "setFileSystemRuntime", "V", 0x9, NULL, NULL },
    { "createTempFile", NULL, "Lim.actor.runtime.files.FileSystemReference;", 0x1, NULL, NULL },
    { "commitTempFile:withFileId:withFileName:", "commitTempFile", "Lim.actor.runtime.files.FileSystemReference;", 0x1, NULL, NULL },
    { "isFsPersistent", NULL, "Z", 0x1, NULL, NULL },
    { "fileFromDescriptor:", "fileFromDescriptor", "Lim.actor.runtime.files.FileSystemReference;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "runtime_", NULL, 0xa, "Lim.actor.runtime.FileSystemRuntime;", &ARCocoaFileSystemProxyProvider_runtime_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARCocoaFileSystemProxyProvider = { 2, "CocoaFileSystemProxyProvider", "im.actor.runtime.cocoa", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARCocoaFileSystemProxyProvider;
}

@end


#line 13
void ARCocoaFileSystemProxyProvider_setFileSystemRuntime_(id<ARFileSystemRuntime> runtime) {
  ARCocoaFileSystemProxyProvider_initialize();
  
#line 14
  ARCocoaFileSystemProxyProvider_runtime_ = runtime;
}

void ARCocoaFileSystemProxyProvider_init(ARCocoaFileSystemProxyProvider *self) {
  (void) NSObject_init(self);
}

ARCocoaFileSystemProxyProvider *new_ARCocoaFileSystemProxyProvider_init() {
  ARCocoaFileSystemProxyProvider *self = [ARCocoaFileSystemProxyProvider alloc];
  ARCocoaFileSystemProxyProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARCocoaFileSystemProxyProvider)

#pragma clang diagnostic pop

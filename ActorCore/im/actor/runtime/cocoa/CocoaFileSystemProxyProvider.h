//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaFileSystemProxyProvider.java
//

#ifndef _ImActorRuntimeCocoaCocoaFileSystemProxyProvider_H_
#define _ImActorRuntimeCocoaCocoaFileSystemProxyProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/FileSystemRuntime.h>

@protocol ARFileSystemReference;

@interface ARCocoaFileSystemProxyProvider : NSObject < ARFileSystemRuntime >

#pragma mark Public

- (instancetype)init;

- (id<ARFileSystemReference>)commitTempFile:(id<ARFileSystemReference>)sourceFile
                                 withFileId:(jlong)fileId
                               withFileName:(NSString *)fileName;

- (id<ARFileSystemReference>)createTempFile;

- (id<ARFileSystemReference>)fileFromDescriptor:(NSString *)descriptor;

- (jboolean)isFsPersistent;

+ (void)setFileSystemRuntime:(id<ARFileSystemRuntime>)runtime;

@end

J2OBJC_EMPTY_STATIC_INIT(ARCocoaFileSystemProxyProvider)

FOUNDATION_EXPORT void ARCocoaFileSystemProxyProvider_setFileSystemRuntime_(id<ARFileSystemRuntime> runtime);

FOUNDATION_EXPORT void ARCocoaFileSystemProxyProvider_init(ARCocoaFileSystemProxyProvider *self);

FOUNDATION_EXPORT ARCocoaFileSystemProxyProvider *new_ARCocoaFileSystemProxyProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARCocoaFileSystemProxyProvider)

@compatibility_alias ImActorRuntimeCocoaCocoaFileSystemProxyProvider ARCocoaFileSystemProxyProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCocoaCocoaFileSystemProxyProvider_H_

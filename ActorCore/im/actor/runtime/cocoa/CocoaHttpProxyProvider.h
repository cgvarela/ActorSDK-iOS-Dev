//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaHttpProxyProvider.java
//

#ifndef _ImActorRuntimeCocoaCocoaHttpProxyProvider_H_
#define _ImActorRuntimeCocoaCocoaHttpProxyProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/HttpRuntime.h>

@class IOSByteArray;
@protocol ARFileDownloadCallback;
@protocol ARFileUploadCallback;

@interface ARCocoaHttpProxyProvider : NSObject < ARHttpRuntime >

#pragma mark Public

- (instancetype)init;

- (void)getMethodWithUrl:(NSString *)url
         withStartOffset:(jint)startOffset
                withSize:(jint)size
           withTotalSize:(jint)totalSize
            withCallback:(id<ARFileDownloadCallback>)callback;

- (void)putMethodWithUrl:(NSString *)url
            withContents:(IOSByteArray *)contents
            withCallback:(id<ARFileUploadCallback>)callback;

+ (void)setHttpRuntime:(id<ARHttpRuntime>)runtime;

@end

J2OBJC_EMPTY_STATIC_INIT(ARCocoaHttpProxyProvider)

FOUNDATION_EXPORT void ARCocoaHttpProxyProvider_setHttpRuntime_(id<ARHttpRuntime> runtime);

FOUNDATION_EXPORT void ARCocoaHttpProxyProvider_init(ARCocoaHttpProxyProvider *self);

FOUNDATION_EXPORT ARCocoaHttpProxyProvider *new_ARCocoaHttpProxyProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARCocoaHttpProxyProvider)

@compatibility_alias ImActorRuntimeCocoaCocoaHttpProxyProvider ARCocoaHttpProxyProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCocoaCocoaHttpProxyProvider_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaLifecycleProvider.java
//

#ifndef _ImActorRuntimeCocoaCocoaLifecycleProvider_H_
#define _ImActorRuntimeCocoaCocoaLifecycleProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/LifecycleRuntime.h"

@interface ARCocoaLifecycleProvider : NSObject < ARLifecycleRuntime >

#pragma mark Public

- (instancetype)init;

- (void)killApp;

@end

J2OBJC_EMPTY_STATIC_INIT(ARCocoaLifecycleProvider)

FOUNDATION_EXPORT void ARCocoaLifecycleProvider_init(ARCocoaLifecycleProvider *self);

FOUNDATION_EXPORT ARCocoaLifecycleProvider *new_ARCocoaLifecycleProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARCocoaLifecycleProvider)

@compatibility_alias ImActorRuntimeCocoaCocoaLifecycleProvider ARCocoaLifecycleProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCocoaCocoaLifecycleProvider_H_

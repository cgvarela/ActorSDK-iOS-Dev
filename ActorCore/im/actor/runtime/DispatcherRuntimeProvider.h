//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/DispatcherRuntimeProvider.java
//

#ifndef _ImActorRuntimeDispatcherRuntimeProvider_H_
#define _ImActorRuntimeDispatcherRuntimeProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/cocoa/CocoaDispatcherProvider.h>

@interface ARDispatcherRuntimeProvider : ARCocoaDispatcherProvider

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ARDispatcherRuntimeProvider)

FOUNDATION_EXPORT void ARDispatcherRuntimeProvider_init(ARDispatcherRuntimeProvider *self);

FOUNDATION_EXPORT ARDispatcherRuntimeProvider *new_ARDispatcherRuntimeProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARDispatcherRuntimeProvider)

@compatibility_alias ImActorRuntimeDispatcherRuntimeProvider ARDispatcherRuntimeProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeDispatcherRuntimeProvider_H_
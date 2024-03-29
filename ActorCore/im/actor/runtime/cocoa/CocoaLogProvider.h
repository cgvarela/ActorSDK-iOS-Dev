//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaLogProvider.java
//

#ifndef _ImActorRuntimeCocoaCocoaLogProvider_H_
#define _ImActorRuntimeCocoaCocoaLogProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/LogRuntime.h"

@class JavaLangThrowable;

@interface ARCocoaLogProvider : NSObject < ARLogRuntime >

#pragma mark Public

- (instancetype)init;

- (void)debugWithTag:(NSString *)tag
         withMessage:(NSString *)message;

- (void)errorWithTag:(NSString *)tag
       withThrowable:(JavaLangThrowable *)throwable;

- (void)verboseWithTag:(NSString *)tag
           withMessage:(NSString *)message;

- (void)warringWithTag:(NSString *)tag
           withMessage:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ARCocoaLogProvider)

FOUNDATION_EXPORT void ARCocoaLogProvider_init(ARCocoaLogProvider *self);

FOUNDATION_EXPORT ARCocoaLogProvider *new_ARCocoaLogProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARCocoaLogProvider)

@compatibility_alias ImActorRuntimeCocoaCocoaLogProvider ARCocoaLogProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCocoaCocoaLogProvider_H_

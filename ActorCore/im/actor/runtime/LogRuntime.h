//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/LogRuntime.java
//

#ifndef _ImActorRuntimeLogRuntime_H_
#define _ImActorRuntimeLogRuntime_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class JavaLangThrowable;

/*!
 @brief Provider for Log support
 */
@protocol ARLogRuntime < NSObject, JavaObject >

/*!
 @brief Log warring message
 @param tag     tag of message
 @param message message content
 */
- (void)warringWithTag:(NSString *)tag
           withMessage:(NSString *)message;

/*!
 @brief Log exception
 @param tag       tag of exception
 @param throwable exception
 */
- (void)errorWithTag:(NSString *)tag
       withThrowable:(JavaLangThrowable *)throwable;

/*!
 @brief Log debug message
 @param tag     tag of message
 @param message message content
 */
- (void)debugWithTag:(NSString *)tag
         withMessage:(NSString *)message;

/*!
 @brief Log verbose message
 @param tag     tag of message
 @param message message content
 */
- (void)verboseWithTag:(NSString *)tag
           withMessage:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ARLogRuntime)

J2OBJC_TYPE_LITERAL_HEADER(ARLogRuntime)

#define ImActorRuntimeLogRuntime ARLogRuntime


#pragma clang diagnostic pop
#endif // _ImActorRuntimeLogRuntime_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/ActorRef.java
//

#ifndef _ImActorRuntimeActorsActorRef_H_
#define _ImActorRuntimeActorsActorRef_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARActorDispatcher;
@class ARActorEndpoint;
@class ARActorSystem;

/*!
 @brief Reference to Actor that allows to send messages to real Actor
 */
@interface ARActorRef : NSObject

#pragma mark Public

/*!
 @brief <p>INTERNAL API</p>
 Creating actor reference
 @param system     actor system
 @param dispatcher dispatcher of actor
 @param path       path of actor
 */
- (instancetype)initWithARActorEndpoint:(ARActorEndpoint *)endpoint
                      withARActorSystem:(ARActorSystem *)system
                  withARActorDispatcher:(ARActorDispatcher *)dispatcher
                           withNSString:(NSString *)path;

/*!
 @brief Cancelling scheduled message
 @param message message
 */
- (void)cancelMessageWithId:(id)message;

/*!
 @brief Cancelling scheduled message
 @param message message
 @param sender  sender
 */
- (void)cancelMessageWithId:(id)message
             withARActorRef:(ARActorRef *)sender;

- (NSString *)getPath;

/*!
 @brief Send message with empty sender
 @param message message
 */
- (void)sendWithId:(id)message;

/*!
 @brief Send message with specified sender
 @param message message
 @param sender  sender
 */
- (void)sendWithId:(id)message
    withARActorRef:(ARActorRef *)sender;

/*!
 @brief Send message with empty sender and delay
 @param message message
 @param delay   delay
 */
- (void)sendWithId:(id)message
          withLong:(jlong)delay;

/*!
 @brief Send message
 @param message message
 @param delay   delay
 @param sender  sender
 */
- (void)sendWithId:(id)message
          withLong:(jlong)delay
    withARActorRef:(ARActorRef *)sender;

/*!
 @brief Send message once
 @param message message
 */
- (void)sendOnceWithId:(id)message;

/*!
 @brief Send message once
 @param message message
 @param sender  sender
 */
- (void)sendOnceWithId:(id)message
        withARActorRef:(ARActorRef *)sender;

/*!
 @brief Send message once
 @param message message
 @param delay   delay
 */
- (void)sendOnceWithId:(id)message
              withLong:(jlong)delay;

/*!
 @brief Send message once
 @param message message
 @param delay   delay
 @param sender  sender
 */
- (void)sendOnceWithId:(id)message
              withLong:(jlong)delay
        withARActorRef:(ARActorRef *)sender;

- (ARActorSystem *)system;

@end

J2OBJC_EMPTY_STATIC_INIT(ARActorRef)

FOUNDATION_EXPORT void ARActorRef_initWithARActorEndpoint_withARActorSystem_withARActorDispatcher_withNSString_(ARActorRef *self, ARActorEndpoint *endpoint, ARActorSystem *system, ARActorDispatcher *dispatcher, NSString *path);

FOUNDATION_EXPORT ARActorRef *new_ARActorRef_initWithARActorEndpoint_withARActorSystem_withARActorDispatcher_withNSString_(ARActorEndpoint *endpoint, ARActorSystem *system, ARActorDispatcher *dispatcher, NSString *path) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARActorRef)

@compatibility_alias ImActorRuntimeActorsActorRef ARActorRef;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeActorsActorRef_H_
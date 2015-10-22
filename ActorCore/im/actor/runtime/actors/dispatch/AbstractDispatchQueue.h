//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/dispatch/AbstractDispatchQueue.java
//

#ifndef _ImActorRuntimeActorsDispatchAbstractDispatchQueue_H_
#define _ImActorRuntimeActorsDispatchAbstractDispatchQueue_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ImActorRuntimeActorsDispatchDispatchResult;
@protocol ImActorRuntimeActorsDispatchQueueListener;

#define ImActorRuntimeActorsDispatchAbstractDispatchQueue_FOREVER 300000LL

/*!
 @brief Queue for dispatching messages.
 Implementation MUST BE thread-safe.
 */
@interface ImActorRuntimeActorsDispatchAbstractDispatchQueue : NSObject

+ (jlong)FOREVER;

#pragma mark Public

- (instancetype)init;

/*!
 @brief <p>Fetch message for dispatching and removing it from dispatch queue</p>
 You might provide most accurate delay as you can,
 this will minimize unnecessary thread work.
 For example, if you will return zero here then thread will
 loop continuously and consume processor time.
 @param time current time from ActorTime
 @return message or delay information
 */
- (ImActorRuntimeActorsDispatchDispatchResult *)dispatchWithLong:(jlong)time;

/*!
 @brief Getting of current queue listener
 @return queue listener
 */
- (id<ImActorRuntimeActorsDispatchQueueListener>)getListener;

/*!
 @brief Setting queue listener
 @param listener queue listener
 */
- (void)setListenerWithImActorRuntimeActorsDispatchQueueListener:(id<ImActorRuntimeActorsDispatchQueueListener>)listener;

#pragma mark Protected

- (ImActorRuntimeActorsDispatchDispatchResult *)delayWithLong:(jlong)delay;

/*!
 @brief Notification about queue change.
 */
- (void)notifyQueueChanged;

- (ImActorRuntimeActorsDispatchDispatchResult *)resultWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorRuntimeActorsDispatchAbstractDispatchQueue)

J2OBJC_STATIC_FIELD_GETTER(ImActorRuntimeActorsDispatchAbstractDispatchQueue, FOREVER, jlong)

FOUNDATION_EXPORT void ImActorRuntimeActorsDispatchAbstractDispatchQueue_init(ImActorRuntimeActorsDispatchAbstractDispatchQueue *self);

J2OBJC_TYPE_LITERAL_HEADER(ImActorRuntimeActorsDispatchAbstractDispatchQueue)


#pragma clang diagnostic pop
#endif // _ImActorRuntimeActorsDispatchAbstractDispatchQueue_H_
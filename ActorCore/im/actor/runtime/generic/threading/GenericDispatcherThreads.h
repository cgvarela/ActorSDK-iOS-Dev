//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherThreads.java
//

#ifndef _ImActorRuntimeGenericThreadingGenericDispatcherThreads_H_
#define _ImActorRuntimeGenericThreadingGenericDispatcherThreads_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/actors/dispatch/AbstractDispatcher.h>

@class ARThreadPriorityEnum;
@class ImActorRuntimeActorsDispatchAbstractDispatchQueue;
@protocol ImActorRuntimeActorsDispatchDispatch;

/*!
 @brief ThreadPoolDispatcher is used for dispatching messages on it's own threads.
 Class is completely thread-safe.
 */
@interface ARGenericDispatcherThreads : ImActorRuntimeActorsDispatchAbstractDispatcher

#pragma mark Public

/*!
 @brief Dispatcher constructor
 @param count    thread count
 @param priority thread priority
 @param queue    queue for messages
 (see <code>AbstractDispatchQueue</code> for more information)
 @param dispatch Dispatch for message processing
 */
- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)count
        withARThreadPriorityEnum:(ARThreadPriorityEnum *)priority
withImActorRuntimeActorsDispatchAbstractDispatchQueue:(ImActorRuntimeActorsDispatchAbstractDispatchQueue *)queue
withImActorRuntimeActorsDispatchDispatch:(id<ImActorRuntimeActorsDispatchDispatch>)dispatch
                     withBoolean:(jboolean)createThreads;

/*!
 @brief Closing of dispatcher no one actions will be executed after calling this method.
 */
- (void)close;

- (void)startPool;

#pragma mark Protected

/*!
 @brief Notification about queue change
 */
- (void)notifyDispatcher;

@end

J2OBJC_STATIC_INIT(ARGenericDispatcherThreads)

FOUNDATION_EXPORT void ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_(ARGenericDispatcherThreads *self, NSString *name, jint count, ARThreadPriorityEnum *priority, ImActorRuntimeActorsDispatchAbstractDispatchQueue *queue, id<ImActorRuntimeActorsDispatchDispatch> dispatch, jboolean createThreads);

FOUNDATION_EXPORT ARGenericDispatcherThreads *new_ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_(NSString *name, jint count, ARThreadPriorityEnum *priority, ImActorRuntimeActorsDispatchAbstractDispatchQueue *queue, id<ImActorRuntimeActorsDispatchDispatch> dispatch, jboolean createThreads) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARGenericDispatcherThreads)

@compatibility_alias ImActorRuntimeGenericThreadingGenericDispatcherThreads ARGenericDispatcherThreads;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericThreadingGenericDispatcherThreads_H_
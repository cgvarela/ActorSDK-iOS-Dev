//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/dispatch/AbstractDispatcher.java
//

#ifndef _ImActorRuntimeActorsDispatchAbstractDispatcher_H_
#define _ImActorRuntimeActorsDispatchAbstractDispatcher_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ImActorRuntimeActorsDispatchAbstractDispatchQueue;
@protocol ImActorRuntimeActorsDispatchDispatch;

/*!
 @brief Abstract thread dispatcher for messages.
 */
@interface ImActorRuntimeActorsDispatchAbstractDispatcher : NSObject {
 @public
  id<ImActorRuntimeActorsDispatchDispatch> dispatch_;
}

#pragma mark Public

/*!
 @brief Queue used for dispatching
 @return queue
 */
- (id)getQueue;

#pragma mark Protected

- (instancetype)initWithImActorRuntimeActorsDispatchAbstractDispatchQueue:(ImActorRuntimeActorsDispatchAbstractDispatchQueue *)queue
                                 withImActorRuntimeActorsDispatchDispatch:(id<ImActorRuntimeActorsDispatchDispatch>)dispatch;

/*!
 @brief Actual execution of action
 @param message action
 */
- (void)dispatchMessageWithId:(id)message;

/*!
 @brief Notification about queue change
 */
- (void)notifyDispatcher;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorRuntimeActorsDispatchAbstractDispatcher)

J2OBJC_FIELD_SETTER(ImActorRuntimeActorsDispatchAbstractDispatcher, dispatch_, id<ImActorRuntimeActorsDispatchDispatch>)

FOUNDATION_EXPORT void ImActorRuntimeActorsDispatchAbstractDispatcher_initWithImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_(ImActorRuntimeActorsDispatchAbstractDispatcher *self, ImActorRuntimeActorsDispatchAbstractDispatchQueue *queue, id<ImActorRuntimeActorsDispatchDispatch> dispatch);

J2OBJC_TYPE_LITERAL_HEADER(ImActorRuntimeActorsDispatchAbstractDispatcher)


#pragma clang diagnostic pop
#endif // _ImActorRuntimeActorsDispatchAbstractDispatcher_H_
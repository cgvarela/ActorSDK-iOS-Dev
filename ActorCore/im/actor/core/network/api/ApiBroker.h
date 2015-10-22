//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/api/ApiBroker.java
//

#ifndef _ImActorCoreNetworkApiApiBroker_H_
#define _ImActorCoreNetworkApiApiBroker_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/actors/Actor.h"

@class ACApiParserConfig;
@class ACEndpoints;
@class ACNetworkStateEnum;
@class ACRequest;
@class ARActorRef;
@protocol ACActorApiCallback;
@protocol ACAuthKeyStorage;
@protocol ACRpcCallback;

@interface ACApiBroker : ARActor

#pragma mark Public

- (instancetype)initWithACEndpoints:(ACEndpoints *)endpoints
               withACAuthKeyStorage:(id<ACAuthKeyStorage>)keyStorage
             withACActorApiCallback:(id<ACActorApiCallback>)callback
                        withBoolean:(jboolean)isEnableLog
                            withInt:(jint)minDelay
                            withInt:(jint)maxDelay
                            withInt:(jint)maxFailureCount
              withACApiParserConfig:(ACApiParserConfig *)parserConfig;

+ (ARActorRef *)getWithACEndpoints:(ACEndpoints *)endpoints
              withACAuthKeyStorage:(id<ACAuthKeyStorage>)keyStorage
            withACActorApiCallback:(id<ACActorApiCallback>)callback
                       withBoolean:(jboolean)isEnableLog
                           withInt:(jint)id_
                           withInt:(jint)minDelay
                           withInt:(jint)maxDelay
                           withInt:(jint)maxFailureCount
             withACApiParserConfig:(ACApiParserConfig *)parserConfig;

- (void)onReceiveWithId:(id)message;

- (void)postStop;

- (void)preStart;

#pragma mark Package-Private

- (void)connectionCountChangedWithInt:(jint)count;

@end

J2OBJC_STATIC_INIT(ACApiBroker)

FOUNDATION_EXPORT ARActorRef *ACApiBroker_getWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withInt_withACApiParserConfig_(ACEndpoints *endpoints, id<ACAuthKeyStorage> keyStorage, id<ACActorApiCallback> callback, jboolean isEnableLog, jint id_, jint minDelay, jint maxDelay, jint maxFailureCount, ACApiParserConfig *parserConfig);

FOUNDATION_EXPORT void ACApiBroker_initWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withACApiParserConfig_(ACApiBroker *self, ACEndpoints *endpoints, id<ACAuthKeyStorage> keyStorage, id<ACActorApiCallback> callback, jboolean isEnableLog, jint minDelay, jint maxDelay, jint maxFailureCount, ACApiParserConfig *parserConfig);

FOUNDATION_EXPORT ACApiBroker *new_ACApiBroker_initWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withACApiParserConfig_(ACEndpoints *endpoints, id<ACAuthKeyStorage> keyStorage, id<ACActorApiCallback> callback, jboolean isEnableLog, jint minDelay, jint maxDelay, jint maxFailureCount, ACApiParserConfig *parserConfig) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACApiBroker)

@compatibility_alias ImActorCoreNetworkApiApiBroker ACApiBroker;

@interface ACApiBroker_PerformRequest : NSObject

#pragma mark Public

- (instancetype)initWithACRequest:(ACRequest *)message
                withACRpcCallback:(id<ACRpcCallback>)callback;

- (id<ACRpcCallback>)getCallback;

- (ACRequest *)getMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(ACApiBroker_PerformRequest)

FOUNDATION_EXPORT void ACApiBroker_PerformRequest_initWithACRequest_withACRpcCallback_(ACApiBroker_PerformRequest *self, ACRequest *message, id<ACRpcCallback> callback);

FOUNDATION_EXPORT ACApiBroker_PerformRequest *new_ACApiBroker_PerformRequest_initWithACRequest_withACRpcCallback_(ACRequest *message, id<ACRpcCallback> callback) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACApiBroker_PerformRequest)

@interface ACApiBroker_CancelRequest : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)randomId;

- (jlong)getRandomId;

@end

J2OBJC_EMPTY_STATIC_INIT(ACApiBroker_CancelRequest)

FOUNDATION_EXPORT void ACApiBroker_CancelRequest_initWithLong_(ACApiBroker_CancelRequest *self, jlong randomId);

FOUNDATION_EXPORT ACApiBroker_CancelRequest *new_ACApiBroker_CancelRequest_initWithLong_(jlong randomId) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACApiBroker_CancelRequest)

@interface ACApiBroker_NetworkChanged : NSObject

#pragma mark Public

- (instancetype)initWithACNetworkStateEnum:(ACNetworkStateEnum *)state;

- (ACNetworkStateEnum *)getState;

@end

J2OBJC_EMPTY_STATIC_INIT(ACApiBroker_NetworkChanged)

FOUNDATION_EXPORT void ACApiBroker_NetworkChanged_initWithACNetworkStateEnum_(ACApiBroker_NetworkChanged *self, ACNetworkStateEnum *state);

FOUNDATION_EXPORT ACApiBroker_NetworkChanged *new_ACApiBroker_NetworkChanged_initWithACNetworkStateEnum_(ACNetworkStateEnum *state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACApiBroker_NetworkChanged)

@interface ACApiBroker_ForceNetworkCheck : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACApiBroker_ForceNetworkCheck)

FOUNDATION_EXPORT void ACApiBroker_ForceNetworkCheck_init(ACApiBroker_ForceNetworkCheck *self);

FOUNDATION_EXPORT ACApiBroker_ForceNetworkCheck *new_ACApiBroker_ForceNetworkCheck_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACApiBroker_ForceNetworkCheck)


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkApiApiBroker_H_

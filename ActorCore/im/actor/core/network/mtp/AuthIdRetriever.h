//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/AuthIdRetriever.java
//

#ifndef _ImActorCoreNetworkMtpAuthIdRetriever_H_
#define _ImActorCoreNetworkMtpAuthIdRetriever_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACEndpoints;
@protocol ACAuthIdRetriever_AuthIdCallback;

@interface ACAuthIdRetriever : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)requestAuthIdWithACEndpoints:(ACEndpoints *)endpoints
                             withInt:(jint)minDelay
                             withInt:(jint)maxDelay
                             withInt:(jint)maxFailureCount
withACAuthIdRetriever_AuthIdCallback:(id<ACAuthIdRetriever_AuthIdCallback>)callback;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAuthIdRetriever)

FOUNDATION_EXPORT void ACAuthIdRetriever_requestAuthIdWithACEndpoints_withInt_withInt_withInt_withACAuthIdRetriever_AuthIdCallback_(ACEndpoints *endpoints, jint minDelay, jint maxDelay, jint maxFailureCount, id<ACAuthIdRetriever_AuthIdCallback> callback);

FOUNDATION_EXPORT void ACAuthIdRetriever_init(ACAuthIdRetriever *self);

FOUNDATION_EXPORT ACAuthIdRetriever *new_ACAuthIdRetriever_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAuthIdRetriever)

@compatibility_alias ImActorCoreNetworkMtpAuthIdRetriever ACAuthIdRetriever;

@protocol ACAuthIdRetriever_AuthIdCallback < NSObject, JavaObject >

- (void)onSuccessWithLong:(jlong)authId;

- (void)onFailure;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAuthIdRetriever_AuthIdCallback)

J2OBJC_TYPE_LITERAL_HEADER(ACAuthIdRetriever_AuthIdCallback)


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpAuthIdRetriever_H_
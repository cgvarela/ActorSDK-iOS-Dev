//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/RpcCallback.java
//

#ifndef _ImActorCoreNetworkRpcCallback_H_
#define _ImActorCoreNetworkRpcCallback_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACResponse;
@class ACRpcException;

@protocol ACRpcCallback < NSObject, JavaObject >

- (void)onResult:(ACResponse *)response;

- (void)onError:(ACRpcException *)e;

@end

J2OBJC_EMPTY_STATIC_INIT(ACRpcCallback)

J2OBJC_TYPE_LITERAL_HEADER(ACRpcCallback)

#define ImActorCoreNetworkRpcCallback ACRpcCallback


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkRpcCallback_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/MTProtoCallback.java
//

#ifndef _ImActorCoreNetworkMtpMTProtoCallback_H_
#define _ImActorCoreNetworkMtpMTProtoCallback_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

@protocol ACMTProtoCallback < NSObject, JavaObject >

- (void)onRpcResponseWithLong:(jlong)mid
                withByteArray:(IOSByteArray *)content;

- (void)onUpdateWithByteArray:(IOSByteArray *)content;

- (void)onAuthKeyInvalidatedWithLong:(jlong)authId;

- (void)onSessionCreated;

- (void)onConnectionsCountChangedWithInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMTProtoCallback)

J2OBJC_TYPE_LITERAL_HEADER(ACMTProtoCallback)

#define ImActorCoreNetworkMtpMTProtoCallback ACMTProtoCallback


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpMTProtoCallback_H_

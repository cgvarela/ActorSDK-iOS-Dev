//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/MTProto.java
//

#ifndef _ImActorCoreNetworkMtpMTProto_H_
#define _ImActorCoreNetworkMtpMTProto_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACEndpoints;
@class ACNetworkStateEnum;
@class ACProtoStruct;
@protocol ACMTProtoCallback;

@interface ACMTProto : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)authId
                    withLong:(jlong)sessionId
             withACEndpoints:(ACEndpoints *)endpoints
       withACMTProtoCallback:(id<ACMTProtoCallback>)callback
                 withBoolean:(jboolean)isEnableLog
                withNSString:(NSString *)basePath
                     withInt:(jint)minDelay
                     withInt:(jint)maxDelay
                     withInt:(jint)maxFailureCount;

- (void)cancelRpcWithLong:(jlong)mtId;

- (void)forceNetworkCheck;

- (NSString *)getActorPath;

- (jlong)getAuthId;

- (id<ACMTProtoCallback>)getCallback;

- (ACEndpoints *)getEndpoints;

- (jint)getMaxDelay;

- (jint)getMaxFailureCount;

- (jint)getMinDelay;

- (jlong)getSessionId;

- (jboolean)isEnableLog;

- (void)onNetworkChangedWithACNetworkStateEnum:(ACNetworkStateEnum *)state;

- (jlong)sendRpcMessageWithACProtoStruct:(ACProtoStruct *)protoStruct;

- (void)stopProto;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMTProto)

FOUNDATION_EXPORT void ACMTProto_initWithLong_withLong_withACEndpoints_withACMTProtoCallback_withBoolean_withNSString_withInt_withInt_withInt_(ACMTProto *self, jlong authId, jlong sessionId, ACEndpoints *endpoints, id<ACMTProtoCallback> callback, jboolean isEnableLog, NSString *basePath, jint minDelay, jint maxDelay, jint maxFailureCount);

FOUNDATION_EXPORT ACMTProto *new_ACMTProto_initWithLong_withLong_withACEndpoints_withACMTProtoCallback_withBoolean_withNSString_withInt_withInt_withInt_(jlong authId, jlong sessionId, ACEndpoints *endpoints, id<ACMTProtoCallback> callback, jboolean isEnableLog, NSString *basePath, jint minDelay, jint maxDelay, jint maxFailureCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMTProto)

@compatibility_alias ImActorCoreNetworkMtpMTProto ACMTProto;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpMTProto_H_
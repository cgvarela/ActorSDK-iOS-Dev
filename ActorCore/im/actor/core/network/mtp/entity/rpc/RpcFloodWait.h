//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcFloodWait.java
//

#ifndef _ImActorCoreNetworkMtpEntityRpcRpcFloodWait_H_
#define _ImActorCoreNetworkMtpEntityRpcRpcFloodWait_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/mtp/entity/ProtoStruct.h>

@class ARDataInput;
@class ARDataOutput;

#define ACRpcFloodWait_HEADER 3

@interface ACRpcFloodWait : ACProtoStruct

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithInt:(jint)delay;

- (jint)getDelay;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACRpcFloodWait)

J2OBJC_STATIC_FIELD_GETTER(ACRpcFloodWait, HEADER, jbyte)

FOUNDATION_EXPORT void ACRpcFloodWait_initWithARDataInput_(ACRpcFloodWait *self, ARDataInput *stream);

FOUNDATION_EXPORT ACRpcFloodWait *new_ACRpcFloodWait_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACRpcFloodWait_initWithInt_(ACRpcFloodWait *self, jint delay);

FOUNDATION_EXPORT ACRpcFloodWait *new_ACRpcFloodWait_initWithInt_(jint delay) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACRpcFloodWait)

@compatibility_alias ImActorCoreNetworkMtpEntityRpcRpcFloodWait ACRpcFloodWait;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityRpcRpcFloodWait_H_
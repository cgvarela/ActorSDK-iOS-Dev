//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/MTRpcResponse.java
//

#ifndef _ImActorCoreNetworkMtpEntityMTRpcResponse_H_
#define _ImActorCoreNetworkMtpEntityMTRpcResponse_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;
@class IOSByteArray;

#define ACMTRpcResponse_HEADER 4

@interface ACMTRpcResponse : ACProtoStruct

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (jlong)getMessageId;

- (IOSByteArray *)getPayload;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMTRpcResponse)

J2OBJC_STATIC_FIELD_GETTER(ACMTRpcResponse, HEADER, jbyte)

FOUNDATION_EXPORT void ACMTRpcResponse_initWithARDataInput_(ACMTRpcResponse *self, ARDataInput *stream);

FOUNDATION_EXPORT ACMTRpcResponse *new_ACMTRpcResponse_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMTRpcResponse)

@compatibility_alias ImActorCoreNetworkMtpEntityMTRpcResponse ACMTRpcResponse;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityMTRpcResponse_H_

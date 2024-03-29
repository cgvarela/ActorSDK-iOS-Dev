//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcRequest.java
//

#ifndef _ImActorCoreNetworkMtpEntityRpcRpcRequest_H_
#define _ImActorCoreNetworkMtpEntityRpcRpcRequest_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;
@class IOSByteArray;

#define ACRpcRequest_HEADER 1

@interface ACRpcRequest : ACProtoStruct {
 @public
  jint requestType_;
  IOSByteArray *payload_;
}

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithInt:(jint)requestType
              withByteArray:(IOSByteArray *)payload;

- (IOSByteArray *)getPayload;

- (jint)getRequestType;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACRpcRequest)

J2OBJC_FIELD_SETTER(ACRpcRequest, payload_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ACRpcRequest, HEADER, jbyte)

FOUNDATION_EXPORT void ACRpcRequest_initWithARDataInput_(ACRpcRequest *self, ARDataInput *stream);

FOUNDATION_EXPORT ACRpcRequest *new_ACRpcRequest_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACRpcRequest_initWithInt_withByteArray_(ACRpcRequest *self, jint requestType, IOSByteArray *payload);

FOUNDATION_EXPORT ACRpcRequest *new_ACRpcRequest_initWithInt_withByteArray_(jint requestType, IOSByteArray *payload) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACRpcRequest)

@compatibility_alias ImActorCoreNetworkMtpEntityRpcRpcRequest ACRpcRequest;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityRpcRpcRequest_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/UnsentResponse.java
//

#ifndef _ImActorCoreNetworkMtpEntityUnsentResponse_H_
#define _ImActorCoreNetworkMtpEntityUnsentResponse_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/mtp/entity/ProtoStruct.h>

@class ARDataInput;
@class ARDataOutput;

#define ACUnsentResponse_HEADER 8

@interface ACUnsentResponse : ACProtoStruct

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId
                    withLong:(jlong)responseMessageId
                     withInt:(jint)len;

- (jint)getLen;

- (jlong)getMessageId;

- (jlong)getResponseMessageId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACUnsentResponse)

J2OBJC_STATIC_FIELD_GETTER(ACUnsentResponse, HEADER, jbyte)

FOUNDATION_EXPORT void ACUnsentResponse_initWithLong_withLong_withInt_(ACUnsentResponse *self, jlong messageId, jlong responseMessageId, jint len);

FOUNDATION_EXPORT ACUnsentResponse *new_ACUnsentResponse_initWithLong_withLong_withInt_(jlong messageId, jlong responseMessageId, jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACUnsentResponse_initWithARDataInput_(ACUnsentResponse *self, ARDataInput *stream);

FOUNDATION_EXPORT ACUnsentResponse *new_ACUnsentResponse_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACUnsentResponse)

@compatibility_alias ImActorCoreNetworkMtpEntityUnsentResponse ACUnsentResponse;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityUnsentResponse_H_

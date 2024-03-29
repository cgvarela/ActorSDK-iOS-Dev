//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/RequestResend.java
//

#ifndef _ImActorCoreNetworkMtpEntityRequestResend_H_
#define _ImActorCoreNetworkMtpEntityRequestResend_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;

#define ACRequestResend_HEADER 9

@interface ACRequestResend : ACProtoStruct

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId;

- (jlong)getMessageId;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACRequestResend)

J2OBJC_STATIC_FIELD_GETTER(ACRequestResend, HEADER, jbyte)

FOUNDATION_EXPORT void ACRequestResend_initWithLong_(ACRequestResend *self, jlong messageId);

FOUNDATION_EXPORT ACRequestResend *new_ACRequestResend_initWithLong_(jlong messageId) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACRequestResend_initWithARDataInput_(ACRequestResend *self, ARDataInput *stream);

FOUNDATION_EXPORT ACRequestResend *new_ACRequestResend_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACRequestResend)

@compatibility_alias ImActorCoreNetworkMtpEntityRequestResend ACRequestResend;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityRequestResend_H_

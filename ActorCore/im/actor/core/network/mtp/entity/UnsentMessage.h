//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/UnsentMessage.java
//

#ifndef _ImActorCoreNetworkMtpEntityUnsentMessage_H_
#define _ImActorCoreNetworkMtpEntityUnsentMessage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;

#define ACUnsentMessage_HEADER 7

@interface ACUnsentMessage : ACProtoStruct

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId
                     withInt:(jint)len;

- (jint)getLen;

- (jlong)getMessageId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACUnsentMessage)

J2OBJC_STATIC_FIELD_GETTER(ACUnsentMessage, HEADER, jbyte)

FOUNDATION_EXPORT void ACUnsentMessage_initWithLong_withInt_(ACUnsentMessage *self, jlong messageId, jint len);

FOUNDATION_EXPORT ACUnsentMessage *new_ACUnsentMessage_initWithLong_withInt_(jlong messageId, jint len) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACUnsentMessage_initWithARDataInput_(ACUnsentMessage *self, ARDataInput *stream);

FOUNDATION_EXPORT ACUnsentMessage *new_ACUnsentMessage_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACUnsentMessage)

@compatibility_alias ImActorCoreNetworkMtpEntityUnsentMessage ACUnsentMessage;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityUnsentMessage_H_

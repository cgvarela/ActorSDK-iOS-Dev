//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/NewSessionCreated.java
//

#ifndef _ImActorCoreNetworkMtpEntityNewSessionCreated_H_
#define _ImActorCoreNetworkMtpEntityNewSessionCreated_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/mtp/entity/ProtoStruct.h>

@class ARDataInput;
@class ARDataOutput;

#define ACNewSessionCreated_HEADER 12

@interface ACNewSessionCreated : ACProtoStruct {
 @public
  jlong sessionId_;
  jlong messageId_;
}

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithLong:(jlong)sessionId
                    withLong:(jlong)messageId;

- (jlong)getMessageId;

- (jlong)getSessionId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACNewSessionCreated)

J2OBJC_STATIC_FIELD_GETTER(ACNewSessionCreated, HEADER, jbyte)

FOUNDATION_EXPORT void ACNewSessionCreated_initWithARDataInput_(ACNewSessionCreated *self, ARDataInput *stream);

FOUNDATION_EXPORT ACNewSessionCreated *new_ACNewSessionCreated_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACNewSessionCreated_initWithLong_withLong_(ACNewSessionCreated *self, jlong sessionId, jlong messageId);

FOUNDATION_EXPORT ACNewSessionCreated *new_ACNewSessionCreated_initWithLong_withLong_(jlong sessionId, jlong messageId) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACNewSessionCreated)

@compatibility_alias ImActorCoreNetworkMtpEntityNewSessionCreated ACNewSessionCreated;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityNewSessionCreated_H_
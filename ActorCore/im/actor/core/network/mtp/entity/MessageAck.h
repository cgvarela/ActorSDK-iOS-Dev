//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/MessageAck.java
//

#ifndef _ImActorCoreNetworkMtpEntityMessageAck_H_
#define _ImActorCoreNetworkMtpEntityMessageAck_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/mtp/entity/ProtoStruct.h>

@class ARDataInput;
@class ARDataOutput;
@class IOSLongArray;
@class IOSObjectArray;

#define ACMessageAck_HEADER 6

@interface ACMessageAck : ACProtoStruct {
 @public
  IOSLongArray *messagesIds_;
}

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithJavaLangLongArray:(IOSObjectArray *)_messagesIds;

- (instancetype)initWithLongArray:(IOSLongArray *)messagesIds;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessageAck)

J2OBJC_FIELD_SETTER(ACMessageAck, messagesIds_, IOSLongArray *)

J2OBJC_STATIC_FIELD_GETTER(ACMessageAck, HEADER, jbyte)

FOUNDATION_EXPORT void ACMessageAck_initWithARDataInput_(ACMessageAck *self, ARDataInput *stream);

FOUNDATION_EXPORT ACMessageAck *new_ACMessageAck_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACMessageAck_initWithJavaLangLongArray_(ACMessageAck *self, IOSObjectArray *_messagesIds);

FOUNDATION_EXPORT ACMessageAck *new_ACMessageAck_initWithJavaLangLongArray_(IOSObjectArray *_messagesIds) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACMessageAck_initWithLongArray_(ACMessageAck *self, IOSLongArray *messagesIds);

FOUNDATION_EXPORT ACMessageAck *new_ACMessageAck_initWithLongArray_(IOSLongArray *messagesIds) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessageAck)

@compatibility_alias ImActorCoreNetworkMtpEntityMessageAck ACMessageAck;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityMessageAck_H_
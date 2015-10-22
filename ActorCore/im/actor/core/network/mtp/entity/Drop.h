//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/Drop.java
//

#ifndef _ImActorCoreNetworkMtpEntityDrop_H_
#define _ImActorCoreNetworkMtpEntityDrop_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/mtp/entity/ProtoStruct.h>

@class ARDataInput;
@class ARDataOutput;

#define ACDrop_HEADER 13

@interface ACDrop : ACProtoStruct {
 @public
  jlong messageId_;
  NSString *message_;
}

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId
                withNSString:(NSString *)message;

- (NSString *)getMessage;

- (jlong)getMessageId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDrop)

J2OBJC_FIELD_SETTER(ACDrop, message_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ACDrop, HEADER, jbyte)

FOUNDATION_EXPORT void ACDrop_initWithARDataInput_(ACDrop *self, ARDataInput *stream);

FOUNDATION_EXPORT ACDrop *new_ACDrop_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACDrop_initWithLong_withNSString_(ACDrop *self, jlong messageId, NSString *message);

FOUNDATION_EXPORT ACDrop *new_ACDrop_initWithLong_withNSString_(jlong messageId, NSString *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDrop)

@compatibility_alias ImActorCoreNetworkMtpEntityDrop ACDrop;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityDrop_H_
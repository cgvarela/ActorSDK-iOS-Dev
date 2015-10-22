//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/Pong.java
//

#ifndef _ImActorCoreNetworkMtpEntityPong_H_
#define _ImActorCoreNetworkMtpEntityPong_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;

#define ACPong_HEADER 2

@interface ACPong : ACProtoStruct

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithLong:(jlong)randomId;

- (jlong)getRandomId;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACPong)

J2OBJC_STATIC_FIELD_GETTER(ACPong, HEADER, jbyte)

FOUNDATION_EXPORT void ACPong_initWithARDataInput_(ACPong *self, ARDataInput *stream);

FOUNDATION_EXPORT ACPong *new_ACPong_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACPong_initWithLong_(ACPong *self, jlong randomId);

FOUNDATION_EXPORT ACPong *new_ACPong_initWithLong_(jlong randomId) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACPong)

@compatibility_alias ImActorCoreNetworkMtpEntityPong ACPong;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityPong_H_

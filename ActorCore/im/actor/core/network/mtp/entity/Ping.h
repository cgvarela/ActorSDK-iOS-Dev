//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/Ping.java
//

#ifndef _ImActorCoreNetworkMtpEntityPing_H_
#define _ImActorCoreNetworkMtpEntityPing_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;

#define ACPing_HEADER 1

@interface ACPing : ACProtoStruct

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

J2OBJC_EMPTY_STATIC_INIT(ACPing)

J2OBJC_STATIC_FIELD_GETTER(ACPing, HEADER, jbyte)

FOUNDATION_EXPORT void ACPing_initWithARDataInput_(ACPing *self, ARDataInput *stream);

FOUNDATION_EXPORT ACPing *new_ACPing_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACPing_initWithLong_(ACPing *self, jlong randomId);

FOUNDATION_EXPORT ACPing *new_ACPing_initWithLong_(jlong randomId) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACPing)

@compatibility_alias ImActorCoreNetworkMtpEntityPing ACPing;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityPing_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcError.java
//

#ifndef _ImActorCoreNetworkMtpEntityRpcRpcError_H_
#define _ImActorCoreNetworkMtpEntityRpcRpcError_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"

@class ARDataInput;
@class ARDataOutput;
@class IOSByteArray;

#define ACRpcError_HEADER 2

@interface ACRpcError : ACProtoStruct {
 @public
  jint errorCode_;
  NSString *errorTag_;
  NSString *userMessage_;
  jboolean canTryAgain_;
  IOSByteArray *relatedData_;
}

+ (jbyte)HEADER;

#pragma mark Public

- (instancetype)initWithARDataInput:(ARDataInput *)stream;

- (instancetype)initWithInt:(jint)errorCode
               withNSString:(NSString *)errorTag
               withNSString:(NSString *)userMessage
                withBoolean:(jboolean)canTryAgain
              withByteArray:(IOSByteArray *)relatedData;

- (NSString *)description;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithARDataInput:(ARDataInput *)bs;

- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(ACRpcError)

J2OBJC_FIELD_SETTER(ACRpcError, errorTag_, NSString *)
J2OBJC_FIELD_SETTER(ACRpcError, userMessage_, NSString *)
J2OBJC_FIELD_SETTER(ACRpcError, relatedData_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ACRpcError, HEADER, jbyte)

FOUNDATION_EXPORT void ACRpcError_initWithARDataInput_(ACRpcError *self, ARDataInput *stream);

FOUNDATION_EXPORT ACRpcError *new_ACRpcError_initWithARDataInput_(ARDataInput *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACRpcError_initWithInt_withNSString_withNSString_withBoolean_withByteArray_(ACRpcError *self, jint errorCode, NSString *errorTag, NSString *userMessage, jboolean canTryAgain, IOSByteArray *relatedData);

FOUNDATION_EXPORT ACRpcError *new_ACRpcError_initWithInt_withNSString_withNSString_withBoolean_withByteArray_(jint errorCode, NSString *errorTag, NSString *userMessage, jboolean canTryAgain, IOSByteArray *relatedData) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACRpcError)

@compatibility_alias ImActorCoreNetworkMtpEntityRpcRpcError ACRpcError;


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpEntityRpcRpcError_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcRequest.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/core/network/mtp/entity/rpc/RpcRequest.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcRequest.java"


#line 13
@implementation ACRpcRequest

+ (jbyte)HEADER {
  return ACRpcRequest_HEADER;
}


#line 21
- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACRpcRequest_initWithARDataInput_(self, stream);
  return self;
}


#line 25
- (instancetype)initWithInt:(jint)requestType
              withByteArray:(IOSByteArray *)payload {
  ACRpcRequest_initWithInt_withByteArray_(self, requestType, payload);
  return self;
}


#line 30
- (jint)getRequestType {
  return requestType_;
}

- (IOSByteArray *)getPayload {
  return payload_;
}


#line 39
- (jbyte)getHeader {
  return ACRpcRequest_HEADER;
}


#line 44
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeIntWithInt:requestType_];
  [bs writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}


#line 50
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  requestType_ = [((ARDataInput *) nil_chk(bs)) readInt];
  payload_ = [bs readProtoBytes];
}


#line 56
- (NSString *)description {
  return JreStrcat("$IC", @"RpcRequest[", requestType_, ']');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "RpcRequest", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithInt:withByteArray:", "RpcRequest", NULL, 0x1, NULL, NULL },
    { "getRequestType", NULL, "I", 0x1, NULL, NULL },
    { "getPayload", NULL, "[B", 0x1, NULL, NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACRpcRequest_HEADER },
    { "requestType_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "payload_", NULL, 0x1, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACRpcRequest = { 2, "RpcRequest", "im.actor.core.network.mtp.entity.rpc", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACRpcRequest;
}

@end


#line 21
void ACRpcRequest_initWithARDataInput_(ACRpcRequest *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 21
ACRpcRequest *new_ACRpcRequest_initWithARDataInput_(ARDataInput *stream) {
  ACRpcRequest *self = [ACRpcRequest alloc];
  ACRpcRequest_initWithARDataInput_(self, stream);
  return self;
}


#line 25
void ACRpcRequest_initWithInt_withByteArray_(ACRpcRequest *self, jint requestType, IOSByteArray *payload) {
  (void) ACProtoStruct_init(self);
  
#line 26
  self->requestType_ = requestType;
  self->payload_ = payload;
}


#line 25
ACRpcRequest *new_ACRpcRequest_initWithInt_withByteArray_(jint requestType, IOSByteArray *payload) {
  ACRpcRequest *self = [ACRpcRequest alloc];
  ACRpcRequest_initWithInt_withByteArray_(self, requestType, payload);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACRpcRequest)

#pragma clang diagnostic pop

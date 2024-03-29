//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcOk.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/core/network/mtp/entity/rpc/RpcOk.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/rpc/RpcOk.java"


#line 13
@implementation ACRpcOk

+ (jbyte)HEADER {
  return ACRpcOk_HEADER;
}


#line 20
- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACRpcOk_initWithARDataInput_(self, stream);
  return self;
}


#line 24
- (instancetype)initWithInt:(jint)responseType
              withByteArray:(IOSByteArray *)payload {
  ACRpcOk_initWithInt_withByteArray_(self, responseType, payload);
  return self;
}


#line 29
- (jint)getResponseType {
  return responseType_;
}

- (IOSByteArray *)getPayload {
  return payload_;
}


#line 38
- (jbyte)getHeader {
  return ACRpcOk_HEADER;
}


#line 43
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeIntWithInt:responseType_];
  [bs writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}


#line 49
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  responseType_ = [((ARDataInput *) nil_chk(bs)) readInt];
  payload_ = [bs readProtoBytes];
}


#line 56
- (NSString *)description {
  return JreStrcat("$IC", @"RpcOk{", responseType_, ']');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "RpcOk", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithInt:withByteArray:", "RpcOk", NULL, 0x1, NULL, NULL },
    { "getResponseType", NULL, "I", 0x1, NULL, NULL },
    { "getPayload", NULL, "[B", 0x1, NULL, NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACRpcOk_HEADER },
    { "responseType_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "payload_", NULL, 0x1, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACRpcOk = { 2, "RpcOk", "im.actor.core.network.mtp.entity.rpc", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACRpcOk;
}

@end


#line 20
void ACRpcOk_initWithARDataInput_(ACRpcOk *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 20
ACRpcOk *new_ACRpcOk_initWithARDataInput_(ARDataInput *stream) {
  ACRpcOk *self = [ACRpcOk alloc];
  ACRpcOk_initWithARDataInput_(self, stream);
  return self;
}


#line 24
void ACRpcOk_initWithInt_withByteArray_(ACRpcOk *self, jint responseType, IOSByteArray *payload) {
  (void) ACProtoStruct_init(self);
  
#line 25
  self->responseType_ = responseType;
  self->payload_ = payload;
}


#line 24
ACRpcOk *new_ACRpcOk_initWithInt_withByteArray_(jint responseType, IOSByteArray *payload) {
  ACRpcOk *self = [ACRpcOk alloc];
  ACRpcOk_initWithInt_withByteArray_(self, responseType, payload);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACRpcOk)

#pragma clang diagnostic pop

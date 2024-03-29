//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/MTRpcRequest.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/network/mtp/entity/MTRpcRequest.h"
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/MTRpcRequest.java"


#line 12
@implementation ACMTRpcRequest

+ (jbyte)HEADER {
  return ACMTRpcRequest_HEADER;
}

- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACMTRpcRequest_initWithARDataInput_(self, stream);
  return self;
}


#line 22
- (instancetype)initWithByteArray:(IOSByteArray *)payload {
  ACMTRpcRequest_initWithByteArray_(self, payload);
  return self;
}


#line 26
- (IOSByteArray *)getPayload {
  return payload_;
}


#line 31
- (jbyte)getHeader {
  return ACMTRpcRequest_HEADER;
}


#line 36
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}


#line 41
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  payload_ = [((ARDataInput *) nil_chk(bs)) readProtoBytes];
}


#line 46
- (NSString *)description {
  return @"RequestBox";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "MTRpcRequest", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithByteArray:", "MTRpcRequest", NULL, 0x1, NULL, NULL },
    { "getPayload", NULL, "[B", 0x1, NULL, NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACMTRpcRequest_HEADER },
    { "payload_", NULL, 0x1, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACMTRpcRequest = { 2, "MTRpcRequest", "im.actor.core.network.mtp.entity", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACMTRpcRequest;
}

@end


#line 18
void ACMTRpcRequest_initWithARDataInput_(ACMTRpcRequest *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 18
ACMTRpcRequest *new_ACMTRpcRequest_initWithARDataInput_(ARDataInput *stream) {
  ACMTRpcRequest *self = [ACMTRpcRequest alloc];
  ACMTRpcRequest_initWithARDataInput_(self, stream);
  return self;
}


#line 22
void ACMTRpcRequest_initWithByteArray_(ACMTRpcRequest *self, IOSByteArray *payload) {
  (void) ACProtoStruct_init(self);
  
#line 23
  self->payload_ = payload;
}


#line 22
ACMTRpcRequest *new_ACMTRpcRequest_initWithByteArray_(IOSByteArray *payload) {
  ACMTRpcRequest *self = [ACMTRpcRequest alloc];
  ACMTRpcRequest_initWithByteArray_(self, payload);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACMTRpcRequest)

#pragma clang diagnostic pop

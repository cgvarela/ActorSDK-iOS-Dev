//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/UnsentResponse.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/core/network/mtp/entity/UnsentResponse.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACUnsentResponse () {
 @public
  jlong messageId_;
  jlong responseMessageId_;
  jint len_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/UnsentResponse.java"


#line 12
@implementation ACUnsentResponse

+ (jbyte)HEADER {
  return ACUnsentResponse_HEADER;
}


#line 20
- (instancetype)initWithLong:(jlong)messageId
                    withLong:(jlong)responseMessageId
                     withInt:(jint)len {
  ACUnsentResponse_initWithLong_withLong_withInt_(self, messageId, responseMessageId, len);
  return self;
}


#line 26
- (jlong)getMessageId {
  return messageId_;
}

- (jlong)getResponseMessageId {
  return responseMessageId_;
}

- (jint)getLen {
  return len_;
}

- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACUnsentResponse_initWithARDataInput_(self, stream);
  return self;
}

- (jbyte)getHeader {
  return ACUnsentResponse_HEADER;
}


#line 48
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeLongWithLong:messageId_];
  [bs writeLongWithLong:responseMessageId_];
  [bs writeIntWithInt:len_];
}


#line 55
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  messageId_ = [((ARDataInput *) nil_chk(bs)) readLong];
  responseMessageId_ = [bs readLong];
  len_ = [bs readInt];
}


#line 62
- (NSString *)description {
  return JreStrcat("$J$JC", @"UnsentResponse[", messageId_, @"->", responseMessageId_, ']');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:withInt:", "UnsentResponse", NULL, 0x1, NULL, NULL },
    { "getMessageId", NULL, "J", 0x1, NULL, NULL },
    { "getResponseMessageId", NULL, "J", 0x1, NULL, NULL },
    { "getLen", NULL, "I", 0x1, NULL, NULL },
    { "initWithARDataInput:", "UnsentResponse", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACUnsentResponse_HEADER },
    { "messageId_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "responseMessageId_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "len_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACUnsentResponse = { 2, "UnsentResponse", "im.actor.core.network.mtp.entity", NULL, 0x1, 9, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACUnsentResponse;
}

@end


#line 20
void ACUnsentResponse_initWithLong_withLong_withInt_(ACUnsentResponse *self, jlong messageId, jlong responseMessageId, jint len) {
  (void) ACProtoStruct_init(self);
  
#line 21
  self->messageId_ = messageId;
  self->responseMessageId_ = responseMessageId;
  self->len_ = len;
}


#line 20
ACUnsentResponse *new_ACUnsentResponse_initWithLong_withLong_withInt_(jlong messageId, jlong responseMessageId, jint len) {
  ACUnsentResponse *self = [ACUnsentResponse alloc];
  ACUnsentResponse_initWithLong_withLong_withInt_(self, messageId, responseMessageId, len);
  return self;
}


#line 38
void ACUnsentResponse_initWithARDataInput_(ACUnsentResponse *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 38
ACUnsentResponse *new_ACUnsentResponse_initWithARDataInput_(ARDataInput *stream) {
  ACUnsentResponse *self = [ACUnsentResponse alloc];
  ACUnsentResponse_initWithARDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACUnsentResponse)

#pragma clang diagnostic pop
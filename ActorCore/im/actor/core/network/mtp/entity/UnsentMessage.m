//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/UnsentMessage.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/core/network/mtp/entity/UnsentMessage.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACUnsentMessage () {
 @public
  jlong messageId_;
  jint len_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/UnsentMessage.java"


#line 12
@implementation ACUnsentMessage

+ (jbyte)HEADER {
  return ACUnsentMessage_HEADER;
}


#line 19
- (instancetype)initWithLong:(jlong)messageId
                     withInt:(jint)len {
  ACUnsentMessage_initWithLong_withInt_(self, messageId, len);
  return self;
}


#line 24
- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACUnsentMessage_initWithARDataInput_(self, stream);
  return self;
}


#line 28
- (jlong)getMessageId {
  return messageId_;
}

- (jint)getLen {
  return len_;
}


#line 37
- (jbyte)getHeader {
  return ACUnsentMessage_HEADER;
}


#line 42
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeLongWithLong:messageId_];
  [bs writeIntWithInt:len_];
}


#line 48
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  messageId_ = [((ARDataInput *) nil_chk(bs)) readLong];
  len_ = [bs readInt];
}


#line 54
- (NSString *)description {
  return JreStrcat("$JC", @"UnsentMessage[", messageId_, ']');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withInt:", "UnsentMessage", NULL, 0x1, NULL, NULL },
    { "initWithARDataInput:", "UnsentMessage", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getMessageId", NULL, "J", 0x1, NULL, NULL },
    { "getLen", NULL, "I", 0x1, NULL, NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACUnsentMessage_HEADER },
    { "messageId_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "len_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACUnsentMessage = { 2, "UnsentMessage", "im.actor.core.network.mtp.entity", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACUnsentMessage;
}

@end


#line 19
void ACUnsentMessage_initWithLong_withInt_(ACUnsentMessage *self, jlong messageId, jint len) {
  (void) ACProtoStruct_init(self);
  
#line 20
  self->messageId_ = messageId;
  self->len_ = len;
}


#line 19
ACUnsentMessage *new_ACUnsentMessage_initWithLong_withInt_(jlong messageId, jint len) {
  ACUnsentMessage *self = [ACUnsentMessage alloc];
  ACUnsentMessage_initWithLong_withInt_(self, messageId, len);
  return self;
}


#line 24
void ACUnsentMessage_initWithARDataInput_(ACUnsentMessage *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 24
ACUnsentMessage *new_ACUnsentMessage_initWithARDataInput_(ARDataInput *stream) {
  ACUnsentMessage *self = [ACUnsentMessage alloc];
  ACUnsentMessage_initWithARDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACUnsentMessage)

#pragma clang diagnostic pop

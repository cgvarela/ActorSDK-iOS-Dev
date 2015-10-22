//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/NewSessionCreated.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/mtp/entity/NewSessionCreated.h"
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/NewSessionCreated.java"


#line 12
@implementation ACNewSessionCreated

+ (jbyte)HEADER {
  return ACNewSessionCreated_HEADER;
}


#line 20
- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACNewSessionCreated_initWithARDataInput_(self, stream);
  return self;
}


#line 24
- (instancetype)initWithLong:(jlong)sessionId
                    withLong:(jlong)messageId {
  ACNewSessionCreated_initWithLong_withLong_(self, sessionId, messageId);
  return self;
}


#line 29
- (jlong)getSessionId {
  return sessionId_;
}

- (jlong)getMessageId {
  return messageId_;
}


#line 38
- (jbyte)getHeader {
  return ACNewSessionCreated_HEADER;
}


#line 43
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeLongWithLong:sessionId_];
  [bs writeLongWithLong:messageId_];
}


#line 49
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  sessionId_ = [((ARDataInput *) nil_chk(bs)) readLong];
  messageId_ = [bs readLong];
}


#line 55
- (NSString *)description {
  return JreStrcat("$JC", @"NewSession {", sessionId_, '}');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "NewSessionCreated", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithLong:withLong:", "NewSessionCreated", NULL, 0x1, NULL, NULL },
    { "getSessionId", NULL, "J", 0x1, NULL, NULL },
    { "getMessageId", NULL, "J", 0x1, NULL, NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACNewSessionCreated_HEADER },
    { "sessionId_", NULL, 0x1, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "messageId_", NULL, 0x1, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACNewSessionCreated = { 2, "NewSessionCreated", "im.actor.core.network.mtp.entity", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACNewSessionCreated;
}

@end


#line 20
void ACNewSessionCreated_initWithARDataInput_(ACNewSessionCreated *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 20
ACNewSessionCreated *new_ACNewSessionCreated_initWithARDataInput_(ARDataInput *stream) {
  ACNewSessionCreated *self = [ACNewSessionCreated alloc];
  ACNewSessionCreated_initWithARDataInput_(self, stream);
  return self;
}


#line 24
void ACNewSessionCreated_initWithLong_withLong_(ACNewSessionCreated *self, jlong sessionId, jlong messageId) {
  (void) ACProtoStruct_init(self);
  
#line 25
  self->sessionId_ = sessionId;
  self->messageId_ = messageId;
}


#line 24
ACNewSessionCreated *new_ACNewSessionCreated_initWithLong_withLong_(jlong sessionId, jlong messageId) {
  ACNewSessionCreated *self = [ACNewSessionCreated alloc];
  ACNewSessionCreated_initWithLong_withLong_(self, sessionId, messageId);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACNewSessionCreated)

#pragma clang diagnostic pop

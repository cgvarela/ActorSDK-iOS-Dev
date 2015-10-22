//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/Ping.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/mtp/entity/Ping.h"
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPing () {
 @public
  jlong randomId_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/Ping.java"


#line 13
@implementation ACPing

+ (jbyte)HEADER {
  return ACPing_HEADER;
}

- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACPing_initWithARDataInput_(self, stream);
  return self;
}


#line 23
- (instancetype)initWithLong:(jlong)randomId {
  ACPing_initWithLong_(self, randomId);
  return self;
}


#line 27
- (jlong)getRandomId {
  return randomId_;
}


#line 32
- (jbyte)getHeader {
  return ACPing_HEADER;
}


#line 37
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
  [((ARDataOutput *) nil_chk(bs)) writeLongWithLong:randomId_];
}


#line 42
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
  randomId_ = [((ARDataInput *) nil_chk(bs)) readLong];
}


#line 47
- (NSString *)description {
  return JreStrcat("$JC", @"Ping{", randomId_, '}');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "Ping", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithLong:", "Ping", NULL, 0x1, NULL, NULL },
    { "getRandomId", NULL, "J", 0x1, NULL, NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACPing_HEADER },
    { "randomId_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACPing = { 2, "Ping", "im.actor.core.network.mtp.entity", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPing;
}

@end


#line 19
void ACPing_initWithARDataInput_(ACPing *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 19
ACPing *new_ACPing_initWithARDataInput_(ARDataInput *stream) {
  ACPing *self = [ACPing alloc];
  ACPing_initWithARDataInput_(self, stream);
  return self;
}


#line 23
void ACPing_initWithLong_(ACPing *self, jlong randomId) {
  (void) ACProtoStruct_init(self);
  
#line 24
  self->randomId_ = randomId;
}


#line 23
ACPing *new_ACPing_initWithLong_(jlong randomId) {
  ACPing *self = [ACPing alloc];
  ACPing_initWithLong_(self, randomId);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACPing)

#pragma clang diagnostic pop

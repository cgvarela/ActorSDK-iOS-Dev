//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseSeq.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/ResponseSeq.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/bser/Utils.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARResponseSeq () {
 @public
  jint seq_;
  IOSByteArray *state_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseSeq, state_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseSeq.java"


#line 18
@implementation ARResponseSeq

+ (jint)HEADER {
  return ARResponseSeq_HEADER;
}


#line 21
+ (ARResponseSeq *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseSeq_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state {
  ARResponseSeq_initWithInt_withByteArray_(self, seq, state);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARResponseSeq_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 37
- (jint)getSeq {
  return self->seq_;
}


#line 42
- (IOSByteArray *)getState {
  return self->state_;
}


#line 47
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->seq_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
}


#line 53
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
}


#line 62
- (NSString *)description {
  NSString *res = @"response Seq{";
  (void) JreStrAppendStrong(&res, "$I", @"seq=", self->seq_);
  (void) JreStrAppendStrong(&res, "$$", @", state=", ARUtils_byteArrayToStringWithByteArray_(self->state_));
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 71
- (jint)getHeaderKey {
  return ARResponseSeq_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseSeq;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withByteArray:", "ResponseSeq", NULL, 0x1, NULL, NULL },
    { "init", "ResponseSeq", NULL, 0x1, NULL, NULL },
    { "getSeq", NULL, "I", 0x1, NULL, NULL },
    { "getState", NULL, "[B", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseSeq_HEADER },
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseSeq = { 2, "ResponseSeq", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseSeq;
}

@end


#line 21
ARResponseSeq *ARResponseSeq_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseSeq_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseSeq_init(), data);
}

void ARResponseSeq_initWithInt_withByteArray_(ARResponseSeq *self, jint seq, IOSByteArray *state) {
  (void) ACResponse_init(self);
  
#line 29
  self->seq_ = seq;
  self->state_ = state;
}


#line 28
ARResponseSeq *new_ARResponseSeq_initWithInt_withByteArray_(jint seq, IOSByteArray *state) {
  ARResponseSeq *self = [ARResponseSeq alloc];
  ARResponseSeq_initWithInt_withByteArray_(self, seq, state);
  return self;
}


#line 33
void ARResponseSeq_init(ARResponseSeq *self) {
  (void) ACResponse_init(self);
}


#line 33
ARResponseSeq *new_ARResponseSeq_init() {
  ARResponseSeq *self = [ARResponseSeq alloc];
  ARResponseSeq_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseSeq)

#pragma clang diagnostic pop

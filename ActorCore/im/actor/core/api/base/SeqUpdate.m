//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/base/SeqUpdate.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/base/SeqUpdate.h"
#include "im/actor/core/network/parser/RpcScope.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/bser/Utils.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARSeqUpdate () {
 @public
  jint seq_;
  IOSByteArray *state_;
  jint updateHeader_;
  IOSByteArray *update_;
}

@end

J2OBJC_FIELD_SETTER(ARSeqUpdate, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ARSeqUpdate, update_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/base/SeqUpdate.java"


#line 18
@implementation ARSeqUpdate

+ (jint)HEADER {
  return ARSeqUpdate_HEADER;
}


#line 21
+ (ARSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARSeqUpdate_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update {
  ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_(self, seq, state, updateHeader, update);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 37
- (instancetype)init {
  ARSeqUpdate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 41
- (jint)getSeq {
  return self->seq_;
}


#line 46
- (IOSByteArray *)getState {
  return self->state_;
}

- (jint)getUpdateHeader {
  return self->updateHeader_;
}


#line 55
- (IOSByteArray *)getUpdate {
  return self->update_;
}


#line 60
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->seq_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
  self->updateHeader_ = [values getIntWithInt:3];
  self->update_ = [values getBytesWithInt:4];
}


#line 68
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
  [writer writeIntWithInt:3 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:4 withByteArray:self->update_];
}


#line 82
- (NSString *)description {
  NSString *res = @"update box SeqUpdate{";
  (void) JreStrAppendStrong(&res, "$I", @"seq=", self->seq_);
  (void) JreStrAppendStrong(&res, "$$", @", state=", ARUtils_byteArrayToStringCompactWithByteArray_(self->state_));
  (void) JreStrAppendStrong(&res, "$I", @", updateHeader=", self->updateHeader_);
  (void) JreStrAppendStrong(&res, "$$", @", update=", ARUtils_byteArrayToStringCompactWithByteArray_(self->update_));
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 93
- (jint)getHeaderKey {
  return ARSeqUpdate_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.base.SeqUpdate;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withByteArray:withInt:withByteArray:", "SeqUpdate", NULL, 0x1, NULL, NULL },
    { "init", "SeqUpdate", NULL, 0x1, NULL, NULL },
    { "getSeq", NULL, "I", 0x1, NULL, NULL },
    { "getState", NULL, "[B", 0x1, NULL, NULL },
    { "getUpdateHeader", NULL, "I", 0x1, NULL, NULL },
    { "getUpdate", NULL, "[B", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARSeqUpdate_HEADER },
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "updateHeader_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "update_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARSeqUpdate = { 2, "SeqUpdate", "im.actor.core.api.base", NULL, 0x1, 11, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARSeqUpdate;
}

@end


#line 21
ARSeqUpdate *ARSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data) {
  ARSeqUpdate_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARSeqUpdate_init(), data);
}


#line 30
void ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_(ARSeqUpdate *self, jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update) {
  (void) ACRpcScope_init(self);
  
#line 31
  self->seq_ = seq;
  self->state_ = state;
  self->updateHeader_ = updateHeader;
  self->update_ = update;
}


#line 30
ARSeqUpdate *new_ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_(jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update) {
  ARSeqUpdate *self = [ARSeqUpdate alloc];
  ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_(self, seq, state, updateHeader, update);
  return self;
}


#line 37
void ARSeqUpdate_init(ARSeqUpdate *self) {
  (void) ACRpcScope_init(self);
}


#line 37
ARSeqUpdate *new_ARSeqUpdate_init() {
  ARSeqUpdate *self = [ARSeqUpdate alloc];
  ARSeqUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARSeqUpdate)

#pragma clang diagnostic pop

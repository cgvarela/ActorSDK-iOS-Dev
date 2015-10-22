//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseEditAvatar.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiAvatar.h"
#include "im/actor/core/api/rpc/ResponseEditAvatar.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARResponseEditAvatar () {
 @public
  ARApiAvatar *avatar_;
  jint seq_;
  IOSByteArray *state_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseEditAvatar, avatar_, ARApiAvatar *)
J2OBJC_FIELD_SETTER(ARResponseEditAvatar, state_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseEditAvatar.java"


#line 18
@implementation ARResponseEditAvatar

+ (jint)HEADER {
  return ARResponseEditAvatar_HEADER;
}


#line 21
+ (ARResponseEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseEditAvatar_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithARApiAvatar:(ARApiAvatar *)avatar
                            withInt:(jint)seq
                      withByteArray:(IOSByteArray *)state {
  ARResponseEditAvatar_initWithARApiAvatar_withInt_withByteArray_(self, avatar, seq, state);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARResponseEditAvatar_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (ARApiAvatar *)getAvatar {
  return self->avatar_;
}

- (jint)getSeq {
  return self->seq_;
}


#line 49
- (IOSByteArray *)getState {
  return self->state_;
}


#line 54
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->avatar_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiAvatar_init()];
  self->seq_ = [values getIntWithInt:2];
  self->state_ = [values getBytesWithInt:3];
}


#line 61
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->avatar_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->avatar_];
  [writer writeIntWithInt:2 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:3 withByteArray:self->state_];
}


#line 74
- (NSString *)description {
  NSString *res = @"tuple EditAvatar{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 81
- (jint)getHeaderKey {
  return ARResponseEditAvatar_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseEditAvatar;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiAvatar:withInt:withByteArray:", "ResponseEditAvatar", NULL, 0x1, NULL, NULL },
    { "init", "ResponseEditAvatar", NULL, 0x1, NULL, NULL },
    { "getAvatar", NULL, "Lim.actor.core.api.ApiAvatar;", 0x1, NULL, NULL },
    { "getSeq", NULL, "I", 0x1, NULL, NULL },
    { "getState", NULL, "[B", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseEditAvatar_HEADER },
    { "avatar_", NULL, 0x2, "Lim.actor.core.api.ApiAvatar;", NULL, NULL, .constantValue.asLong = 0 },
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseEditAvatar = { 2, "ResponseEditAvatar", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseEditAvatar;
}

@end


#line 21
ARResponseEditAvatar *ARResponseEditAvatar_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseEditAvatar_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseEditAvatar_init(), data);
}


#line 29
void ARResponseEditAvatar_initWithARApiAvatar_withInt_withByteArray_(ARResponseEditAvatar *self, ARApiAvatar *avatar, jint seq, IOSByteArray *state) {
  (void) ACResponse_init(self);
  
#line 30
  self->avatar_ = avatar;
  self->seq_ = seq;
  self->state_ = state;
}


#line 29
ARResponseEditAvatar *new_ARResponseEditAvatar_initWithARApiAvatar_withInt_withByteArray_(ARApiAvatar *avatar, jint seq, IOSByteArray *state) {
  ARResponseEditAvatar *self = [ARResponseEditAvatar alloc];
  ARResponseEditAvatar_initWithARApiAvatar_withInt_withByteArray_(self, avatar, seq, state);
  return self;
}

void ARResponseEditAvatar_init(ARResponseEditAvatar *self) {
  (void) ACResponse_init(self);
}


#line 35
ARResponseEditAvatar *new_ARResponseEditAvatar_init() {
  ARResponseEditAvatar *self = [ARResponseEditAvatar alloc];
  ARResponseEditAvatar_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseEditAvatar)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateMessageRead.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiPeer.h"
#include "im/actor/core/api/updates/UpdateMessageRead.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateMessageRead () {
 @public
  ARApiPeer *peer_;
  jlong startDate_;
  jlong readDate_;
}

@end

J2OBJC_FIELD_SETTER(ARUpdateMessageRead, peer_, ARApiPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateMessageRead.java"


#line 18
@implementation ARUpdateMessageRead

+ (jint)HEADER {
  return ARUpdateMessageRead_HEADER;
}


#line 21
+ (ARUpdateMessageRead *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateMessageRead_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithARApiPeer:(ARApiPeer *)peer
                         withLong:(jlong)startDate
                         withLong:(jlong)readDate {
  ARUpdateMessageRead_initWithARApiPeer_withLong_withLong_(self, peer, startDate, readDate);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARUpdateMessageRead_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (ARApiPeer *)getPeer {
  return self->peer_;
}

- (jlong)getStartDate {
  return self->startDate_;
}

- (jlong)getReadDate {
  return self->readDate_;
}


#line 53
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiPeer_init()];
  self->startDate_ = [values getLongWithInt:2];
  self->readDate_ = [values getLongWithInt:3];
}


#line 60
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->startDate_];
  [writer writeLongWithInt:3 withLong:self->readDate_];
}


#line 70
- (NSString *)description {
  NSString *res = @"update MessageRead{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$J", @", startDate=", self->startDate_);
  (void) JreStrAppendStrong(&res, "$J", @", readDate=", self->readDate_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 80
- (jint)getHeaderKey {
  return ARUpdateMessageRead_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateMessageRead;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiPeer:withLong:withLong:", "UpdateMessageRead", NULL, 0x1, NULL, NULL },
    { "init", "UpdateMessageRead", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiPeer;", 0x1, NULL, NULL },
    { "getStartDate", NULL, "J", 0x1, NULL, NULL },
    { "getReadDate", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateMessageRead_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "startDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "readDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateMessageRead = { 2, "UpdateMessageRead", "im.actor.core.api.updates", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateMessageRead;
}

@end


#line 21
ARUpdateMessageRead *ARUpdateMessageRead_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateMessageRead_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateMessageRead_init(), data);
}


#line 29
void ARUpdateMessageRead_initWithARApiPeer_withLong_withLong_(ARUpdateMessageRead *self, ARApiPeer *peer, jlong startDate, jlong readDate) {
  (void) ACUpdate_init(self);
  
#line 30
  self->peer_ = peer;
  self->startDate_ = startDate;
  self->readDate_ = readDate;
}


#line 29
ARUpdateMessageRead *new_ARUpdateMessageRead_initWithARApiPeer_withLong_withLong_(ARApiPeer *peer, jlong startDate, jlong readDate) {
  ARUpdateMessageRead *self = [ARUpdateMessageRead alloc];
  ARUpdateMessageRead_initWithARApiPeer_withLong_withLong_(self, peer, startDate, readDate);
  return self;
}

void ARUpdateMessageRead_init(ARUpdateMessageRead *self) {
  (void) ACUpdate_init(self);
}


#line 35
ARUpdateMessageRead *new_ARUpdateMessageRead_init() {
  ARUpdateMessageRead *self = [ARUpdateMessageRead alloc];
  ARUpdateMessageRead_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateMessageRead)

#pragma clang diagnostic pop

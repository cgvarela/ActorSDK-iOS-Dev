//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDialog.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiDialog.h"
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/api/ApiMessageState.h"
#include "im/actor/core/api/ApiPeer.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiDialog () {
 @public
  ARApiPeer *peer_;
  jint unreadCount_;
  jlong sortDate_;
  jint senderUid_;
  jlong rid_;
  jlong date_;
  ARApiMessage *message_;
  ARApiMessageStateEnum *state_;
}

@end

J2OBJC_FIELD_SETTER(ARApiDialog, peer_, ARApiPeer *)
J2OBJC_FIELD_SETTER(ARApiDialog, message_, ARApiMessage *)
J2OBJC_FIELD_SETTER(ARApiDialog, state_, ARApiMessageStateEnum *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDialog.java"


#line 17
@implementation ARApiDialog


#line 28
- (instancetype)initWithARApiPeer:(ARApiPeer *)peer
                          withInt:(jint)unreadCount
                         withLong:(jlong)sortDate
                          withInt:(jint)senderUid
                         withLong:(jlong)rid
                         withLong:(jlong)date
                 withARApiMessage:(ARApiMessage *)message
        withARApiMessageStateEnum:(ARApiMessageStateEnum *)state {
  ARApiDialog_initWithARApiPeer_withInt_withLong_withInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(self, peer, unreadCount, sortDate, senderUid, rid, date, message, state);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 39
- (instancetype)init {
  ARApiDialog_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 44
- (ARApiPeer *)getPeer {
  return self->peer_;
}

- (jint)getUnreadCount {
  return self->unreadCount_;
}

- (jlong)getSortDate {
  return self->sortDate_;
}

- (jint)getSenderUid {
  return self->senderUid_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jlong)getDate {
  return self->date_;
}


#line 69
- (ARApiMessage *)getMessage {
  return self->message_;
}


#line 74
- (ARApiMessageStateEnum *)getState {
  return self->state_;
}


#line 79
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiPeer_init()];
  self->unreadCount_ = [values getIntWithInt:3];
  self->sortDate_ = [values getLongWithInt:4];
  self->senderUid_ = [values getIntWithInt:5];
  self->rid_ = [values getLongWithInt:6];
  self->date_ = [values getLongWithInt:7];
  self->message_ = ARApiMessage_fromBytesWithByteArray_([values getBytesWithInt:8]);
  jint val_state = [values getIntWithInt:9 withInt:0];
  if (val_state != 0) {
    self->state_ = ARApiMessageStateEnum_parseWithInt_(val_state);
  }
}


#line 94
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->peer_];
  [writer writeIntWithInt:3 withInt:self->unreadCount_];
  [writer writeLongWithInt:4 withLong:self->sortDate_];
  [writer writeIntWithInt:5 withInt:self->senderUid_];
  [writer writeLongWithInt:6 withLong:self->rid_];
  [writer writeLongWithInt:7 withLong:self->date_];
  if (self->message_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  
#line 108
  [writer writeBytesWithInt:8 withByteArray:[((ARApiMessage *) nil_chk(self->message_)) buildContainer]];
  if (self->state_ != nil) {
    [writer writeIntWithInt:9 withInt:[self->state_ getValue]];
  }
}

- (NSString *)description {
  NSString *res = @"struct Dialog{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$I", @", unreadCount=", self->unreadCount_);
  (void) JreStrAppendStrong(&res, "$J", @", sortDate=", self->sortDate_);
  (void) JreStrAppendStrong(&res, "$I", @", senderUid=", self->senderUid_);
  (void) JreStrAppendStrong(&res, "$J", @", rid=", self->rid_);
  (void) JreStrAppendStrong(&res, "$J", @", date=", self->date_);
  (void) JreStrAppendStrong(&res, "$@", @", message=", self->message_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARApiPeer:withInt:withLong:withInt:withLong:withLong:withARApiMessage:withARApiMessageStateEnum:", "ApiDialog", NULL, 0x1, NULL, NULL },
    { "init", "ApiDialog", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiPeer;", 0x1, NULL, NULL },
    { "getUnreadCount", NULL, "I", 0x1, NULL, NULL },
    { "getSortDate", NULL, "J", 0x1, NULL, NULL },
    { "getSenderUid", NULL, "I", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "getMessage", NULL, "Lim.actor.core.api.ApiMessage;", 0x1, NULL, NULL },
    { "getState", NULL, "Lim.actor.core.api.ApiMessageState;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "unreadCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "sortDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "senderUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "message_", NULL, 0x2, "Lim.actor.core.api.ApiMessage;", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "Lim.actor.core.api.ApiMessageState;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiDialog = { 2, "ApiDialog", "im.actor.core.api", NULL, 0x1, 13, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiDialog;
}

@end


#line 28
void ARApiDialog_initWithARApiPeer_withInt_withLong_withInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(ARApiDialog *self, ARApiPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, ARApiMessage *message, ARApiMessageStateEnum *state) {
  (void) ARBserObject_init(self);
  
#line 29
  self->peer_ = peer;
  self->unreadCount_ = unreadCount;
  self->sortDate_ = sortDate;
  self->senderUid_ = senderUid;
  self->rid_ = rid;
  self->date_ = date;
  self->message_ = message;
  self->state_ = state;
}


#line 28
ARApiDialog *new_ARApiDialog_initWithARApiPeer_withInt_withLong_withInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(ARApiPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, ARApiMessage *message, ARApiMessageStateEnum *state) {
  ARApiDialog *self = [ARApiDialog alloc];
  ARApiDialog_initWithARApiPeer_withInt_withLong_withInt_withLong_withLong_withARApiMessage_withARApiMessageStateEnum_(self, peer, unreadCount, sortDate, senderUid, rid, date, message, state);
  return self;
}


#line 39
void ARApiDialog_init(ARApiDialog *self) {
  (void) ARBserObject_init(self);
}


#line 39
ARApiDialog *new_ARApiDialog_init() {
  ARApiDialog *self = [ARApiDialog alloc];
  ARApiDialog_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiDialog)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupUserInvited.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/updates/UpdateGroupUserInvited.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateGroupUserInvited () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  jint inviterUid_;
  jlong date_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupUserInvited.java"


#line 18
@implementation ARUpdateGroupUserInvited

+ (jint)HEADER {
  return ARUpdateGroupUserInvited_HEADER;
}


#line 21
+ (ARUpdateGroupUserInvited *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateGroupUserInvited_fromBytesWithByteArray_(data);
}


#line 31
- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date {
  ARUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, inviterUid, date);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 39
- (instancetype)init {
  ARUpdateGroupUserInvited_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 43
- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (jint)getInviterUid {
  return self->inviterUid_;
}

- (jlong)getDate {
  return self->date_;
}


#line 64
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupId_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:5];
  self->uid_ = [values getIntWithInt:2];
  self->inviterUid_ = [values getIntWithInt:3];
  self->date_ = [values getLongWithInt:4];
}


#line 73
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:5 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  [writer writeIntWithInt:3 withInt:self->inviterUid_];
  [writer writeLongWithInt:4 withLong:self->date_];
}


#line 82
- (NSString *)description {
  NSString *res = @"update GroupUserInvited{";
  (void) JreStrAppendStrong(&res, "$I", @"groupId=", self->groupId_);
  (void) JreStrAppendStrong(&res, "$J", @", rid=", self->rid_);
  (void) JreStrAppendStrong(&res, "$I", @", uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$I", @", inviterUid=", self->inviterUid_);
  (void) JreStrAppendStrong(&res, "$J", @", date=", self->date_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 94
- (jint)getHeaderKey {
  return ARUpdateGroupUserInvited_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateGroupUserInvited;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withLong:withInt:withInt:withLong:", "UpdateGroupUserInvited", NULL, 0x1, NULL, NULL },
    { "init", "UpdateGroupUserInvited", NULL, 0x1, NULL, NULL },
    { "getGroupId", NULL, "I", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getInviterUid", NULL, "I", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateGroupUserInvited_HEADER },
    { "groupId_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inviterUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateGroupUserInvited = { 2, "UpdateGroupUserInvited", "im.actor.core.api.updates", NULL, 0x1, 12, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateGroupUserInvited;
}

@end


#line 21
ARUpdateGroupUserInvited *ARUpdateGroupUserInvited_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateGroupUserInvited_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateGroupUserInvited_init(), data);
}


#line 31
void ARUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(ARUpdateGroupUserInvited *self, jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) {
  (void) ACUpdate_init(self);
  
#line 32
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->uid_ = uid;
  self->inviterUid_ = inviterUid;
  self->date_ = date;
}


#line 31
ARUpdateGroupUserInvited *new_ARUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) {
  ARUpdateGroupUserInvited *self = [ARUpdateGroupUserInvited alloc];
  ARUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, inviterUid, date);
  return self;
}


#line 39
void ARUpdateGroupUserInvited_init(ARUpdateGroupUserInvited *self) {
  (void) ACUpdate_init(self);
}


#line 39
ARUpdateGroupUserInvited *new_ARUpdateGroupUserInvited_init() {
  ARUpdateGroupUserInvited *self = [ARUpdateGroupUserInvited alloc];
  ARUpdateGroupUserInvited_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateGroupUserInvited)

#pragma clang diagnostic pop

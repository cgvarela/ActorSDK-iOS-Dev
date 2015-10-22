//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupInvite.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/updates/UpdateGroupInvite.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateGroupInvite () {
 @public
  jint groupId_;
  jlong rid_;
  jint inviteUid_;
  jlong date_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupInvite.java"


#line 18
@implementation ARUpdateGroupInvite

+ (jint)HEADER {
  return ARUpdateGroupInvite_HEADER;
}


#line 21
+ (ARUpdateGroupInvite *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateGroupInvite_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)inviteUid
                   withLong:(jlong)date {
  ARUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(self, groupId, rid, inviteUid, date);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 37
- (instancetype)init {
  ARUpdateGroupInvite_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 41
- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getInviteUid {
  return self->inviteUid_;
}

- (jlong)getDate {
  return self->date_;
}


#line 58
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupId_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:9];
  self->inviteUid_ = [values getIntWithInt:5];
  self->date_ = [values getLongWithInt:8];
}


#line 66
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:9 withLong:self->rid_];
  [writer writeIntWithInt:5 withInt:self->inviteUid_];
  [writer writeLongWithInt:8 withLong:self->date_];
}


#line 74
- (NSString *)description {
  NSString *res = @"update GroupInvite{";
  (void) JreStrAppendStrong(&res, "$I", @"groupId=", self->groupId_);
  (void) JreStrAppendStrong(&res, "$J", @", rid=", self->rid_);
  (void) JreStrAppendStrong(&res, "$I", @", inviteUid=", self->inviteUid_);
  (void) JreStrAppendStrong(&res, "$J", @", date=", self->date_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 85
- (jint)getHeaderKey {
  return ARUpdateGroupInvite_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateGroupInvite;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withLong:withInt:withLong:", "UpdateGroupInvite", NULL, 0x1, NULL, NULL },
    { "init", "UpdateGroupInvite", NULL, 0x1, NULL, NULL },
    { "getGroupId", NULL, "I", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getInviteUid", NULL, "I", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateGroupInvite_HEADER },
    { "groupId_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "inviteUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateGroupInvite = { 2, "UpdateGroupInvite", "im.actor.core.api.updates", NULL, 0x1, 11, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateGroupInvite;
}

@end


#line 21
ARUpdateGroupInvite *ARUpdateGroupInvite_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateGroupInvite_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateGroupInvite_init(), data);
}


#line 30
void ARUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(ARUpdateGroupInvite *self, jint groupId, jlong rid, jint inviteUid, jlong date) {
  (void) ACUpdate_init(self);
  
#line 31
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->inviteUid_ = inviteUid;
  self->date_ = date;
}


#line 30
ARUpdateGroupInvite *new_ARUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(jint groupId, jlong rid, jint inviteUid, jlong date) {
  ARUpdateGroupInvite *self = [ARUpdateGroupInvite alloc];
  ARUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(self, groupId, rid, inviteUid, date);
  return self;
}


#line 37
void ARUpdateGroupInvite_init(ARUpdateGroupInvite *self) {
  (void) ACUpdate_init(self);
}


#line 37
ARUpdateGroupInvite *new_ARUpdateGroupInvite_init() {
  ARUpdateGroupInvite *self = [ARUpdateGroupInvite alloc];
  ARUpdateGroupInvite_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateGroupInvite)

#pragma clang diagnostic pop

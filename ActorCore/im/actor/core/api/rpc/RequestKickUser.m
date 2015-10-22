//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestKickUser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiGroupOutPeer.h"
#include "im/actor/core/api/ApiUserOutPeer.h"
#include "im/actor/core/api/rpc/RequestKickUser.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestKickUser () {
 @public
  ARApiGroupOutPeer *groupPeer_;
  jlong rid_;
  ARApiUserOutPeer *user_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestKickUser, groupPeer_, ARApiGroupOutPeer *)
J2OBJC_FIELD_SETTER(ARRequestKickUser, user_, ARApiUserOutPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestKickUser.java"


#line 18
@implementation ARRequestKickUser

+ (jint)HEADER {
  return ARRequestKickUser_HEADER;
}


#line 21
+ (ARRequestKickUser *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestKickUser_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                 withLong:(jlong)rid
                     withARApiUserOutPeer:(ARApiUserOutPeer *)user {
  ARRequestKickUser_initWithARApiGroupOutPeer_withLong_withARApiUserOutPeer_(self, groupPeer, rid, user);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARRequestKickUser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (ARApiGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}


#line 49
- (ARApiUserOutPeer *)getUser {
  return self->user_;
}


#line 54
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupPeer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:4];
  self->user_ = [values getObjWithInt:3 withARBserObject:new_ARApiUserOutPeer_init()];
}


#line 61
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->user_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeObjectWithInt:3 withARBserObject:self->user_];
}


#line 74
- (NSString *)description {
  NSString *res = @"rpc KickUser{";
  (void) JreStrAppendStrong(&res, "$@", @"groupPeer=", self->groupPeer_);
  (void) JreStrAppendStrong(&res, "$J", @", rid=", self->rid_);
  (void) JreStrAppendStrong(&res, "$@", @", user=", self->user_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 84
- (jint)getHeaderKey {
  return ARRequestKickUser_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestKickUser;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiGroupOutPeer:withLong:withARApiUserOutPeer:", "RequestKickUser", NULL, 0x1, NULL, NULL },
    { "init", "RequestKickUser", NULL, 0x1, NULL, NULL },
    { "getGroupPeer", NULL, "Lim.actor.core.api.ApiGroupOutPeer;", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getUser", NULL, "Lim.actor.core.api.ApiUserOutPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestKickUser_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.core.api.ApiGroupOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "user_", NULL, 0x2, "Lim.actor.core.api.ApiUserOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeqDate;"};
  static const J2ObjcClassInfo _ARRequestKickUser = { 2, "RequestKickUser", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeqDate;>;" };
  return &_ARRequestKickUser;
}

@end


#line 21
ARRequestKickUser *ARRequestKickUser_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestKickUser_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestKickUser_init(), data);
}


#line 29
void ARRequestKickUser_initWithARApiGroupOutPeer_withLong_withARApiUserOutPeer_(ARRequestKickUser *self, ARApiGroupOutPeer *groupPeer, jlong rid, ARApiUserOutPeer *user) {
  (void) ACRequest_init(self);
  
#line 30
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->user_ = user;
}


#line 29
ARRequestKickUser *new_ARRequestKickUser_initWithARApiGroupOutPeer_withLong_withARApiUserOutPeer_(ARApiGroupOutPeer *groupPeer, jlong rid, ARApiUserOutPeer *user) {
  ARRequestKickUser *self = [ARRequestKickUser alloc];
  ARRequestKickUser_initWithARApiGroupOutPeer_withLong_withARApiUserOutPeer_(self, groupPeer, rid, user);
  return self;
}

void ARRequestKickUser_init(ARRequestKickUser *self) {
  (void) ACRequest_init(self);
}


#line 35
ARRequestKickUser *new_ARRequestKickUser_init() {
  ARRequestKickUser *self = [ARRequestKickUser alloc];
  ARRequestKickUser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestKickUser)

#pragma clang diagnostic pop

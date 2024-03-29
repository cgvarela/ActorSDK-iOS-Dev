//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditGroupAbout.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiGroupOutPeer.h"
#include "im/actor/core/api/rpc/RequestEditGroupAbout.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditGroupAbout () {
 @public
  ARApiGroupOutPeer *groupPeer_;
  jlong rid_;
  NSString *about_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditGroupAbout, groupPeer_, ARApiGroupOutPeer *)
J2OBJC_FIELD_SETTER(ARRequestEditGroupAbout, about_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditGroupAbout.java"


#line 18
@implementation ARRequestEditGroupAbout

+ (jint)HEADER {
  return ARRequestEditGroupAbout_HEADER;
}


#line 21
+ (ARRequestEditGroupAbout *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditGroupAbout_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                 withLong:(jlong)rid
                             withNSString:(NSString *)about {
  ARRequestEditGroupAbout_initWithARApiGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, about);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARRequestEditGroupAbout_init(self);
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
- (NSString *)getAbout {
  return self->about_;
}


#line 54
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupPeer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:2];
  self->about_ = [values optStringWithInt:3];
}


#line 61
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->groupPeer_];
  [writer writeLongWithInt:2 withLong:self->rid_];
  if (self->about_ != nil) {
    [writer writeStringWithInt:3 withNSString:self->about_];
  }
}


#line 73
- (NSString *)description {
  NSString *res = @"rpc EditGroupAbout{";
  (void) JreStrAppendStrong(&res, "$@", @"groupPeer=", self->groupPeer_);
  (void) JreStrAppendStrong(&res, "$J", @", rid=", self->rid_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 82
- (jint)getHeaderKey {
  return ARRequestEditGroupAbout_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditGroupAbout;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiGroupOutPeer:withLong:withNSString:", "RequestEditGroupAbout", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditGroupAbout", NULL, 0x1, NULL, NULL },
    { "getGroupPeer", NULL, "Lim.actor.core.api.ApiGroupOutPeer;", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getAbout", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditGroupAbout_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.core.api.ApiGroupOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "about_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeqDate;"};
  static const J2ObjcClassInfo _ARRequestEditGroupAbout = { 2, "RequestEditGroupAbout", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeqDate;>;" };
  return &_ARRequestEditGroupAbout;
}

@end


#line 21
ARRequestEditGroupAbout *ARRequestEditGroupAbout_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditGroupAbout_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditGroupAbout_init(), data);
}


#line 29
void ARRequestEditGroupAbout_initWithARApiGroupOutPeer_withLong_withNSString_(ARRequestEditGroupAbout *self, ARApiGroupOutPeer *groupPeer, jlong rid, NSString *about) {
  (void) ACRequest_init(self);
  
#line 30
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->about_ = about;
}


#line 29
ARRequestEditGroupAbout *new_ARRequestEditGroupAbout_initWithARApiGroupOutPeer_withLong_withNSString_(ARApiGroupOutPeer *groupPeer, jlong rid, NSString *about) {
  ARRequestEditGroupAbout *self = [ARRequestEditGroupAbout alloc];
  ARRequestEditGroupAbout_initWithARApiGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, about);
  return self;
}

void ARRequestEditGroupAbout_init(ARRequestEditGroupAbout *self) {
  (void) ACRequest_init(self);
}


#line 35
ARRequestEditGroupAbout *new_ARRequestEditGroupAbout_init() {
  ARRequestEditGroupAbout *self = [ARRequestEditGroupAbout alloc];
  ARRequestEditGroupAbout_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditGroupAbout)

#pragma clang diagnostic pop

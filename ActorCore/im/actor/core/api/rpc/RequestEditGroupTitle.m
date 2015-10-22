//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditGroupTitle.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiGroupOutPeer.h"
#include "im/actor/core/api/rpc/RequestEditGroupTitle.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditGroupTitle () {
 @public
  ARApiGroupOutPeer *groupPeer_;
  jlong rid_;
  NSString *title_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditGroupTitle, groupPeer_, ARApiGroupOutPeer *)
J2OBJC_FIELD_SETTER(ARRequestEditGroupTitle, title_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditGroupTitle.java"


#line 18
@implementation ARRequestEditGroupTitle

+ (jint)HEADER {
  return ARRequestEditGroupTitle_HEADER;
}


#line 21
+ (ARRequestEditGroupTitle *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditGroupTitle_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                 withLong:(jlong)rid
                             withNSString:(NSString *)title {
  ARRequestEditGroupTitle_initWithARApiGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, title);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARRequestEditGroupTitle_init(self);
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
- (NSString *)getTitle {
  return self->title_;
}


#line 54
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupPeer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:4];
  self->title_ = [values getStringWithInt:3];
}


#line 61
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
}


#line 74
- (NSString *)description {
  NSString *res = @"rpc EditGroupTitle{";
  (void) JreStrAppendStrong(&res, "$@", @"groupPeer=", self->groupPeer_);
  (void) JreStrAppendStrong(&res, "$J", @", rid=", self->rid_);
  (void) JreStrAppendStrong(&res, "$$", @", title=", self->title_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 84
- (jint)getHeaderKey {
  return ARRequestEditGroupTitle_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditGroupTitle;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiGroupOutPeer:withLong:withNSString:", "RequestEditGroupTitle", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditGroupTitle", NULL, 0x1, NULL, NULL },
    { "getGroupPeer", NULL, "Lim.actor.core.api.ApiGroupOutPeer;", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditGroupTitle_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.core.api.ApiGroupOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeqDate;"};
  static const J2ObjcClassInfo _ARRequestEditGroupTitle = { 2, "RequestEditGroupTitle", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeqDate;>;" };
  return &_ARRequestEditGroupTitle;
}

@end


#line 21
ARRequestEditGroupTitle *ARRequestEditGroupTitle_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditGroupTitle_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditGroupTitle_init(), data);
}


#line 29
void ARRequestEditGroupTitle_initWithARApiGroupOutPeer_withLong_withNSString_(ARRequestEditGroupTitle *self, ARApiGroupOutPeer *groupPeer, jlong rid, NSString *title) {
  (void) ACRequest_init(self);
  
#line 30
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->title_ = title;
}


#line 29
ARRequestEditGroupTitle *new_ARRequestEditGroupTitle_initWithARApiGroupOutPeer_withLong_withNSString_(ARApiGroupOutPeer *groupPeer, jlong rid, NSString *title) {
  ARRequestEditGroupTitle *self = [ARRequestEditGroupTitle alloc];
  ARRequestEditGroupTitle_initWithARApiGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, title);
  return self;
}

void ARRequestEditGroupTitle_init(ARRequestEditGroupTitle *self) {
  (void) ACRequest_init(self);
}


#line 35
ARRequestEditGroupTitle *new_ARRequestEditGroupTitle_init() {
  ARRequestEditGroupTitle *self = [ARRequestEditGroupTitle alloc];
  ARRequestEditGroupTitle_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditGroupTitle)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestDeleteMessage.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/rpc/RequestDeleteMessage.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestDeleteMessage () {
 @public
  ARApiOutPeer *peer_;
  id<JavaUtilList> rids_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestDeleteMessage, peer_, ARApiOutPeer *)
J2OBJC_FIELD_SETTER(ARRequestDeleteMessage, rids_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestDeleteMessage.java"


#line 18
@implementation ARRequestDeleteMessage

+ (jint)HEADER {
  return ARRequestDeleteMessage_HEADER;
}


#line 21
+ (ARRequestDeleteMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestDeleteMessage_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer
                    withJavaUtilList:(id<JavaUtilList>)rids {
  ARRequestDeleteMessage_initWithARApiOutPeer_withJavaUtilList_(self, peer, rids);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARRequestDeleteMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 38
- (ARApiOutPeer *)getPeer {
  return self->peer_;
}


#line 43
- (id<JavaUtilList>)getRids {
  return self->rids_;
}


#line 48
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiOutPeer_init()];
  self->rids_ = [values getRepeatedLongWithInt:3];
}


#line 54
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->peer_];
  [writer writeRepeatedLongWithInt:3 withJavaUtilList:self->rids_];
}


#line 63
- (NSString *)description {
  NSString *res = @"rpc DeleteMessage{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$@", @", rids=", self->rids_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 72
- (jint)getHeaderKey {
  return ARRequestDeleteMessage_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestDeleteMessage;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiOutPeer:withJavaUtilList:", "RequestDeleteMessage", NULL, 0x1, NULL, NULL },
    { "init", "RequestDeleteMessage", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiOutPeer;", 0x1, NULL, NULL },
    { "getRids", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestDeleteMessage_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "rids_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Long;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestDeleteMessage = { 2, "RequestDeleteMessage", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestDeleteMessage;
}

@end


#line 21
ARRequestDeleteMessage *ARRequestDeleteMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestDeleteMessage_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestDeleteMessage_init(), data);
}

void ARRequestDeleteMessage_initWithARApiOutPeer_withJavaUtilList_(ARRequestDeleteMessage *self, ARApiOutPeer *peer, id<JavaUtilList> rids) {
  (void) ACRequest_init(self);
  
#line 29
  self->peer_ = peer;
  self->rids_ = rids;
}


#line 28
ARRequestDeleteMessage *new_ARRequestDeleteMessage_initWithARApiOutPeer_withJavaUtilList_(ARApiOutPeer *peer, id<JavaUtilList> rids) {
  ARRequestDeleteMessage *self = [ARRequestDeleteMessage alloc];
  ARRequestDeleteMessage_initWithARApiOutPeer_withJavaUtilList_(self, peer, rids);
  return self;
}


#line 33
void ARRequestDeleteMessage_init(ARRequestDeleteMessage *self) {
  (void) ACRequest_init(self);
}


#line 33
ARRequestDeleteMessage *new_ARRequestDeleteMessage_init() {
  ARRequestDeleteMessage *self = [ARRequestDeleteMessage alloc];
  ARRequestDeleteMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestDeleteMessage)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestDeleteChat.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/rpc/RequestDeleteChat.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestDeleteChat () {
 @public
  ARApiOutPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestDeleteChat, peer_, ARApiOutPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestDeleteChat.java"


#line 18
@implementation ARRequestDeleteChat

+ (jint)HEADER {
  return ARRequestDeleteChat_HEADER;
}


#line 21
+ (ARRequestDeleteChat *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestDeleteChat_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer {
  ARRequestDeleteChat_initWithARApiOutPeer_(self, peer);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestDeleteChat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (ARApiOutPeer *)getPeer {
  return self->peer_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiOutPeer_init()];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->peer_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc DeleteChat{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestDeleteChat_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestDeleteChat;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiOutPeer:", "RequestDeleteChat", NULL, 0x1, NULL, NULL },
    { "init", "RequestDeleteChat", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiOutPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestDeleteChat_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestDeleteChat = { 2, "RequestDeleteChat", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestDeleteChat;
}

@end


#line 21
ARRequestDeleteChat *ARRequestDeleteChat_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestDeleteChat_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestDeleteChat_init(), data);
}


#line 27
void ARRequestDeleteChat_initWithARApiOutPeer_(ARRequestDeleteChat *self, ARApiOutPeer *peer) {
  (void) ACRequest_init(self);
  
#line 28
  self->peer_ = peer;
}


#line 27
ARRequestDeleteChat *new_ARRequestDeleteChat_initWithARApiOutPeer_(ARApiOutPeer *peer) {
  ARRequestDeleteChat *self = [ARRequestDeleteChat alloc];
  ARRequestDeleteChat_initWithARApiOutPeer_(self, peer);
  return self;
}


#line 31
void ARRequestDeleteChat_init(ARRequestDeleteChat *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestDeleteChat *new_ARRequestDeleteChat_init() {
  ARRequestDeleteChat *self = [ARRequestDeleteChat alloc];
  ARRequestDeleteChat_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestDeleteChat)

#pragma clang diagnostic pop

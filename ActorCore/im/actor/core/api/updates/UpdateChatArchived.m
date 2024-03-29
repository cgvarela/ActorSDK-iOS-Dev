//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateChatArchived.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiPeer.h"
#include "im/actor/core/api/updates/UpdateChatArchived.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateChatArchived () {
 @public
  ARApiPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ARUpdateChatArchived, peer_, ARApiPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateChatArchived.java"


#line 18
@implementation ARUpdateChatArchived

+ (jint)HEADER {
  return ARUpdateChatArchived_HEADER;
}


#line 21
+ (ARUpdateChatArchived *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateChatArchived_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiPeer:(ARApiPeer *)peer {
  ARUpdateChatArchived_initWithARApiPeer_(self, peer);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARUpdateChatArchived_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (ARApiPeer *)getPeer {
  return self->peer_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiPeer_init()];
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
  NSString *res = @"update ChatArchived{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARUpdateChatArchived_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateChatArchived;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiPeer:", "UpdateChatArchived", NULL, 0x1, NULL, NULL },
    { "init", "UpdateChatArchived", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateChatArchived_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateChatArchived = { 2, "UpdateChatArchived", "im.actor.core.api.updates", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateChatArchived;
}

@end


#line 21
ARUpdateChatArchived *ARUpdateChatArchived_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateChatArchived_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateChatArchived_init(), data);
}


#line 27
void ARUpdateChatArchived_initWithARApiPeer_(ARUpdateChatArchived *self, ARApiPeer *peer) {
  (void) ACUpdate_init(self);
  
#line 28
  self->peer_ = peer;
}


#line 27
ARUpdateChatArchived *new_ARUpdateChatArchived_initWithARApiPeer_(ARApiPeer *peer) {
  ARUpdateChatArchived *self = [ARUpdateChatArchived alloc];
  ARUpdateChatArchived_initWithARApiPeer_(self, peer);
  return self;
}


#line 31
void ARUpdateChatArchived_init(ARUpdateChatArchived *self) {
  (void) ACUpdate_init(self);
}


#line 31
ARUpdateChatArchived *new_ARUpdateChatArchived_init() {
  ARUpdateChatArchived *self = [ARUpdateChatArchived alloc];
  ARUpdateChatArchived_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateChatArchived)

#pragma clang diagnostic pop

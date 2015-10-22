//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEnterGroup.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiGroupOutPeer.h"
#include "im/actor/core/api/rpc/RequestEnterGroup.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEnterGroup () {
 @public
  ARApiGroupOutPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEnterGroup, peer_, ARApiGroupOutPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEnterGroup.java"


#line 18
@implementation ARRequestEnterGroup

+ (jint)HEADER {
  return ARRequestEnterGroup_HEADER;
}


#line 21
+ (ARRequestEnterGroup *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEnterGroup_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)peer {
  ARRequestEnterGroup_initWithARApiGroupOutPeer_(self, peer);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestEnterGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (ARApiGroupOutPeer *)getPeer {
  return self->peer_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiGroupOutPeer_init()];
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
  NSString *res = @"rpc EnterGroup{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 61
- (jint)getHeaderKey {
  return ARRequestEnterGroup_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEnterGroup;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiGroupOutPeer:", "RequestEnterGroup", NULL, 0x1, NULL, NULL },
    { "init", "RequestEnterGroup", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiGroupOutPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEnterGroup_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiGroupOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseEnterGroup;"};
  static const J2ObjcClassInfo _ARRequestEnterGroup = { 2, "RequestEnterGroup", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseEnterGroup;>;" };
  return &_ARRequestEnterGroup;
}

@end


#line 21
ARRequestEnterGroup *ARRequestEnterGroup_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEnterGroup_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEnterGroup_init(), data);
}


#line 27
void ARRequestEnterGroup_initWithARApiGroupOutPeer_(ARRequestEnterGroup *self, ARApiGroupOutPeer *peer) {
  (void) ACRequest_init(self);
  
#line 28
  self->peer_ = peer;
}


#line 27
ARRequestEnterGroup *new_ARRequestEnterGroup_initWithARApiGroupOutPeer_(ARApiGroupOutPeer *peer) {
  ARRequestEnterGroup *self = [ARRequestEnterGroup alloc];
  ARRequestEnterGroup_initWithARApiGroupOutPeer_(self, peer);
  return self;
}


#line 31
void ARRequestEnterGroup_init(ARRequestEnterGroup *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestEnterGroup *new_ARRequestEnterGroup_init() {
  ARRequestEnterGroup *self = [ARRequestEnterGroup alloc];
  ARRequestEnterGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEnterGroup)

#pragma clang diagnostic pop
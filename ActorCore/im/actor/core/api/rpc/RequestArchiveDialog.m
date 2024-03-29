//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestArchiveDialog.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/rpc/RequestArchiveDialog.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestArchiveDialog () {
 @public
  ARApiOutPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestArchiveDialog, peer_, ARApiOutPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestArchiveDialog.java"


#line 18
@implementation ARRequestArchiveDialog

+ (jint)HEADER {
  return ARRequestArchiveDialog_HEADER;
}


#line 21
+ (ARRequestArchiveDialog *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestArchiveDialog_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer {
  ARRequestArchiveDialog_initWithARApiOutPeer_(self, peer);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestArchiveDialog_init(self);
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
  NSString *res = @"rpc ArchiveDialog{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestArchiveDialog_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestArchiveDialog;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiOutPeer:", "RequestArchiveDialog", NULL, 0x1, NULL, NULL },
    { "init", "RequestArchiveDialog", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiOutPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestArchiveDialog_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestArchiveDialog = { 2, "RequestArchiveDialog", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestArchiveDialog;
}

@end


#line 21
ARRequestArchiveDialog *ARRequestArchiveDialog_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestArchiveDialog_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestArchiveDialog_init(), data);
}


#line 27
void ARRequestArchiveDialog_initWithARApiOutPeer_(ARRequestArchiveDialog *self, ARApiOutPeer *peer) {
  (void) ACRequest_init(self);
  
#line 28
  self->peer_ = peer;
}


#line 27
ARRequestArchiveDialog *new_ARRequestArchiveDialog_initWithARApiOutPeer_(ARApiOutPeer *peer) {
  ARRequestArchiveDialog *self = [ARRequestArchiveDialog alloc];
  ARRequestArchiveDialog_initWithARApiOutPeer_(self, peer);
  return self;
}


#line 31
void ARRequestArchiveDialog_init(ARRequestArchiveDialog *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestArchiveDialog *new_ARRequestArchiveDialog_init() {
  ARRequestArchiveDialog *self = [ARRequestArchiveDialog alloc];
  ARRequestArchiveDialog_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestArchiveDialog)

#pragma clang diagnostic pop

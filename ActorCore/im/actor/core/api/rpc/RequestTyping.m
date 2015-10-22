//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestTyping.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/ApiTypingType.h"
#include "im/actor/core/api/rpc/RequestTyping.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestTyping () {
 @public
  ARApiOutPeer *peer_;
  ARApiTypingTypeEnum *typingType_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestTyping, peer_, ARApiOutPeer *)
J2OBJC_FIELD_SETTER(ARRequestTyping, typingType_, ARApiTypingTypeEnum *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestTyping.java"


#line 18
@implementation ARRequestTyping

+ (jint)HEADER {
  return ARRequestTyping_HEADER;
}


#line 21
+ (ARRequestTyping *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestTyping_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer
             withARApiTypingTypeEnum:(ARApiTypingTypeEnum *)typingType {
  ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(self, peer, typingType);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARRequestTyping_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 38
- (ARApiOutPeer *)getPeer {
  return self->peer_;
}


#line 43
- (ARApiTypingTypeEnum *)getTypingType {
  return self->typingType_;
}


#line 48
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->peer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiOutPeer_init()];
  self->typingType_ = ARApiTypingTypeEnum_parseWithInt_([values getIntWithInt:3]);
}


#line 54
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->peer_];
  if (self->typingType_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeIntWithInt:3 withInt:[((ARApiTypingTypeEnum *) nil_chk(self->typingType_)) getValue]];
}


#line 66
- (NSString *)description {
  NSString *res = @"rpc Typing{";
  (void) JreStrAppendStrong(&res, "$@", @"peer=", self->peer_);
  (void) JreStrAppendStrong(&res, "$@", @", typingType=", self->typingType_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 75
- (jint)getHeaderKey {
  return ARRequestTyping_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestTyping;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiOutPeer:withARApiTypingTypeEnum:", "RequestTyping", NULL, 0x1, NULL, NULL },
    { "init", "RequestTyping", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.api.ApiOutPeer;", 0x1, NULL, NULL },
    { "getTypingType", NULL, "Lim.actor.core.api.ApiTypingType;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestTyping_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.core.api.ApiOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "typingType_", NULL, 0x2, "Lim.actor.core.api.ApiTypingType;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ARRequestTyping = { 2, "RequestTyping", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseVoid;>;" };
  return &_ARRequestTyping;
}

@end


#line 21
ARRequestTyping *ARRequestTyping_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestTyping_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestTyping_init(), data);
}

void ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(ARRequestTyping *self, ARApiOutPeer *peer, ARApiTypingTypeEnum *typingType) {
  (void) ACRequest_init(self);
  
#line 29
  self->peer_ = peer;
  self->typingType_ = typingType;
}


#line 28
ARRequestTyping *new_ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(ARApiOutPeer *peer, ARApiTypingTypeEnum *typingType) {
  ARRequestTyping *self = [ARRequestTyping alloc];
  ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(self, peer, typingType);
  return self;
}


#line 33
void ARRequestTyping_init(ARRequestTyping *self) {
  (void) ACRequest_init(self);
}


#line 33
ARRequestTyping *new_ARRequestTyping_init() {
  ARRequestTyping *self = [ARRequestTyping alloc];
  ARRequestTyping_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestTyping)

#pragma clang diagnostic pop

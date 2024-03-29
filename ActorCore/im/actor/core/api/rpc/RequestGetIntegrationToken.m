//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetIntegrationToken.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/rpc/RequestGetIntegrationToken.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestGetIntegrationToken () {
 @public
  ARApiOutPeer *groupPeer_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestGetIntegrationToken, groupPeer_, ARApiOutPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetIntegrationToken.java"


#line 18
@implementation ARRequestGetIntegrationToken

+ (jint)HEADER {
  return ARRequestGetIntegrationToken_HEADER;
}


#line 21
+ (ARRequestGetIntegrationToken *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestGetIntegrationToken_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)groupPeer {
  ARRequestGetIntegrationToken_initWithARApiOutPeer_(self, groupPeer);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestGetIntegrationToken_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (ARApiOutPeer *)getGroupPeer {
  return self->groupPeer_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupPeer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiOutPeer_init()];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->groupPeer_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc GetIntegrationToken{";
  (void) JreStrAppendStrong(&res, "$@", @"groupPeer=", self->groupPeer_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestGetIntegrationToken_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestGetIntegrationToken;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiOutPeer:", "RequestGetIntegrationToken", NULL, 0x1, NULL, NULL },
    { "init", "RequestGetIntegrationToken", NULL, 0x1, NULL, NULL },
    { "getGroupPeer", NULL, "Lim.actor.core.api.ApiOutPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestGetIntegrationToken_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.core.api.ApiOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseIntegrationToken;"};
  static const J2ObjcClassInfo _ARRequestGetIntegrationToken = { 2, "RequestGetIntegrationToken", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseIntegrationToken;>;" };
  return &_ARRequestGetIntegrationToken;
}

@end


#line 21
ARRequestGetIntegrationToken *ARRequestGetIntegrationToken_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestGetIntegrationToken_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestGetIntegrationToken_init(), data);
}


#line 27
void ARRequestGetIntegrationToken_initWithARApiOutPeer_(ARRequestGetIntegrationToken *self, ARApiOutPeer *groupPeer) {
  (void) ACRequest_init(self);
  
#line 28
  self->groupPeer_ = groupPeer;
}


#line 27
ARRequestGetIntegrationToken *new_ARRequestGetIntegrationToken_initWithARApiOutPeer_(ARApiOutPeer *groupPeer) {
  ARRequestGetIntegrationToken *self = [ARRequestGetIntegrationToken alloc];
  ARRequestGetIntegrationToken_initWithARApiOutPeer_(self, groupPeer);
  return self;
}


#line 31
void ARRequestGetIntegrationToken_init(ARRequestGetIntegrationToken *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestGetIntegrationToken *new_ARRequestGetIntegrationToken_init() {
  ARRequestGetIntegrationToken *self = [ARRequestGetIntegrationToken alloc];
  ARRequestGetIntegrationToken_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestGetIntegrationToken)

#pragma clang diagnostic pop

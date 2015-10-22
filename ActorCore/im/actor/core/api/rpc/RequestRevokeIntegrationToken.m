//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestRevokeIntegrationToken.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiOutPeer.h"
#include "im/actor/core/api/rpc/RequestRevokeIntegrationToken.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestRevokeIntegrationToken () {
 @public
  ARApiOutPeer *groupPeer_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestRevokeIntegrationToken, groupPeer_, ARApiOutPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestRevokeIntegrationToken.java"


#line 18
@implementation ARRequestRevokeIntegrationToken

+ (jint)HEADER {
  return ARRequestRevokeIntegrationToken_HEADER;
}


#line 21
+ (ARRequestRevokeIntegrationToken *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestRevokeIntegrationToken_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)groupPeer {
  ARRequestRevokeIntegrationToken_initWithARApiOutPeer_(self, groupPeer);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestRevokeIntegrationToken_init(self);
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
  NSString *res = @"rpc RevokeIntegrationToken{";
  (void) JreStrAppendStrong(&res, "$@", @"groupPeer=", self->groupPeer_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestRevokeIntegrationToken_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestRevokeIntegrationToken;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiOutPeer:", "RequestRevokeIntegrationToken", NULL, 0x1, NULL, NULL },
    { "init", "RequestRevokeIntegrationToken", NULL, 0x1, NULL, NULL },
    { "getGroupPeer", NULL, "Lim.actor.core.api.ApiOutPeer;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestRevokeIntegrationToken_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.core.api.ApiOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseIntegrationToken;"};
  static const J2ObjcClassInfo _ARRequestRevokeIntegrationToken = { 2, "RequestRevokeIntegrationToken", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseIntegrationToken;>;" };
  return &_ARRequestRevokeIntegrationToken;
}

@end


#line 21
ARRequestRevokeIntegrationToken *ARRequestRevokeIntegrationToken_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestRevokeIntegrationToken_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestRevokeIntegrationToken_init(), data);
}


#line 27
void ARRequestRevokeIntegrationToken_initWithARApiOutPeer_(ARRequestRevokeIntegrationToken *self, ARApiOutPeer *groupPeer) {
  (void) ACRequest_init(self);
  
#line 28
  self->groupPeer_ = groupPeer;
}


#line 27
ARRequestRevokeIntegrationToken *new_ARRequestRevokeIntegrationToken_initWithARApiOutPeer_(ARApiOutPeer *groupPeer) {
  ARRequestRevokeIntegrationToken *self = [ARRequestRevokeIntegrationToken alloc];
  ARRequestRevokeIntegrationToken_initWithARApiOutPeer_(self, groupPeer);
  return self;
}


#line 31
void ARRequestRevokeIntegrationToken_init(ARRequestRevokeIntegrationToken *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestRevokeIntegrationToken *new_ARRequestRevokeIntegrationToken_init() {
  ARRequestRevokeIntegrationToken *self = [ARRequestRevokeIntegrationToken alloc];
  ARRequestRevokeIntegrationToken_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestRevokeIntegrationToken)

#pragma clang diagnostic pop

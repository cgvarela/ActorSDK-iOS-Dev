//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestInitWebaction.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiMapValue.h"
#include "im/actor/core/api/rpc/RequestInitWebaction.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestInitWebaction () {
 @public
  NSString *actionName_;
  ARApiMapValue *params_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestInitWebaction, actionName_, NSString *)
J2OBJC_FIELD_SETTER(ARRequestInitWebaction, params_, ARApiMapValue *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestInitWebaction.java"


#line 18
@implementation ARRequestInitWebaction

+ (jint)HEADER {
  return ARRequestInitWebaction_HEADER;
}


#line 21
+ (ARRequestInitWebaction *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestInitWebaction_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithNSString:(NSString *)actionName
               withARApiMapValue:(ARApiMapValue *)params {
  ARRequestInitWebaction_initWithNSString_withARApiMapValue_(self, actionName, params);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARRequestInitWebaction_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 38
- (NSString *)getActionName {
  return self->actionName_;
}


#line 43
- (ARApiMapValue *)getParams {
  return self->params_;
}


#line 48
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->actionName_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  self->params_ = [values getObjWithInt:2 withARBserObject:new_ARApiMapValue_init()];
}


#line 54
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->actionName_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->actionName_];
  if (self->params_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeObjectWithInt:2 withARBserObject:self->params_];
}


#line 66
- (NSString *)description {
  NSString *res = @"rpc InitWebaction{";
  (void) JreStrAppendStrong(&res, "$$", @"actionName=", self->actionName_);
  (void) JreStrAppendStrong(&res, "$@", @", params=", self->params_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 75
- (jint)getHeaderKey {
  return ARRequestInitWebaction_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestInitWebaction;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:withARApiMapValue:", "RequestInitWebaction", NULL, 0x1, NULL, NULL },
    { "init", "RequestInitWebaction", NULL, 0x1, NULL, NULL },
    { "getActionName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getParams", NULL, "Lim.actor.core.api.ApiMapValue;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestInitWebaction_HEADER },
    { "actionName_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "params_", NULL, 0x2, "Lim.actor.core.api.ApiMapValue;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseInitWebaction;"};
  static const J2ObjcClassInfo _ARRequestInitWebaction = { 2, "RequestInitWebaction", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseInitWebaction;>;" };
  return &_ARRequestInitWebaction;
}

@end


#line 21
ARRequestInitWebaction *ARRequestInitWebaction_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestInitWebaction_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestInitWebaction_init(), data);
}

void ARRequestInitWebaction_initWithNSString_withARApiMapValue_(ARRequestInitWebaction *self, NSString *actionName, ARApiMapValue *params) {
  (void) ACRequest_init(self);
  
#line 29
  self->actionName_ = actionName;
  self->params_ = params;
}


#line 28
ARRequestInitWebaction *new_ARRequestInitWebaction_initWithNSString_withARApiMapValue_(NSString *actionName, ARApiMapValue *params) {
  ARRequestInitWebaction *self = [ARRequestInitWebaction alloc];
  ARRequestInitWebaction_initWithNSString_withARApiMapValue_(self, actionName, params);
  return self;
}


#line 33
void ARRequestInitWebaction_init(ARRequestInitWebaction *self) {
  (void) ACRequest_init(self);
}


#line 33
ARRequestInitWebaction *new_ARRequestInitWebaction_init() {
  ARRequestInitWebaction *self = [ARRequestInitWebaction alloc];
  ARRequestInitWebaction_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestInitWebaction)

#pragma clang diagnostic pop

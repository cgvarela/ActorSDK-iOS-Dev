//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSearchContacts.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/rpc/RequestSearchContacts.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestSearchContacts () {
 @public
  NSString *request_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestSearchContacts, request_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSearchContacts.java"


#line 18
@implementation ARRequestSearchContacts

+ (jint)HEADER {
  return ARRequestSearchContacts_HEADER;
}


#line 21
+ (ARRequestSearchContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestSearchContacts_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithNSString:(NSString *)request {
  ARRequestSearchContacts_initWithNSString_(self, request);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestSearchContacts_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (NSString *)getRequest {
  return self->request_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->request_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->request_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->request_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc SearchContacts{";
  (void) JreStrAppendStrong(&res, "$$", @"request=", self->request_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestSearchContacts_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestSearchContacts;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:", "RequestSearchContacts", NULL, 0x1, NULL, NULL },
    { "init", "RequestSearchContacts", NULL, 0x1, NULL, NULL },
    { "getRequest", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestSearchContacts_HEADER },
    { "request_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSearchContacts;"};
  static const J2ObjcClassInfo _ARRequestSearchContacts = { 2, "RequestSearchContacts", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSearchContacts;>;" };
  return &_ARRequestSearchContacts;
}

@end


#line 21
ARRequestSearchContacts *ARRequestSearchContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestSearchContacts_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestSearchContacts_init(), data);
}


#line 27
void ARRequestSearchContacts_initWithNSString_(ARRequestSearchContacts *self, NSString *request) {
  (void) ACRequest_init(self);
  
#line 28
  self->request_ = request;
}


#line 27
ARRequestSearchContacts *new_ARRequestSearchContacts_initWithNSString_(NSString *request) {
  ARRequestSearchContacts *self = [ARRequestSearchContacts alloc];
  ARRequestSearchContacts_initWithNSString_(self, request);
  return self;
}


#line 31
void ARRequestSearchContacts_init(ARRequestSearchContacts *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestSearchContacts *new_ARRequestSearchContacts_init() {
  ARRequestSearchContacts *self = [ARRequestSearchContacts alloc];
  ARRequestSearchContacts_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestSearchContacts)

#pragma clang diagnostic pop

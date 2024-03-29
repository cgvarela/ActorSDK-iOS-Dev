//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetContacts.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestGetContacts.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestGetContacts () {
 @public
  NSString *contactsHash_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestGetContacts, contactsHash_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetContacts.java"


#line 18
@implementation ARRequestGetContacts

+ (jint)HEADER {
  return ARRequestGetContacts_HEADER;
}


#line 21
+ (ARRequestGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestGetContacts_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithNSString:(NSString *)contactsHash {
  ARRequestGetContacts_initWithNSString_(self, contactsHash);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestGetContacts_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (NSString *)getContactsHash {
  return self->contactsHash_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->contactsHash_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->contactsHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->contactsHash_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc GetContacts{";
  (void) JreStrAppendStrong(&res, "$$", @"contactsHash=", self->contactsHash_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestGetContacts_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestGetContacts;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:", "RequestGetContacts", NULL, 0x1, NULL, NULL },
    { "init", "RequestGetContacts", NULL, 0x1, NULL, NULL },
    { "getContactsHash", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestGetContacts_HEADER },
    { "contactsHash_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseGetContacts;"};
  static const J2ObjcClassInfo _ARRequestGetContacts = { 2, "RequestGetContacts", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseGetContacts;>;" };
  return &_ARRequestGetContacts;
}

@end


#line 21
ARRequestGetContacts *ARRequestGetContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestGetContacts_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestGetContacts_init(), data);
}


#line 27
void ARRequestGetContacts_initWithNSString_(ARRequestGetContacts *self, NSString *contactsHash) {
  (void) ACRequest_init(self);
  
#line 28
  self->contactsHash_ = contactsHash;
}


#line 27
ARRequestGetContacts *new_ARRequestGetContacts_initWithNSString_(NSString *contactsHash) {
  ARRequestGetContacts *self = [ARRequestGetContacts alloc];
  ARRequestGetContacts_initWithNSString_(self, contactsHash);
  return self;
}


#line 31
void ARRequestGetContacts_init(ARRequestGetContacts *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestGetContacts *new_ARRequestGetContacts_init() {
  ARRequestGetContacts *self = [ARRequestGetContacts alloc];
  ARRequestGetContacts_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestGetContacts)

#pragma clang diagnostic pop

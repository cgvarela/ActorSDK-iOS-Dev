//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestAddContact.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/rpc/RequestAddContact.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestAddContact () {
 @public
  jint uid_;
  jlong accessHash_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestAddContact.java"


#line 18
@implementation ARRequestAddContact

+ (jint)HEADER {
  return ARRequestAddContact_HEADER;
}


#line 21
+ (ARRequestAddContact *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestAddContact_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash {
  ARRequestAddContact_initWithInt_withLong_(self, uid, accessHash);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARRequestAddContact_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 37
- (jint)getUid {
  return self->uid_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}


#line 46
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}


#line 52
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}


#line 58
- (NSString *)description {
  NSString *res = @"rpc AddContact{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 66
- (jint)getHeaderKey {
  return ARRequestAddContact_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestAddContact;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withLong:", "RequestAddContact", NULL, 0x1, NULL, NULL },
    { "init", "RequestAddContact", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestAddContact_HEADER },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "accessHash_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestAddContact = { 2, "RequestAddContact", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestAddContact;
}

@end


#line 21
ARRequestAddContact *ARRequestAddContact_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestAddContact_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestAddContact_init(), data);
}

void ARRequestAddContact_initWithInt_withLong_(ARRequestAddContact *self, jint uid, jlong accessHash) {
  (void) ACRequest_init(self);
  
#line 29
  self->uid_ = uid;
  self->accessHash_ = accessHash;
}


#line 28
ARRequestAddContact *new_ARRequestAddContact_initWithInt_withLong_(jint uid, jlong accessHash) {
  ARRequestAddContact *self = [ARRequestAddContact alloc];
  ARRequestAddContact_initWithInt_withLong_(self, uid, accessHash);
  return self;
}


#line 33
void ARRequestAddContact_init(ARRequestAddContact *self) {
  (void) ACRequest_init(self);
}


#line 33
ARRequestAddContact *new_ARRequestAddContact_init() {
  ARRequestAddContact *self = [ARRequestAddContact alloc];
  ARRequestAddContact_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestAddContact)

#pragma clang diagnostic pop
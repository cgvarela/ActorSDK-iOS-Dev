//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditUserLocalName.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestEditUserLocalName.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditUserLocalName () {
 @public
  jint uid_;
  jlong accessHash_;
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditUserLocalName, name_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditUserLocalName.java"


#line 18
@implementation ARRequestEditUserLocalName

+ (jint)HEADER {
  return ARRequestEditUserLocalName_HEADER;
}


#line 21
+ (ARRequestEditUserLocalName *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditUserLocalName_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name {
  ARRequestEditUserLocalName_initWithInt_withLong_withNSString_(self, uid, accessHash, name);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARRequestEditUserLocalName_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 39
- (jint)getUid {
  return self->uid_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}


#line 48
- (NSString *)getName {
  return self->name_;
}


#line 53
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->name_ = [values getStringWithInt:3];
}


#line 60
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->name_];
}


#line 70
- (NSString *)description {
  NSString *res = @"rpc EditUserLocalName{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$$", @", name=", self->name_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 79
- (jint)getHeaderKey {
  return ARRequestEditUserLocalName_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditUserLocalName;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withLong:withNSString:", "RequestEditUserLocalName", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditUserLocalName", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditUserLocalName_HEADER },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "accessHash_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestEditUserLocalName = { 2, "RequestEditUserLocalName", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestEditUserLocalName;
}

@end


#line 21
ARRequestEditUserLocalName *ARRequestEditUserLocalName_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditUserLocalName_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditUserLocalName_init(), data);
}


#line 29
void ARRequestEditUserLocalName_initWithInt_withLong_withNSString_(ARRequestEditUserLocalName *self, jint uid, jlong accessHash, NSString *name) {
  (void) ACRequest_init(self);
  
#line 30
  self->uid_ = uid;
  self->accessHash_ = accessHash;
  self->name_ = name;
}


#line 29
ARRequestEditUserLocalName *new_ARRequestEditUserLocalName_initWithInt_withLong_withNSString_(jint uid, jlong accessHash, NSString *name) {
  ARRequestEditUserLocalName *self = [ARRequestEditUserLocalName alloc];
  ARRequestEditUserLocalName_initWithInt_withLong_withNSString_(self, uid, accessHash, name);
  return self;
}

void ARRequestEditUserLocalName_init(ARRequestEditUserLocalName *self) {
  (void) ACRequest_init(self);
}


#line 35
ARRequestEditUserLocalName *new_ARRequestEditUserLocalName_init() {
  ARRequestEditUserLocalName *self = [ARRequestEditUserLocalName alloc];
  ARRequestEditUserLocalName_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditUserLocalName)

#pragma clang diagnostic pop

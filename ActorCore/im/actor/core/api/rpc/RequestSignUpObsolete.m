//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSignUpObsolete.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestSignUpObsolete.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/bser/Utils.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestSignUpObsolete () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  NSString *smsCode_;
  NSString *name_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
  jint appId_;
  NSString *appKey_;
  jboolean isSilent_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestSignUpObsolete, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ARRequestSignUpObsolete, smsCode_, NSString *)
J2OBJC_FIELD_SETTER(ARRequestSignUpObsolete, name_, NSString *)
J2OBJC_FIELD_SETTER(ARRequestSignUpObsolete, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ARRequestSignUpObsolete, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ARRequestSignUpObsolete, appKey_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSignUpObsolete.java"


#line 18
@implementation ARRequestSignUpObsolete

+ (jint)HEADER {
  return ARRequestSignUpObsolete_HEADER;
}


#line 21
+ (ARRequestSignUpObsolete *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestSignUpObsolete_fromBytesWithByteArray_(data);
}


#line 35
- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
                withNSString:(NSString *)name
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey
                 withBoolean:(jboolean)isSilent {
  ARRequestSignUpObsolete_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(self, phoneNumber, smsHash, smsCode, name, deviceHash, deviceTitle, appId, appKey, isSilent);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 47
- (instancetype)init {
  ARRequestSignUpObsolete_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 51
- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}


#line 56
- (NSString *)getSmsHash {
  return self->smsHash_;
}


#line 61
- (NSString *)getSmsCode {
  return self->smsCode_;
}


#line 66
- (NSString *)getName {
  return self->name_;
}


#line 71
- (IOSByteArray *)getDeviceHash {
  return self->deviceHash_;
}


#line 76
- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (jint)getAppId {
  return self->appId_;
}


#line 85
- (NSString *)getAppKey {
  return self->appKey_;
}

- (jboolean)isSilent {
  return self->isSilent_;
}


#line 94
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->phoneNumber_ = [((ARBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->smsCode_ = [values getStringWithInt:3];
  self->name_ = [values getStringWithInt:4];
  self->deviceHash_ = [values getBytesWithInt:7];
  self->deviceTitle_ = [values getStringWithInt:8];
  self->appId_ = [values getIntWithInt:9];
  self->appKey_ = [values getStringWithInt:10];
  self->isSilent_ = [values getBoolWithInt:11];
}


#line 107
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  if (self->smsCode_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->smsCode_];
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:4 withNSString:self->name_];
  if (self->deviceHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:7 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:8 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:9 withInt:self->appId_];
  if (self->appKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:10 withNSString:self->appKey_];
  [writer writeBoolWithInt:11 withBoolean:self->isSilent_];
}


#line 138
- (NSString *)description {
  NSString *res = @"rpc SignUpObsolete{";
  (void) JreStrAppendStrong(&res, "$$", @"name=", self->name_);
  (void) JreStrAppendStrong(&res, "$$", @", deviceHash=", ARUtils_byteArrayToStringWithByteArray_(self->deviceHash_));
  (void) JreStrAppendStrong(&res, "$$", @", deviceTitle=", self->deviceTitle_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 148
- (jint)getHeaderKey {
  return ARRequestSignUpObsolete_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestSignUpObsolete;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithLong:withNSString:withNSString:withNSString:withByteArray:withNSString:withInt:withNSString:withBoolean:", "RequestSignUpObsolete", NULL, 0x1, NULL, NULL },
    { "init", "RequestSignUpObsolete", NULL, 0x1, NULL, NULL },
    { "getPhoneNumber", NULL, "J", 0x1, NULL, NULL },
    { "getSmsHash", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSmsCode", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDeviceHash", NULL, "[B", 0x1, NULL, NULL },
    { "getDeviceTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAppId", NULL, "I", 0x1, NULL, NULL },
    { "getAppKey", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isSilent", NULL, "Z", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestSignUpObsolete_HEADER },
    { "phoneNumber_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "smsHash_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "smsCode_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "deviceHash_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "deviceTitle_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "appId_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "appKey_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "isSilent_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseAuth;"};
  static const J2ObjcClassInfo _ARRequestSignUpObsolete = { 2, "RequestSignUpObsolete", "im.actor.core.api.rpc", NULL, 0x1, 16, methods, 10, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseAuth;>;" };
  return &_ARRequestSignUpObsolete;
}

@end


#line 21
ARRequestSignUpObsolete *ARRequestSignUpObsolete_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestSignUpObsolete_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestSignUpObsolete_init(), data);
}


#line 35
void ARRequestSignUpObsolete_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(ARRequestSignUpObsolete *self, jlong phoneNumber, NSString *smsHash, NSString *smsCode, NSString *name, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey, jboolean isSilent) {
  (void) ACRequest_init(self);
  
#line 36
  self->phoneNumber_ = phoneNumber;
  self->smsHash_ = smsHash;
  self->smsCode_ = smsCode;
  self->name_ = name;
  self->deviceHash_ = deviceHash;
  self->deviceTitle_ = deviceTitle;
  self->appId_ = appId;
  self->appKey_ = appKey;
  self->isSilent_ = isSilent;
}


#line 35
ARRequestSignUpObsolete *new_ARRequestSignUpObsolete_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(jlong phoneNumber, NSString *smsHash, NSString *smsCode, NSString *name, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey, jboolean isSilent) {
  ARRequestSignUpObsolete *self = [ARRequestSignUpObsolete alloc];
  ARRequestSignUpObsolete_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(self, phoneNumber, smsHash, smsCode, name, deviceHash, deviceTitle, appId, appKey, isSilent);
  return self;
}


#line 47
void ARRequestSignUpObsolete_init(ARRequestSignUpObsolete *self) {
  (void) ACRequest_init(self);
}


#line 47
ARRequestSignUpObsolete *new_ARRequestSignUpObsolete_init() {
  ARRequestSignUpObsolete *self = [ARRequestSignUpObsolete alloc];
  ARRequestSignUpObsolete_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestSignUpObsolete)

#pragma clang diagnostic pop

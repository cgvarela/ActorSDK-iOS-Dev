//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSendCodeByPhoneCall.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/rpc/RequestSendCodeByPhoneCall.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestSendCodeByPhoneCall () {
 @public
  NSString *transactionHash_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestSendCodeByPhoneCall, transactionHash_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSendCodeByPhoneCall.java"


#line 18
@implementation ARRequestSendCodeByPhoneCall

+ (jint)HEADER {
  return ARRequestSendCodeByPhoneCall_HEADER;
}


#line 21
+ (ARRequestSendCodeByPhoneCall *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestSendCodeByPhoneCall_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithNSString:(NSString *)transactionHash {
  ARRequestSendCodeByPhoneCall_initWithNSString_(self, transactionHash);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestSendCodeByPhoneCall_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (NSString *)getTransactionHash {
  return self->transactionHash_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->transactionHash_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->transactionHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->transactionHash_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc SendCodeByPhoneCall{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 61
- (jint)getHeaderKey {
  return ARRequestSendCodeByPhoneCall_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestSendCodeByPhoneCall;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:", "RequestSendCodeByPhoneCall", NULL, 0x1, NULL, NULL },
    { "init", "RequestSendCodeByPhoneCall", NULL, 0x1, NULL, NULL },
    { "getTransactionHash", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestSendCodeByPhoneCall_HEADER },
    { "transactionHash_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ARRequestSendCodeByPhoneCall = { 2, "RequestSendCodeByPhoneCall", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseVoid;>;" };
  return &_ARRequestSendCodeByPhoneCall;
}

@end


#line 21
ARRequestSendCodeByPhoneCall *ARRequestSendCodeByPhoneCall_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestSendCodeByPhoneCall_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestSendCodeByPhoneCall_init(), data);
}


#line 27
void ARRequestSendCodeByPhoneCall_initWithNSString_(ARRequestSendCodeByPhoneCall *self, NSString *transactionHash) {
  (void) ACRequest_init(self);
  
#line 28
  self->transactionHash_ = transactionHash;
}


#line 27
ARRequestSendCodeByPhoneCall *new_ARRequestSendCodeByPhoneCall_initWithNSString_(NSString *transactionHash) {
  ARRequestSendCodeByPhoneCall *self = [ARRequestSendCodeByPhoneCall alloc];
  ARRequestSendCodeByPhoneCall_initWithNSString_(self, transactionHash);
  return self;
}


#line 31
void ARRequestSendCodeByPhoneCall_init(ARRequestSendCodeByPhoneCall *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestSendCodeByPhoneCall *new_ARRequestSendCodeByPhoneCall_init() {
  ARRequestSendCodeByPhoneCall *self = [ARRequestSendCodeByPhoneCall alloc];
  ARRequestSendCodeByPhoneCall_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestSendCodeByPhoneCall)

#pragma clang diagnostic pop

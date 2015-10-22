//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseStartEmailAuth.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiEmailActivationType.h"
#include "im/actor/core/api/rpc/ResponseStartEmailAuth.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARResponseStartEmailAuth () {
 @public
  NSString *transactionHash_;
  jboolean isRegistered_;
  ARApiEmailActivationTypeEnum *activationType_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseStartEmailAuth, transactionHash_, NSString *)
J2OBJC_FIELD_SETTER(ARResponseStartEmailAuth, activationType_, ARApiEmailActivationTypeEnum *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseStartEmailAuth.java"


#line 18
@implementation ARResponseStartEmailAuth

+ (jint)HEADER {
  return ARResponseStartEmailAuth_HEADER;
}


#line 21
+ (ARResponseStartEmailAuth *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseStartEmailAuth_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithNSString:(NSString *)transactionHash
                     withBoolean:(jboolean)isRegistered
withARApiEmailActivationTypeEnum:(ARApiEmailActivationTypeEnum *)activationType {
  ARResponseStartEmailAuth_initWithNSString_withBoolean_withARApiEmailActivationTypeEnum_(self, transactionHash, isRegistered, activationType);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARResponseStartEmailAuth_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (NSString *)getTransactionHash {
  return self->transactionHash_;
}

- (jboolean)isRegistered {
  return self->isRegistered_;
}


#line 49
- (ARApiEmailActivationTypeEnum *)getActivationType {
  return self->activationType_;
}


#line 54
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->transactionHash_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  self->isRegistered_ = [values getBoolWithInt:2];
  self->activationType_ = ARApiEmailActivationTypeEnum_parseWithInt_([values getIntWithInt:3]);
}


#line 61
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->transactionHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->transactionHash_];
  [writer writeBoolWithInt:2 withBoolean:self->isRegistered_];
  if (self->activationType_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeIntWithInt:3 withInt:[((ARApiEmailActivationTypeEnum *) nil_chk(self->activationType_)) getValue]];
}


#line 74
- (NSString *)description {
  NSString *res = @"tuple StartEmailAuth{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 81
- (jint)getHeaderKey {
  return ARResponseStartEmailAuth_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseStartEmailAuth;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:withBoolean:withARApiEmailActivationTypeEnum:", "ResponseStartEmailAuth", NULL, 0x1, NULL, NULL },
    { "init", "ResponseStartEmailAuth", NULL, 0x1, NULL, NULL },
    { "getTransactionHash", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isRegistered", NULL, "Z", 0x1, NULL, NULL },
    { "getActivationType", NULL, "Lim.actor.core.api.ApiEmailActivationType;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseStartEmailAuth_HEADER },
    { "transactionHash_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "isRegistered_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "activationType_", NULL, 0x2, "Lim.actor.core.api.ApiEmailActivationType;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseStartEmailAuth = { 2, "ResponseStartEmailAuth", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseStartEmailAuth;
}

@end


#line 21
ARResponseStartEmailAuth *ARResponseStartEmailAuth_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseStartEmailAuth_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseStartEmailAuth_init(), data);
}


#line 29
void ARResponseStartEmailAuth_initWithNSString_withBoolean_withARApiEmailActivationTypeEnum_(ARResponseStartEmailAuth *self, NSString *transactionHash, jboolean isRegistered, ARApiEmailActivationTypeEnum *activationType) {
  (void) ACResponse_init(self);
  
#line 30
  self->transactionHash_ = transactionHash;
  self->isRegistered_ = isRegistered;
  self->activationType_ = activationType;
}


#line 29
ARResponseStartEmailAuth *new_ARResponseStartEmailAuth_initWithNSString_withBoolean_withARApiEmailActivationTypeEnum_(NSString *transactionHash, jboolean isRegistered, ARApiEmailActivationTypeEnum *activationType) {
  ARResponseStartEmailAuth *self = [ARResponseStartEmailAuth alloc];
  ARResponseStartEmailAuth_initWithNSString_withBoolean_withARApiEmailActivationTypeEnum_(self, transactionHash, isRegistered, activationType);
  return self;
}

void ARResponseStartEmailAuth_init(ARResponseStartEmailAuth *self) {
  (void) ACResponse_init(self);
}


#line 35
ARResponseStartEmailAuth *new_ARResponseStartEmailAuth_init() {
  ARResponseStartEmailAuth *self = [ARResponseStartEmailAuth alloc];
  ARResponseStartEmailAuth_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseStartEmailAuth)

#pragma clang diagnostic pop

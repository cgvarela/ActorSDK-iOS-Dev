//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditParameter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/rpc/RequestEditParameter.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditParameter () {
 @public
  NSString *key_;
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditParameter, key_, NSString *)
J2OBJC_FIELD_SETTER(ARRequestEditParameter, value_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditParameter.java"


#line 18
@implementation ARRequestEditParameter

+ (jint)HEADER {
  return ARRequestEditParameter_HEADER;
}


#line 21
+ (ARRequestEditParameter *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditParameter_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value {
  ARRequestEditParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARRequestEditParameter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 38
- (NSString *)getKey {
  return self->key_;
}


#line 43
- (NSString *)getValue {
  return self->value_;
}


#line 48
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->key_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  self->value_ = [values getStringWithInt:2];
}


#line 54
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->key_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->key_];
  if (self->value_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->value_];
}


#line 66
- (NSString *)description {
  NSString *res = @"rpc EditParameter{";
  (void) JreStrAppendStrong(&res, "$$", @"key=", self->key_);
  (void) JreStrAppendStrong(&res, "$$", @", value=", self->value_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 75
- (jint)getHeaderKey {
  return ARRequestEditParameter_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditParameter;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:withNSString:", "RequestEditParameter", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditParameter", NULL, 0x1, NULL, NULL },
    { "getKey", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValue", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditParameter_HEADER },
    { "key_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestEditParameter = { 2, "RequestEditParameter", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestEditParameter;
}

@end


#line 21
ARRequestEditParameter *ARRequestEditParameter_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditParameter_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditParameter_init(), data);
}

void ARRequestEditParameter_initWithNSString_withNSString_(ARRequestEditParameter *self, NSString *key, NSString *value) {
  (void) ACRequest_init(self);
  
#line 29
  self->key_ = key;
  self->value_ = value;
}


#line 28
ARRequestEditParameter *new_ARRequestEditParameter_initWithNSString_withNSString_(NSString *key, NSString *value) {
  ARRequestEditParameter *self = [ARRequestEditParameter alloc];
  ARRequestEditParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}


#line 33
void ARRequestEditParameter_init(ARRequestEditParameter *self) {
  (void) ACRequest_init(self);
}


#line 33
ARRequestEditParameter *new_ARRequestEditParameter_init() {
  ARRequestEditParameter *self = [ARRequestEditParameter alloc];
  ARRequestEditParameter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditParameter)

#pragma clang diagnostic pop

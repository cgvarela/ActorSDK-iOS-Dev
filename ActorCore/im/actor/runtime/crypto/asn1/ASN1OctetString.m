//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1OctetString.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "im/actor/runtime/crypto/asn1/ASN1OctetString.h"
#include "im/actor/runtime/crypto/asn1/ASN1Primitive.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARASN1OctetString () {
 @public
  IOSByteArray *data_;
}

@end

J2OBJC_FIELD_SETTER(ARASN1OctetString, data_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1OctetString.java"


#line 12
@implementation ARASN1OctetString

+ (ARASN1OctetString *)readOctetStringWithARDataInput:(ARDataInput *)dataInput {
  return ARASN1OctetString_readOctetStringWithARDataInput_(dataInput);
}


#line 20
- (instancetype)initWithByteArray:(IOSByteArray *)data {
  ARASN1OctetString_initWithByteArray_(self, data);
  return self;
}


#line 24
- (IOSByteArray *)getData {
  return data_;
}


#line 29
- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput {
  [((ARDataOutput *) nil_chk(dataOutput)) writeByteWithInt:ARASN1Primitive_TAG_OCTET_STRING];
  [dataOutput writeASN1LengthWithInt:((IOSByteArray *) nil_chk(data_))->size_];
  [dataOutput writeBytesWithByteArray:data_ withInt:0 withInt:data_->size_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readOctetStringWithARDataInput:", "readOctetString", "Lim.actor.runtime.crypto.asn1.ASN1OctetString;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithByteArray:", "ASN1OctetString", NULL, 0x1, NULL, NULL },
    { "getData", NULL, "[B", 0x1, NULL, NULL },
    { "serializeWithARDataOutput:", "serialize", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "data_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARASN1OctetString = { 2, "ASN1OctetString", "im.actor.runtime.crypto.asn1", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARASN1OctetString;
}

@end


#line 14
ARASN1OctetString *ARASN1OctetString_readOctetStringWithARDataInput_(ARDataInput *dataInput) {
  ARASN1OctetString_initialize();
  
#line 15
  return new_ARASN1OctetString_initWithByteArray_([dataInput readBytesWithInt:[((ARDataInput *) nil_chk(dataInput)) getRemaining]]);
}


#line 20
void ARASN1OctetString_initWithByteArray_(ARASN1OctetString *self, IOSByteArray *data) {
  (void) ARASN1Primitive_init(self);
  
#line 21
  self->data_ = data;
}


#line 20
ARASN1OctetString *new_ARASN1OctetString_initWithByteArray_(IOSByteArray *data) {
  ARASN1OctetString *self = [ARASN1OctetString alloc];
  ARASN1OctetString_initWithByteArray_(self, data);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARASN1OctetString)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1BitString.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "im/actor/runtime/crypto/asn1/ASN1BitString.h"
#include "im/actor/runtime/crypto/asn1/ASN1Primitive.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARASN1BitString () {
 @public
  jint paddingBit_;
  IOSByteArray *content_;
}

@end

J2OBJC_FIELD_SETTER(ARASN1BitString, content_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1BitString.java"


#line 12
@implementation ARASN1BitString

+ (ARASN1BitString *)readBitStringWithARDataInput:(ARDataInput *)dataInput {
  return ARASN1BitString_readBitStringWithARDataInput_(dataInput);
}


#line 22
- (instancetype)initWithInt:(jint)paddingBit
              withByteArray:(IOSByteArray *)content {
  ARASN1BitString_initWithInt_withByteArray_(self, paddingBit, content);
  return self;
}


#line 27
- (jint)getPaddingBit {
  return paddingBit_;
}

- (IOSByteArray *)getContent {
  return content_;
}


#line 36
- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput {
  [((ARDataOutput *) nil_chk(dataOutput)) writeByteWithInt:ARASN1Primitive_TAG_BIT_STRING];
  [dataOutput writeASN1LengthWithInt:((IOSByteArray *) nil_chk(content_))->size_ + 1];
  [dataOutput writeByteWithInt:paddingBit_];
  [dataOutput writeBytesWithByteArray:content_ withInt:0 withInt:content_->size_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readBitStringWithARDataInput:", "readBitString", "Lim.actor.runtime.crypto.asn1.ASN1BitString;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withByteArray:", "ASN1BitString", NULL, 0x1, NULL, NULL },
    { "getPaddingBit", NULL, "I", 0x1, NULL, NULL },
    { "getContent", NULL, "[B", 0x1, NULL, NULL },
    { "serializeWithARDataOutput:", "serialize", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "paddingBit_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "content_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARASN1BitString = { 2, "ASN1BitString", "im.actor.runtime.crypto.asn1", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARASN1BitString;
}

@end


#line 14
ARASN1BitString *ARASN1BitString_readBitStringWithARDataInput_(ARDataInput *dataInput) {
  ARASN1BitString_initialize();
  
#line 15
  jint paddingBytes = [((ARDataInput *) nil_chk(dataInput)) readByte];
  return new_ARASN1BitString_initWithInt_withByteArray_(paddingBytes, [dataInput readBytesWithInt:[dataInput getRemaining]]);
}

void ARASN1BitString_initWithInt_withByteArray_(ARASN1BitString *self, jint paddingBit, IOSByteArray *content) {
  (void) ARASN1Primitive_init(self);
  
#line 23
  self->paddingBit_ = paddingBit;
  self->content_ = content;
}


#line 22
ARASN1BitString *new_ARASN1BitString_initWithInt_withByteArray_(jint paddingBit, IOSByteArray *content) {
  ARASN1BitString *self = [ARASN1BitString alloc];
  ARASN1BitString_initWithInt_withByteArray_(self, paddingBit, content);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARASN1BitString)

#pragma clang diagnostic pop

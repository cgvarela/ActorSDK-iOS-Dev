//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1Primitive.java
//

#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/bser/DataOutput.h"
#include "im/actor/runtime/crypto/asn1/ASN1Primitive.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1Primitive.java"


#line 9
@implementation ARASN1Primitive

+ (jint)TAG_BOOLEAN {
  return ARASN1Primitive_TAG_BOOLEAN;
}

+ (jint)TAG_INTEGER {
  return ARASN1Primitive_TAG_INTEGER;
}

+ (jint)TAG_BIT_STRING {
  return ARASN1Primitive_TAG_BIT_STRING;
}

+ (jint)TAG_OCTET_STRING {
  return ARASN1Primitive_TAG_OCTET_STRING;
}

+ (jint)TAG_NULL {
  return ARASN1Primitive_TAG_NULL;
}

+ (jint)TAG_OBJECT_IDENTIFIER {
  return ARASN1Primitive_TAG_OBJECT_IDENTIFIER;
}

+ (jint)TAG_EXTERNAL {
  return ARASN1Primitive_TAG_EXTERNAL;
}

+ (jint)TAG_ENUMERATED {
  return ARASN1Primitive_TAG_ENUMERATED;
}

+ (jint)TAG_SEQUENCE {
  return ARASN1Primitive_TAG_SEQUENCE;
}

+ (jint)TAG_SEQUENCE_OF {
  return ARASN1Primitive_TAG_SEQUENCE_OF;
}

+ (jint)TAG_SET {
  return ARASN1Primitive_TAG_SET;
}

+ (jint)TAG_SET_OF {
  return ARASN1Primitive_TAG_SET_OF;
}

+ (jint)TAG_NUMERIC_STRING {
  return ARASN1Primitive_TAG_NUMERIC_STRING;
}

+ (jint)TAG_PRINTABLE_STRING {
  return ARASN1Primitive_TAG_PRINTABLE_STRING;
}

+ (jint)TAG_T61_STRING {
  return ARASN1Primitive_TAG_T61_STRING;
}

+ (jint)TAG_VIDEOTEX_STRING {
  return ARASN1Primitive_TAG_VIDEOTEX_STRING;
}

+ (jint)TAG_IA5_STRING {
  return ARASN1Primitive_TAG_IA5_STRING;
}

+ (jint)TAG_UTC_TIME {
  return ARASN1Primitive_TAG_UTC_TIME;
}

+ (jint)TAG_GENERALIZED_TIME {
  return ARASN1Primitive_TAG_GENERALIZED_TIME;
}

+ (jint)TAG_GRAPHIC_STRING {
  return ARASN1Primitive_TAG_GRAPHIC_STRING;
}

+ (jint)TAG_VISIBLE_STRING {
  return ARASN1Primitive_TAG_VISIBLE_STRING;
}

+ (jint)TAG_GENERAL_STRING {
  return ARASN1Primitive_TAG_GENERAL_STRING;
}

+ (jint)TAG_UNIVERSAL_STRING {
  return ARASN1Primitive_TAG_UNIVERSAL_STRING;
}

+ (jint)TAG_BMP_STRING {
  return ARASN1Primitive_TAG_BMP_STRING;
}

+ (jint)TAG_UTF8_STRING {
  return ARASN1Primitive_TAG_UTF8_STRING;
}

+ (jint)TAG_CONSTRUCTED {
  return ARASN1Primitive_TAG_CONSTRUCTED;
}

+ (jint)TAG_APPLICATION {
  return ARASN1Primitive_TAG_APPLICATION;
}

+ (jint)TAG_TAGGED {
  return ARASN1Primitive_TAG_TAGGED;
}


#line 11
- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 13
- (IOSByteArray *)serialize {
  ARDataOutput *res = new_ARDataOutput_init();
  [self serializeWithARDataOutput:res];
  return [res toByteArray];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARASN1Primitive_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithARDataOutput:", "serialize", "V", 0x401, NULL, NULL },
    { "serialize", NULL, "[B", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_BOOLEAN", "TAG_BOOLEAN", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_BOOLEAN },
    { "TAG_INTEGER", "TAG_INTEGER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_INTEGER },
    { "TAG_BIT_STRING", "TAG_BIT_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_BIT_STRING },
    { "TAG_OCTET_STRING", "TAG_OCTET_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_OCTET_STRING },
    { "TAG_NULL", "TAG_NULL", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_NULL },
    { "TAG_OBJECT_IDENTIFIER", "TAG_OBJECT_IDENTIFIER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_OBJECT_IDENTIFIER },
    { "TAG_EXTERNAL", "TAG_EXTERNAL", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_EXTERNAL },
    { "TAG_ENUMERATED", "TAG_ENUMERATED", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_ENUMERATED },
    { "TAG_SEQUENCE", "TAG_SEQUENCE", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_SEQUENCE },
    { "TAG_SEQUENCE_OF", "TAG_SEQUENCE_OF", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_SEQUENCE_OF },
    { "TAG_SET", "TAG_SET", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_SET },
    { "TAG_SET_OF", "TAG_SET_OF", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_SET_OF },
    { "TAG_NUMERIC_STRING", "TAG_NUMERIC_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_NUMERIC_STRING },
    { "TAG_PRINTABLE_STRING", "TAG_PRINTABLE_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_PRINTABLE_STRING },
    { "TAG_T61_STRING", "TAG_T61_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_T61_STRING },
    { "TAG_VIDEOTEX_STRING", "TAG_VIDEOTEX_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_VIDEOTEX_STRING },
    { "TAG_IA5_STRING", "TAG_IA5_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_IA5_STRING },
    { "TAG_UTC_TIME", "TAG_UTC_TIME", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_UTC_TIME },
    { "TAG_GENERALIZED_TIME", "TAG_GENERALIZED_TIME", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_GENERALIZED_TIME },
    { "TAG_GRAPHIC_STRING", "TAG_GRAPHIC_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_GRAPHIC_STRING },
    { "TAG_VISIBLE_STRING", "TAG_VISIBLE_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_VISIBLE_STRING },
    { "TAG_GENERAL_STRING", "TAG_GENERAL_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_GENERAL_STRING },
    { "TAG_UNIVERSAL_STRING", "TAG_UNIVERSAL_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_UNIVERSAL_STRING },
    { "TAG_BMP_STRING", "TAG_BMP_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_BMP_STRING },
    { "TAG_UTF8_STRING", "TAG_UTF8_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_UTF8_STRING },
    { "TAG_CONSTRUCTED", "TAG_CONSTRUCTED", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_CONSTRUCTED },
    { "TAG_APPLICATION", "TAG_APPLICATION", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_APPLICATION },
    { "TAG_TAGGED", "TAG_TAGGED", 0x19, "I", NULL, NULL, .constantValue.asInt = ARASN1Primitive_TAG_TAGGED },
  };
  static const J2ObjcClassInfo _ARASN1Primitive = { 2, "ASN1Primitive", "im.actor.runtime.crypto.asn1", NULL, 0x401, 3, methods, 28, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARASN1Primitive;
}

@end

void ARASN1Primitive_init(ARASN1Primitive *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARASN1Primitive)

#pragma clang diagnostic pop

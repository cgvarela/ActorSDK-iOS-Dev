//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1Null.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "im/actor/runtime/crypto/asn1/ASN1Null.h"
#include "im/actor/runtime/crypto/asn1/ASN1Primitive.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/asn1/ASN1Null.java"


#line 9
@implementation ARASN1Null

- (void)serializeWithARDataOutput:(ARDataOutput *)dataOutput {
  [((ARDataOutput *) nil_chk(dataOutput)) writeByteWithInt:ARASN1Primitive_TAG_NULL];
  [dataOutput writeByteWithInt:0];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARASN1Null_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithARDataOutput:", "serialize", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARASN1Null = { 2, "ASN1Null", "im.actor.runtime.crypto.asn1", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARASN1Null;
}

@end

void ARASN1Null_init(ARASN1Null *self) {
  (void) ARASN1Primitive_init(self);
}

ARASN1Null *new_ARASN1Null_init() {
  ARASN1Null *self = [ARASN1Null alloc];
  ARASN1Null_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARASN1Null)

#pragma clang diagnostic pop
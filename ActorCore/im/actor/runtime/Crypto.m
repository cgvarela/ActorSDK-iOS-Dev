//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Crypto.java
//

#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/Crypto.h"
#include "im/actor/runtime/CryptoRuntime.h"
#include "im/actor/runtime/CryptoRuntimeProvider.h"
#include "im/actor/runtime/RandomRuntime.h"
#include "im/actor/runtime/RandomRuntimeProvider.h"
#include <j2objc/java/lang/RuntimeException.h>
#include <j2objc/java/math/BigInteger.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARCrypto ()

+ (jint)fromHexShortWithChar:(jchar)a;

@end

static id<ARCryptoRuntime> ARCrypto_provider_;
J2OBJC_STATIC_FIELD_GETTER(ARCrypto, provider_, id<ARCryptoRuntime>)

static id<ARRandomRuntime> ARCrypto_random_;
J2OBJC_STATIC_FIELD_GETTER(ARCrypto, random_, id<ARRandomRuntime>)

__attribute__((unused)) static jint ARCrypto_fromHexShortWithChar_(jchar a);

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Crypto.java"

J2OBJC_INITIALIZED_DEFN(ARCrypto)

IOSCharArray *ARCrypto_hexArray_;


#line 9
@implementation ARCrypto

+ (IOSCharArray *)hexArray {
  return ARCrypto_hexArray_;
}


#line 16
+ (IOSByteArray *)MD5WithByteArray:(IOSByteArray *)data {
  return ARCrypto_MD5WithByteArray_(data);
}


#line 26
+ (IOSByteArray *)SHA256WithByteArray:(IOSByteArray *)data {
  return ARCrypto_SHA256WithByteArray_(data);
}


#line 36
+ (IOSByteArray *)SHA512WithByteArray:(IOSByteArray *)data {
  return ARCrypto_SHA512WithByteArray_(data);
}


#line 46
+ (jint)randomIntWithInt:(jint)maxValue {
  return ARCrypto_randomIntWithInt_(maxValue);
}


#line 56
+ (IOSByteArray *)randomBytesWithInt:(jint)len {
  return ARCrypto_randomBytesWithInt_(len);
}

+ (void)nextBytesWithByteArray:(IOSByteArray *)data {
  ARCrypto_nextBytesWithByteArray_(data);
}

+ (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits {
  return ARCrypto_generateBigIntegerWithInt_(numBits);
}

+ (JavaMathBigInteger *)generateBigIntegerWithInt:(jint)numBits
                                          withInt:(jint)certanity {
  return ARCrypto_generateBigIntegerWithInt_withInt_(numBits, certanity);
}


#line 78
+ (NSString *)hexWithByteArray:(IOSByteArray *)bytes {
  return ARCrypto_hexWithByteArray_(bytes);
}


#line 88
+ (jint)fromHexShortWithChar:(jchar)a {
  return ARCrypto_fromHexShortWithChar_(a);
}


#line 99
+ (IOSByteArray *)fromHexWithNSString:(NSString *)hex {
  return ARCrypto_fromHexWithNSString_(hex);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARCrypto_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [ARCrypto class]) {
    ARCrypto_hexArray_ =
#line 11
    [@"0123456789abcdef" toCharArray];
    ARCrypto_provider_ = new_ARCryptoRuntimeProvider_init();
    ARCrypto_random_ = new_ARRandomRuntimeProvider_init();
    J2OBJC_SET_INITIALIZED(ARCrypto)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "MD5WithByteArray:", "MD5", "[B", 0x9, NULL, NULL },
    { "SHA256WithByteArray:", "SHA256", "[B", 0x9, NULL, NULL },
    { "SHA512WithByteArray:", "SHA512", "[B", 0x9, NULL, NULL },
    { "randomIntWithInt:", "randomInt", "I", 0x9, NULL, NULL },
    { "randomBytesWithInt:", "randomBytes", "[B", 0x9, NULL, NULL },
    { "nextBytesWithByteArray:", "nextBytes", "V", 0x9, NULL, NULL },
    { "generateBigIntegerWithInt:", "generateBigInteger", "Ljava.math.BigInteger;", 0x9, NULL, NULL },
    { "generateBigIntegerWithInt:withInt:", "generateBigInteger", "Ljava.math.BigInteger;", 0x9, NULL, NULL },
    { "hexWithByteArray:", "hex", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "fromHexShortWithChar:", "fromHexShort", "I", 0xa, NULL, NULL },
    { "fromHexWithNSString:", "fromHex", "[B", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hexArray_", NULL, 0x1c, "[C", &ARCrypto_hexArray_, NULL, .constantValue.asLong = 0 },
    { "provider_", NULL, 0x1a, "Lim.actor.runtime.CryptoRuntime;", &ARCrypto_provider_, NULL, .constantValue.asLong = 0 },
    { "random_", NULL, 0x1a, "Lim.actor.runtime.RandomRuntime;", &ARCrypto_random_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARCrypto = { 2, "Crypto", "im.actor.runtime", NULL, 0x1, 12, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARCrypto;
}

@end


#line 16
IOSByteArray *ARCrypto_MD5WithByteArray_(IOSByteArray *data) {
  ARCrypto_initialize();
  
#line 17
  return [((id<ARCryptoRuntime>) nil_chk(ARCrypto_provider_)) MD5WithData:data];
}


#line 26
IOSByteArray *ARCrypto_SHA256WithByteArray_(IOSByteArray *data) {
  ARCrypto_initialize();
  
#line 27
  return [((id<ARCryptoRuntime>) nil_chk(ARCrypto_provider_)) SHA256WithData:data];
}


#line 36
IOSByteArray *ARCrypto_SHA512WithByteArray_(IOSByteArray *data) {
  ARCrypto_initialize();
  
#line 37
  return [((id<ARCryptoRuntime>) nil_chk(ARCrypto_provider_)) SHA512WithData:data];
}


#line 46
jint ARCrypto_randomIntWithInt_(jint maxValue) {
  ARCrypto_initialize();
  
#line 47
  return [((id<ARRandomRuntime>) nil_chk(ARCrypto_random_)) randomIntWithInt:maxValue];
}


#line 56
IOSByteArray *ARCrypto_randomBytesWithInt_(jint len) {
  ARCrypto_initialize();
  
#line 57
  return [((id<ARRandomRuntime>) nil_chk(ARCrypto_random_)) randomBytesWithInt:len];
}


#line 60
void ARCrypto_nextBytesWithByteArray_(IOSByteArray *data) {
  ARCrypto_initialize();
  
#line 61
  [((id<ARRandomRuntime>) nil_chk(ARCrypto_random_)) nextBytesWithByteArray:data];
}


#line 64
JavaMathBigInteger *ARCrypto_generateBigIntegerWithInt_(jint numBits) {
  ARCrypto_initialize();
  
#line 65
  return [((id<ARRandomRuntime>) nil_chk(ARCrypto_random_)) generateBigIntegerWithInt:numBits];
}


#line 68
JavaMathBigInteger *ARCrypto_generateBigIntegerWithInt_withInt_(jint numBits, jint certanity) {
  ARCrypto_initialize();
  
#line 69
  return [((id<ARRandomRuntime>) nil_chk(ARCrypto_random_)) generateBigIntegerWithInt:numBits withInt:certanity];
}


#line 78
NSString *ARCrypto_hexWithByteArray_(IOSByteArray *bytes) {
  ARCrypto_initialize();
  
#line 79
  IOSCharArray *hexChars = [IOSCharArray newArrayWithLength:((IOSByteArray *) nil_chk(bytes))->size_ * 2];
  for (jint j = 0; j < bytes->size_; j++) {
    jint v = IOSByteArray_Get(bytes, j) & (jint) 0xFF;
    *IOSCharArray_GetRef(hexChars, j * 2) = IOSCharArray_Get(nil_chk(ARCrypto_hexArray_), JreURShift32(v, 4));
    *IOSCharArray_GetRef(hexChars, j * 2 + 1) = IOSCharArray_Get(ARCrypto_hexArray_, v & (jint) 0x0F);
  }
  return [NSString stringWithCharacters:hexChars];
}


#line 88
jint ARCrypto_fromHexShortWithChar_(jchar a) {
  ARCrypto_initialize();
  
#line 89
  if (a >= '0' && a <= '9') {
    return a - '0';
  }
  if (a >= 'a' && a <= 'f') {
    return 10 + (a - 'a');
  }
  
#line 96
  @throw new_JavaLangRuntimeException_init();
}


#line 99
IOSByteArray *ARCrypto_fromHexWithNSString_(NSString *hex) {
  ARCrypto_initialize();
  
#line 100
  IOSByteArray *res = [IOSByteArray newArrayWithLength:((jint) [((NSString *) nil_chk(hex)) length]) / 2];
  for (jint i = 0; i < res->size_; i++) {
    *IOSByteArray_GetRef(res, i) = (jbyte) ((JreLShift32(ARCrypto_fromHexShortWithChar_([hex charAtWithInt:i * 2]), 4)) + ARCrypto_fromHexShortWithChar_([hex charAtWithInt:i * 2 + 1]));
  }
  return res;
}

void ARCrypto_init(ARCrypto *self) {
  (void) NSObject_init(self);
}

ARCrypto *new_ARCrypto_init() {
  ARCrypto *self = [ARCrypto alloc];
  ARCrypto_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARCrypto)

#pragma clang diagnostic pop

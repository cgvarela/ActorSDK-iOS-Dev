//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/bouncycastle/RandomProvider.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/crypto/bouncycastle/RandomProvider.h"
#include "java/math/BigInteger.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRandomProvider : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/crypto/bouncycastle/RandomProvider.java"


#line 9
@implementation ARRandomProvider

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "randomBytesWithInt:", "randomBytes", "[B", 0x401, NULL, NULL },
    { "randomIntWithInt:", "randomInt", "I", 0x401, NULL, NULL },
    { "nextBytesWithByteArray:", "nextBytes", "V", 0x401, NULL, NULL },
    { "generateBigIntegerWithInt:", "generateBigInteger", "Ljava.math.BigInteger;", 0x401, NULL, NULL },
    { "generateBigIntegerWithInt:withInt:", "generateBigInteger", "Ljava.math.BigInteger;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARRandomProvider = { 2, "RandomProvider", "im.actor.runtime.crypto.bouncycastle", NULL, 0x609, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARRandomProvider;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARRandomProvider)

#pragma clang diagnostic pop

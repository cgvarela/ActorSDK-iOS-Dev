//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/crypto/digests/MD5Digest.java
//

#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include <j2objc/java/lang/System.h>
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"
#include "org/bouncycastle/crypto/digests/MD5Digest.h"
#include "org/bouncycastle/util/Memoable.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define OrgBouncycastleCryptoDigestsMD5Digest_DIGEST_LENGTH 16
#define OrgBouncycastleCryptoDigestsMD5Digest_S11 7
#define OrgBouncycastleCryptoDigestsMD5Digest_S12 12
#define OrgBouncycastleCryptoDigestsMD5Digest_S13 17
#define OrgBouncycastleCryptoDigestsMD5Digest_S14 22
#define OrgBouncycastleCryptoDigestsMD5Digest_S21 5
#define OrgBouncycastleCryptoDigestsMD5Digest_S22 9
#define OrgBouncycastleCryptoDigestsMD5Digest_S23 14
#define OrgBouncycastleCryptoDigestsMD5Digest_S24 20
#define OrgBouncycastleCryptoDigestsMD5Digest_S31 4
#define OrgBouncycastleCryptoDigestsMD5Digest_S32 11
#define OrgBouncycastleCryptoDigestsMD5Digest_S33 16
#define OrgBouncycastleCryptoDigestsMD5Digest_S34 23
#define OrgBouncycastleCryptoDigestsMD5Digest_S41 6
#define OrgBouncycastleCryptoDigestsMD5Digest_S42 10
#define OrgBouncycastleCryptoDigestsMD5Digest_S43 15
#define OrgBouncycastleCryptoDigestsMD5Digest_S44 21

@interface OrgBouncycastleCryptoDigestsMD5Digest () {
 @public
  jint H1_, H2_, H3_, H4_;
  IOSIntArray *X_;
  jint xOff_;
}

- (void)copyInWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t OBJC_METHOD_FAMILY_NONE;

- (void)unpackWordWithInt:(jint)word
            withByteArray:(IOSByteArray *)outArg
                  withInt:(jint)outOff;

- (jint)rotateLeftWithInt:(jint)x
                  withInt:(jint)n;

- (jint)FWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)GWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)HWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)KWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsMD5Digest, X_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, DIGEST_LENGTH, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S11, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S12, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S13, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S14, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S21, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S22, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S23, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S24, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S31, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S32, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S33, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S34, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S41, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S42, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S43, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsMD5Digest, S44, jint)

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint word, IOSByteArray *outArg, jint outOff);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint x, jint n);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w);

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/crypto/digests/MD5Digest.java"


#line 9
@implementation OrgBouncycastleCryptoDigestsMD5Digest

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 22
- (instancetype)init {
  OrgBouncycastleCryptoDigestsMD5Digest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 31
- (instancetype)initWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t {
  OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(self, t);
  return self;
}


#line 38
- (void)copyInWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t {
  
#line 40
  [super copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:t];
  
#line 42
  H1_ = ((OrgBouncycastleCryptoDigestsMD5Digest *) nil_chk(t))->H1_;
  H2_ = t->H2_;
  H3_ = t->H3_;
  H4_ = t->H4_;
  
#line 47
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(t->X_, 0, X_, 0, ((IOSIntArray *) nil_chk(t->X_))->size_);
  xOff_ = t->xOff_;
}


#line 51
- (NSString *)getAlgorithmName {
  
#line 53
  return @"MD5";
}


#line 56
- (jint)getDigestSize {
  
#line 58
  return OrgBouncycastleCryptoDigestsMD5Digest_DIGEST_LENGTH;
}


#line 61
- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff {
  
#line 65
  *IOSIntArray_GetRef(nil_chk(X_), xOff_++) = (IOSByteArray_Get(nil_chk(inArg), inOff) & (jint) 0xff) | (JreLShift32((IOSByteArray_Get(inArg, inOff + 1) & (jint) 0xff), 8)) |
#line 66
  (JreLShift32((IOSByteArray_Get(inArg, inOff + 2) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(inArg, inOff + 3) & (jint) 0xff), 24));
  
#line 68
  if (xOff_ == 16) {
    
#line 70
    [self processBlock];
  }
}


#line 74
- (void)processLengthWithLong:(jlong)bitLength {
  
#line 77
  if (xOff_ > 14) {
    
#line 79
    [self processBlock];
  }
  
#line 82
  *IOSIntArray_GetRef(nil_chk(X_), 14) = (jint) (bitLength & (jint) 0xffffffff);
  *IOSIntArray_GetRef(X_, 15) = (jint) (JreURShift64(bitLength, 32));
}


#line 86
- (void)unpackWordWithInt:(jint)word
            withByteArray:(IOSByteArray *)outArg
                  withInt:(jint)outOff {
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, word, outArg, outOff);
}


#line 97
- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  
#line 101
  [self finish];
  
#line 103
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H1_, outArg, outOff);
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H2_, outArg, outOff + 4);
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H3_, outArg, outOff + 8);
  OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(self, H4_, outArg, outOff + 12);
  
#line 108
  [self reset];
  
#line 110
  return OrgBouncycastleCryptoDigestsMD5Digest_DIGEST_LENGTH;
}

- (void)reset {
  
#line 118
  [super reset];
  
#line 120
  H1_ = (jint) 0x67452301;
  H2_ = (jint) 0xefcdab89;
  H3_ = (jint) 0x98badcfe;
  H4_ = (jint) 0x10325476;
  
#line 125
  xOff_ = 0;
  
#line 127
  for (jint i = 0; i != ((IOSIntArray *) nil_chk(X_))->size_; i++) {
    
#line 129
    *IOSIntArray_GetRef(X_, i) = 0;
  }
}


#line 168
- (jint)rotateLeftWithInt:(jint)x
                  withInt:(jint)n {
  return OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, x, n);
}


#line 178
- (jint)FWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, u, v, w);
}


#line 186
- (jint)GWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, u, v, w);
}


#line 194
- (jint)HWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, u, v, w);
}


#line 202
- (jint)KWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, u, v, w);
}


#line 210
- (void)processBlock {
  
#line 212
  jint a = H1_;
  jint b = H2_;
  jint c = H3_;
  jint d = H4_;
  
#line 220
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 0) + (jint) 0xd76aa478, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 1) + (jint) 0xe8c7b756, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 2) + (jint) 0x242070db, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 3) + (jint) 0xc1bdceee, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 4) + (jint) 0xf57c0faf, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 5) + (jint) 0x4787c62a, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 6) + (jint) 0xa8304613, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 7) + (jint) 0xfd469501, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 8) + (jint) 0x698098d8, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 9) + (jint) 0x8b44f7af, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 10) + (jint) 0xffff5bb1, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 11) + (jint) 0x895cd7be, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 12) + (jint) 0x6b901122, OrgBouncycastleCryptoDigestsMD5Digest_S11) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 13) + (jint) 0xfd987193, OrgBouncycastleCryptoDigestsMD5Digest_S12) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 14) + (jint) 0xa679438e, OrgBouncycastleCryptoDigestsMD5Digest_S13) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 15) + (jint) 0x49b40821, OrgBouncycastleCryptoDigestsMD5Digest_S14) + c;
  
#line 240
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 1) + (jint) 0xf61e2562, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 6) + (jint) 0xc040b340, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 11) + (jint) 0x265e5a51, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 0) + (jint) 0xe9b6c7aa, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 5) + (jint) 0xd62f105d, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 10) + (jint) 0x02441453, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 15) + (jint) 0xd8a1e681, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 4) + (jint) 0xe7d3fbc8, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 9) + (jint) 0x21e1cde6, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 14) + (jint) 0xc33707d6, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 3) + (jint) 0xf4d50d87, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 8) + (jint) 0x455a14ed, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 13) + (jint) 0xa9e3e905, OrgBouncycastleCryptoDigestsMD5Digest_S21) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 2) + (jint) 0xfcefa3f8, OrgBouncycastleCryptoDigestsMD5Digest_S22) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 7) + (jint) 0x676f02d9, OrgBouncycastleCryptoDigestsMD5Digest_S23) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 12) + (jint) 0x8d2a4c8a, OrgBouncycastleCryptoDigestsMD5Digest_S24) + c;
  
#line 260
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 5) + (jint) 0xfffa3942, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 8) + (jint) 0x8771f681, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 11) + (jint) 0x6d9d6122, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 14) + (jint) 0xfde5380c, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 1) + (jint) 0xa4beea44, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 4) + (jint) 0x4bdecfa9, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 7) + (jint) 0xf6bb4b60, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 10) + (jint) 0xbebfbc70, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 13) + (jint) 0x289b7ec6, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 0) + (jint) 0xeaa127fa, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 3) + (jint) 0xd4ef3085, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 6) + (jint) 0x04881d05, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 9) + (jint) 0xd9d4d039, OrgBouncycastleCryptoDigestsMD5Digest_S31) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 12) + (jint) 0xe6db99e5, OrgBouncycastleCryptoDigestsMD5Digest_S32) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 15) + (jint) 0x1fa27cf8, OrgBouncycastleCryptoDigestsMD5Digest_S33) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 2) + (jint) 0xc4ac5665, OrgBouncycastleCryptoDigestsMD5Digest_S34) + c;
  
#line 280
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 0) + (jint) 0xf4292244, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 7) + (jint) 0x432aff97, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 14) + (jint) 0xab9423a7, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 5) + (jint) 0xfc93a039, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 12) + (jint) 0x655b59c3, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 3) + (jint) 0x8f0ccc92, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 10) + (jint) 0xffeff47d, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 1) + (jint) 0x85845dd1, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 8) + (jint) 0x6fa87e4f, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 15) + (jint) 0xfe2ce6e0, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 6) + (jint) 0xa3014314, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 13) + (jint) 0x4e0811a1, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  a = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(X_, 4) + (jint) 0xf7537e82, OrgBouncycastleCryptoDigestsMD5Digest_S41) + b;
  d = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(X_, 11) + (jint) 0xbd3af235, OrgBouncycastleCryptoDigestsMD5Digest_S42) + a;
  c = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(X_, 2) + (jint) 0x2ad7d2bb, OrgBouncycastleCryptoDigestsMD5Digest_S43) + d;
  b = OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(X_, 9) + (jint) 0xeb86d391, OrgBouncycastleCryptoDigestsMD5Digest_S44) + c;
  
#line 297
  H1_ += a;
  H2_ += b;
  H3_ += c;
  H4_ += d;
  
#line 305
  xOff_ = 0;
  for (jint i = 0; i != X_->size_; i++) {
    
#line 308
    *IOSIntArray_GetRef(X_, i) = 0;
  }
}


#line 312
- (id<OrgBouncycastleUtilMemoable>)copy__ {
  
#line 314
  return new_OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(self);
}


#line 317
- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other {
  
#line 319
  OrgBouncycastleCryptoDigestsMD5Digest *d = (OrgBouncycastleCryptoDigestsMD5Digest *) check_class_cast(other, [OrgBouncycastleCryptoDigestsMD5Digest class]);
  
#line 321
  [self copyInWithOrgBouncycastleCryptoDigestsMD5Digest:d];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MD5Digest", NULL, 0x1, NULL, NULL },
    { "initWithOrgBouncycastleCryptoDigestsMD5Digest:", "MD5Digest", NULL, 0x1, NULL, NULL },
    { "copyInWithOrgBouncycastleCryptoDigestsMD5Digest:", "copyIn", "V", 0x2, NULL, NULL },
    { "getAlgorithmName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDigestSize", NULL, "I", 0x1, NULL, NULL },
    { "processWordWithByteArray:withInt:", "processWord", "V", 0x4, NULL, NULL },
    { "processLengthWithLong:", "processLength", "V", 0x4, NULL, NULL },
    { "unpackWordWithInt:withByteArray:withInt:", "unpackWord", "V", 0x2, NULL, NULL },
    { "doFinalWithByteArray:withInt:", "doFinal", "I", 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x1, NULL, NULL },
    { "rotateLeftWithInt:withInt:", "rotateLeft", "I", 0x2, NULL, NULL },
    { "FWithInt:withInt:withInt:", "F", "I", 0x2, NULL, NULL },
    { "GWithInt:withInt:withInt:", "G", "I", 0x2, NULL, NULL },
    { "HWithInt:withInt:withInt:", "H", "I", 0x2, NULL, NULL },
    { "KWithInt:withInt:withInt:", "K", "I", 0x2, NULL, NULL },
    { "processBlock", NULL, "V", 0x4, NULL, NULL },
    { "copy__", "copy", "Lorg.bouncycastle.util.Memoable;", 0x1, NULL, NULL },
    { "resetWithOrgBouncycastleUtilMemoable:", "reset", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DIGEST_LENGTH", "DIGEST_LENGTH", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_DIGEST_LENGTH },
    { "H1_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "H2_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "H3_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "H4_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "X_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "xOff_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "S11", "S11", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S11 },
    { "S12", "S12", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S12 },
    { "S13", "S13", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S13 },
    { "S14", "S14", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S14 },
    { "S21", "S21", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S21 },
    { "S22", "S22", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S22 },
    { "S23", "S23", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S23 },
    { "S24", "S24", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S24 },
    { "S31", "S31", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S31 },
    { "S32", "S32", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S32 },
    { "S33", "S33", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S33 },
    { "S34", "S34", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S34 },
    { "S41", "S41", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S41 },
    { "S42", "S42", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S42 },
    { "S43", "S43", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S43 },
    { "S44", "S44", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleCryptoDigestsMD5Digest_S44 },
  };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDigestsMD5Digest = { 2, "MD5Digest", "org.bouncycastle.crypto.digests", NULL, 0x1, 18, methods, 23, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgBouncycastleCryptoDigestsMD5Digest;
}

@end


#line 22
void OrgBouncycastleCryptoDigestsMD5Digest_init(OrgBouncycastleCryptoDigestsMD5Digest *self) {
  (void) OrgBouncycastleCryptoDigestsGeneralDigest_init(self);
  self->X_ = [IOSIntArray newArrayWithLength:
#line 16
  16];
  
#line 24
  [self reset];
}


#line 22
OrgBouncycastleCryptoDigestsMD5Digest *new_OrgBouncycastleCryptoDigestsMD5Digest_init() {
  OrgBouncycastleCryptoDigestsMD5Digest *self = [OrgBouncycastleCryptoDigestsMD5Digest alloc];
  OrgBouncycastleCryptoDigestsMD5Digest_init(self);
  return self;
}


#line 31
void OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(OrgBouncycastleCryptoDigestsMD5Digest *self, OrgBouncycastleCryptoDigestsMD5Digest *t) {
  (void) OrgBouncycastleCryptoDigestsGeneralDigest_initWithOrgBouncycastleCryptoDigestsGeneralDigest_(self,
#line 33
  t);
  self->X_ = [IOSIntArray newArrayWithLength:
#line 16
  16];
  
#line 35
  [self copyInWithOrgBouncycastleCryptoDigestsMD5Digest:t];
}


#line 31
OrgBouncycastleCryptoDigestsMD5Digest *new_OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(OrgBouncycastleCryptoDigestsMD5Digest *t) {
  OrgBouncycastleCryptoDigestsMD5Digest *self = [OrgBouncycastleCryptoDigestsMD5Digest alloc];
  OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(self, t);
  return self;
}


#line 86
void OrgBouncycastleCryptoDigestsMD5Digest_unpackWordWithInt_withByteArray_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint word, IOSByteArray *outArg, jint outOff) {
  
#line 91
  *IOSByteArray_GetRef(nil_chk(outArg), outOff) = (jbyte) word;
  *IOSByteArray_GetRef(outArg, outOff + 1) = (jbyte) (JreURShift32(word, 8));
  *IOSByteArray_GetRef(outArg, outOff + 2) = (jbyte) (JreURShift32(word, 16));
  *IOSByteArray_GetRef(outArg, outOff + 3) = (jbyte) (JreURShift32(word, 24));
}


#line 168
jint OrgBouncycastleCryptoDigestsMD5Digest_rotateLeftWithInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint x, jint n) {
  
#line 172
  return (JreLShift32(x, n)) | (JreURShift32(x, (32 - n)));
}


#line 178
jint OrgBouncycastleCryptoDigestsMD5Digest_FWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  
#line 183
  return (u & v) | (~u & w);
}


#line 186
jint OrgBouncycastleCryptoDigestsMD5Digest_GWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  
#line 191
  return (u & w) | (v & ~w);
}


#line 194
jint OrgBouncycastleCryptoDigestsMD5Digest_HWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  
#line 199
  return u ^ v ^ w;
}


#line 202
jint OrgBouncycastleCryptoDigestsMD5Digest_KWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD5Digest *self, jint u, jint v, jint w) {
  
#line 207
  return v ^ (u | ~w);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsMD5Digest)

#pragma clang diagnostic pop

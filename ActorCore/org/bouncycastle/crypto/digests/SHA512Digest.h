//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/crypto/digests/SHA512Digest.java
//

#ifndef _OrgBouncycastleCryptoDigestsSHA512Digest_H_
#define _OrgBouncycastleCryptoDigestsSHA512Digest_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "org/bouncycastle/crypto/digests/LongDigest.h"

@class IOSByteArray;
@protocol OrgBouncycastleUtilMemoable;

/*!
 @brief FIPS 180-2 implementation of SHA-512.
 <p/>
 @code

         block  word  digest
  SHA-1   512    32    160
  SHA-256 512    32    256
  SHA-384 1024   64    384
  SHA-512 1024   64    512
  
@endcode
 */
@interface OrgBouncycastleCryptoDigestsSHA512Digest : OrgBouncycastleCryptoDigestsLongDigest

#pragma mark Public

/*!
 @brief Standard constructor
 */
- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState;

/*!
 @brief Copy constructor.
 This will copy the state of the provided
 message digest.
 */
- (instancetype)initWithOrgBouncycastleCryptoDigestsSHA512Digest:(OrgBouncycastleCryptoDigestsSHA512Digest *)t;

- (id<OrgBouncycastleUtilMemoable>)copy__ OBJC_METHOD_FAMILY_NONE;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (NSString *)getAlgorithmName;

- (jint)getDigestSize;

- (IOSByteArray *)getEncodedState;

/*!
 @brief reset the chaining variables
 */
- (void)reset;

- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoDigestsSHA512Digest)

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsSHA512Digest_init(OrgBouncycastleCryptoDigestsSHA512Digest *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA512Digest *new_OrgBouncycastleCryptoDigestsSHA512Digest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsSHA512Digest_initWithOrgBouncycastleCryptoDigestsSHA512Digest_(OrgBouncycastleCryptoDigestsSHA512Digest *self, OrgBouncycastleCryptoDigestsSHA512Digest *t);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA512Digest *new_OrgBouncycastleCryptoDigestsSHA512Digest_initWithOrgBouncycastleCryptoDigestsSHA512Digest_(OrgBouncycastleCryptoDigestsSHA512Digest *t) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsSHA512Digest_initWithByteArray_(OrgBouncycastleCryptoDigestsSHA512Digest *self, IOSByteArray *encodedState);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA512Digest *new_OrgBouncycastleCryptoDigestsSHA512Digest_initWithByteArray_(IOSByteArray *encodedState) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoDigestsSHA512Digest)


#pragma clang diagnostic pop
#endif // _OrgBouncycastleCryptoDigestsSHA512Digest_H_

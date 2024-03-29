//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/util/Pack.java
//

#ifndef _OrgBouncycastleUtilPack_H_
#define _OrgBouncycastleUtilPack_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;

@interface OrgBouncycastleUtilPack : NSObject

#pragma mark Public

- (instancetype)init;

+ (jint)bigEndianToIntWithByteArray:(IOSByteArray *)bs
                            withInt:(jint)off;

+ (void)bigEndianToIntWithByteArray:(IOSByteArray *)bs
                            withInt:(jint)off
                       withIntArray:(IOSIntArray *)ns;

+ (jlong)bigEndianToLongWithByteArray:(IOSByteArray *)bs
                              withInt:(jint)off;

+ (void)bigEndianToLongWithByteArray:(IOSByteArray *)bs
                             withInt:(jint)off
                       withLongArray:(IOSLongArray *)ns;

+ (IOSByteArray *)intToBigEndianWithInt:(jint)n;

+ (void)intToBigEndianWithInt:(jint)n
                withByteArray:(IOSByteArray *)bs
                      withInt:(jint)off;

+ (IOSByteArray *)intToBigEndianWithIntArray:(IOSIntArray *)ns;

+ (void)intToBigEndianWithIntArray:(IOSIntArray *)ns
                     withByteArray:(IOSByteArray *)bs
                           withInt:(jint)off;

+ (IOSByteArray *)intToLittleEndianWithInt:(jint)n;

+ (void)intToLittleEndianWithInt:(jint)n
                   withByteArray:(IOSByteArray *)bs
                         withInt:(jint)off;

+ (IOSByteArray *)intToLittleEndianWithIntArray:(IOSIntArray *)ns;

+ (void)intToLittleEndianWithIntArray:(IOSIntArray *)ns
                        withByteArray:(IOSByteArray *)bs
                              withInt:(jint)off;

+ (jint)littleEndianToIntWithByteArray:(IOSByteArray *)bs
                               withInt:(jint)off;

+ (void)littleEndianToIntWithByteArray:(IOSByteArray *)bs
                               withInt:(jint)off
                          withIntArray:(IOSIntArray *)ns;

+ (void)littleEndianToIntWithByteArray:(IOSByteArray *)bs
                               withInt:(jint)bOff
                          withIntArray:(IOSIntArray *)ns
                               withInt:(jint)nOff
                               withInt:(jint)count;

+ (jlong)littleEndianToLongWithByteArray:(IOSByteArray *)bs
                                 withInt:(jint)off;

+ (void)littleEndianToLongWithByteArray:(IOSByteArray *)bs
                                withInt:(jint)off
                          withLongArray:(IOSLongArray *)ns;

+ (IOSByteArray *)longToBigEndianWithLong:(jlong)n;

+ (void)longToBigEndianWithLong:(jlong)n
                  withByteArray:(IOSByteArray *)bs
                        withInt:(jint)off;

+ (IOSByteArray *)longToBigEndianWithLongArray:(IOSLongArray *)ns;

+ (void)longToBigEndianWithLongArray:(IOSLongArray *)ns
                       withByteArray:(IOSByteArray *)bs
                             withInt:(jint)off;

+ (IOSByteArray *)longToLittleEndianWithLong:(jlong)n;

+ (void)longToLittleEndianWithLong:(jlong)n
                     withByteArray:(IOSByteArray *)bs
                           withInt:(jint)off;

+ (IOSByteArray *)longToLittleEndianWithLongArray:(IOSLongArray *)ns;

+ (void)longToLittleEndianWithLongArray:(IOSLongArray *)ns
                          withByteArray:(IOSByteArray *)bs
                                withInt:(jint)off;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleUtilPack)

FOUNDATION_EXPORT jint OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(IOSByteArray *bs, jint off);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_withIntArray_(IOSByteArray *bs, jint off, IOSIntArray *ns);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_intToBigEndianWithInt_(jint n);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_(jint n, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_intToBigEndianWithIntArray_(IOSIntArray *ns);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_intToBigEndianWithIntArray_withByteArray_withInt_(IOSIntArray *ns, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT jlong OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_(IOSByteArray *bs, jint off);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_withLongArray_(IOSByteArray *bs, jint off, IOSLongArray *ns);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_longToBigEndianWithLong_(jlong n);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(jlong n, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_longToBigEndianWithLongArray_(IOSLongArray *ns);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_longToBigEndianWithLongArray_withByteArray_withInt_(IOSLongArray *ns, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT jint OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_(IOSByteArray *bs, jint off);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_withIntArray_(IOSByteArray *bs, jint off, IOSIntArray *ns);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_littleEndianToIntWithByteArray_withInt_withIntArray_withInt_withInt_(IOSByteArray *bs, jint bOff, IOSIntArray *ns, jint nOff, jint count);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_intToLittleEndianWithInt_(jint n);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_intToLittleEndianWithInt_withByteArray_withInt_(jint n, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_(IOSIntArray *ns);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_intToLittleEndianWithIntArray_withByteArray_withInt_(IOSIntArray *ns, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT jlong OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(IOSByteArray *bs, jint off);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_withLongArray_(IOSByteArray *bs, jint off, IOSLongArray *ns);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_longToLittleEndianWithLong_(jlong n);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_longToLittleEndianWithLong_withByteArray_withInt_(jlong n, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_(IOSLongArray *ns);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_withByteArray_withInt_(IOSLongArray *ns, IOSByteArray *bs, jint off);

FOUNDATION_EXPORT void OrgBouncycastleUtilPack_init(OrgBouncycastleUtilPack *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilPack)


#pragma clang diagnostic pop
#endif // _OrgBouncycastleUtilPack_H_

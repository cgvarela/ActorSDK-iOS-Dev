//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/util/Strings.java
//

#ifndef _OrgBouncycastleUtilStrings_H_
#define _OrgBouncycastleUtilStrings_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;
@class IOSCharArray;
@class IOSObjectArray;

@interface OrgBouncycastleUtilStrings : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Do a simple conversion of an array of 8 bit characters into a string.
 @param bytes 8 bit characters.
 @return resulting String.
 */
+ (IOSCharArray *)asCharArrayWithByteArray:(IOSByteArray *)bytes;

/*!
 @brief Convert an array of 8 bit characters into a string.
 @param bytes 8 bit characters.
 @return resulting String.
 */
+ (NSString *)fromByteArrayWithByteArray:(IOSByteArray *)bytes;

+ (NSString *)fromUTF8ByteArrayWithByteArray:(IOSByteArray *)bytes;

+ (IOSObjectArray *)splitWithNSString:(NSString *)input
                             withChar:(jchar)delimiter;

+ (IOSByteArray *)toByteArrayWithCharArray:(IOSCharArray *)chars;

+ (IOSByteArray *)toByteArrayWithNSString:(NSString *)string;

+ (jint)toByteArrayWithNSString:(NSString *)s
                  withByteArray:(IOSByteArray *)buf
                        withInt:(jint)off;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleUtilStrings)

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilStrings_fromUTF8ByteArrayWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilStrings_toByteArrayWithCharArray_(IOSCharArray *chars);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilStrings_toByteArrayWithNSString_(NSString *string);

FOUNDATION_EXPORT jint OrgBouncycastleUtilStrings_toByteArrayWithNSString_withByteArray_withInt_(NSString *s, IOSByteArray *buf, jint off);

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilStrings_fromByteArrayWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT IOSCharArray *OrgBouncycastleUtilStrings_asCharArrayWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastleUtilStrings_splitWithNSString_withChar_(NSString *input, jchar delimiter);

FOUNDATION_EXPORT void OrgBouncycastleUtilStrings_init(OrgBouncycastleUtilStrings *self);

FOUNDATION_EXPORT OrgBouncycastleUtilStrings *new_OrgBouncycastleUtilStrings_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilStrings)


#pragma clang diagnostic pop
#endif // _OrgBouncycastleUtilStrings_H_
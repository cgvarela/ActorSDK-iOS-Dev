//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/collections/ArrayUtils.java
//

#ifndef _ImActorRuntimeCollectionsArrayUtils_H_
#define _ImActorRuntimeCollectionsArrayUtils_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;

/*!
 @brief ArrayUtils contains some methods that you can call to find out
 the most efficient increments by which to grow arrays.
 */
@interface ARArrayUtils : NSObject

#pragma mark Public

+ (IOSIntArray *)appendIntWithIntArray:(IOSIntArray *)cur
                               withInt:(jint)val;

+ (jboolean)containsWithIntArray:(IOSIntArray *)array
                         withInt:(jint)value;

/*!
 @brief Checks that value is present as at least one of the elements of the array.
 @param array the array to check in
 @param value the value to check for
 @return true if the value is present in the array
 */
+ (jboolean)containsWithNSObjectArray:(IOSObjectArray *)array
                               withId:(id)value;

/*!
 @brief Test if all <code>check</code> items are contained in <code>array</code>.
 */
+ (jboolean)containsAllWithNSObjectArray:(IOSObjectArray *)array
                       withNSObjectArray:(IOSObjectArray *)check;

/*!
 @brief Checks if the beginnings of two byte arrays are equal.
 @param array1 the first byte array
 @param array2 the second byte array
 @param length the number of bytes to check
 @return true if they're equal, false otherwise
 */
+ (jboolean)equalsWithByteArray:(IOSByteArray *)array1
                  withByteArray:(IOSByteArray *)array2
                        withInt:(jint)length;

+ (jint)idealBooleanArraySizeWithInt:(jint)need;

+ (jint)idealByteArraySizeWithInt:(jint)need;

+ (jint)idealCharArraySizeWithInt:(jint)need;

+ (jint)idealFloatArraySizeWithInt:(jint)need;

+ (jint)idealIntArraySizeWithInt:(jint)need;

+ (jint)idealLongArraySizeWithInt:(jint)need;

+ (jint)idealObjectArraySizeWithInt:(jint)need;

+ (jint)idealShortArraySizeWithInt:(jint)need;

/*!
 @brief Return first index of <code>value</code> in <code>array</code>, or <code>-1</code> if
 not found.
 */
+ (jint)indexOfWithNSObjectArray:(IOSObjectArray *)array
                          withId:(id)value;

+ (IOSIntArray *)removeIntWithIntArray:(IOSIntArray *)cur
                               withInt:(jint)val;

+ (jlong)totalWithLongArray:(IOSLongArray *)array;

@end

J2OBJC_STATIC_INIT(ARArrayUtils)

FOUNDATION_EXPORT jint ARArrayUtils_idealByteArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealBooleanArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealShortArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealCharArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealIntArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealFloatArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealObjectArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ARArrayUtils_idealLongArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jboolean ARArrayUtils_equalsWithByteArray_withByteArray_withInt_(IOSByteArray *array1, IOSByteArray *array2, jint length);

FOUNDATION_EXPORT jboolean ARArrayUtils_containsWithNSObjectArray_withId_(IOSObjectArray *array, id value);

FOUNDATION_EXPORT jint ARArrayUtils_indexOfWithNSObjectArray_withId_(IOSObjectArray *array, id value);

FOUNDATION_EXPORT jboolean ARArrayUtils_containsAllWithNSObjectArray_withNSObjectArray_(IOSObjectArray *array, IOSObjectArray *check);

FOUNDATION_EXPORT jboolean ARArrayUtils_containsWithIntArray_withInt_(IOSIntArray *array, jint value);

FOUNDATION_EXPORT jlong ARArrayUtils_totalWithLongArray_(IOSLongArray *array);

FOUNDATION_EXPORT IOSIntArray *ARArrayUtils_appendIntWithIntArray_withInt_(IOSIntArray *cur, jint val);

FOUNDATION_EXPORT IOSIntArray *ARArrayUtils_removeIntWithIntArray_withInt_(IOSIntArray *cur, jint val);

J2OBJC_TYPE_LITERAL_HEADER(ARArrayUtils)

@compatibility_alias ImActorRuntimeCollectionsArrayUtils ARArrayUtils;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeCollectionsArrayUtils_H_

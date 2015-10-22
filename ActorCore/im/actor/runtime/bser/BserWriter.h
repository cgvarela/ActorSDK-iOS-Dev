//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/BserWriter.java
//

#ifndef _ImActorRuntimeBserBserWriter_H_
#define _ImActorRuntimeBserBserWriter_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARBserObject;
@class ARDataOutput;
@class IOSByteArray;
@protocol JavaUtilList;

@interface ARBserWriter : NSObject

#pragma mark Public

- (instancetype)initWithARDataOutput:(ARDataOutput *)stream;

- (void)writeBoolWithInt:(jint)fieldNumber
             withBoolean:(jboolean)value;

- (void)writeBytesWithInt:(jint)fieldNumber
            withByteArray:(IOSByteArray *)value;

- (void)writeDoubleWithInt:(jint)fieldNumber
                withDouble:(jdouble)value;

- (void)writeIntWithInt:(jint)fieldNumber
                withInt:(jint)value;

- (void)writeIntFixedWithInt:(jint)fieldNumber
                     withInt:(jint)value;

- (void)writeLongWithInt:(jint)fieldNumber
                withLong:(jlong)value;

- (void)writeLongFixedWithInt:(jint)fieldNumber
                     withLong:(jlong)value;

- (void)writeObjectWithInt:(jint)fieldNumber
          withARBserObject:(ARBserObject *)value;

- (void)writeRawWithByteArray:(IOSByteArray *)raw;

- (void)writeRepeatedBoolWithInt:(jint)fieldNumber
                withJavaUtilList:(id<JavaUtilList>)values;

- (void)writeRepeatedBytesWithInt:(jint)fieldNumber
                 withJavaUtilList:(id<JavaUtilList>)values;

- (void)writeRepeatedIntWithInt:(jint)fieldNumber
               withJavaUtilList:(id<JavaUtilList>)values;

- (void)writeRepeatedLongWithInt:(jint)fieldNumber
                withJavaUtilList:(id<JavaUtilList>)values;

- (void)writeRepeatedObjWithInt:(jint)fieldNumber
               withJavaUtilList:(id<JavaUtilList>)values;

- (void)writeStringWithInt:(jint)fieldNumber
              withNSString:(NSString *)value;

- (void)writeUnmappedWithInt:(jint)fieldNumber
                      withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ARBserWriter)

FOUNDATION_EXPORT void ARBserWriter_initWithARDataOutput_(ARBserWriter *self, ARDataOutput *stream);

FOUNDATION_EXPORT ARBserWriter *new_ARBserWriter_initWithARDataOutput_(ARDataOutput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARBserWriter)

@compatibility_alias ImActorRuntimeBserBserWriter ARBserWriter;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeBserBserWriter_H_
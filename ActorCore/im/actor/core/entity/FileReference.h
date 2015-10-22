//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/FileReference.java
//

#ifndef _ImActorCoreEntityFileReference_H_
#define _ImActorCoreEntityFileReference_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/entity/WrapperEntity.h"

@class ARApiFileLocation;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ACFileReference : ACWrapperEntity
@property (readonly, nonatomic, getter=getFileSize) jint fileSize;
@property (readonly, copy, nonatomic, getter=getFileName) NSString *fileName;

#pragma mark Public

- (instancetype)initWithARApiFileLocation:(ARApiFileLocation *)fileLocation
                             withNSString:(NSString *)fileName
                                  withInt:(jint)fileSize;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (jboolean)isEqual:(id)o;

- (jlong)getAccessHash;

- (jlong)getFileId;

- (ARApiFileLocation *)getFileLocation;

- (NSString *)getFileName;

- (jint)getFileSize;

- (NSUInteger)hash;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

#pragma mark Protected

- (ARApiFileLocation *)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFileReference)

FOUNDATION_EXPORT void ACFileReference_initWithARApiFileLocation_withNSString_withInt_(ACFileReference *self, ARApiFileLocation *fileLocation, NSString *fileName, jint fileSize);

FOUNDATION_EXPORT ACFileReference *new_ACFileReference_initWithARApiFileLocation_withNSString_withInt_(ARApiFileLocation *fileLocation, NSString *fileName, jint fileSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACFileReference_initWithByteArray_(ACFileReference *self, IOSByteArray *data);

FOUNDATION_EXPORT ACFileReference *new_ACFileReference_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFileReference)

@compatibility_alias ImActorCoreEntityFileReference ACFileReference;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityFileReference_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/files/OutputFile.java
//

#ifndef _ImActorRuntimeFilesOutputFile_H_
#define _ImActorRuntimeFilesOutputFile_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

@protocol AROutputFile < NSObject, JavaObject >

- (jboolean)writeWithOffset:(jint)fileOffset
                   withData:(IOSByteArray *)data
             withDataOffset:(jint)dataOffset
                 withLength:(jint)dataLen;

- (jboolean)close;

@end

J2OBJC_EMPTY_STATIC_INIT(AROutputFile)

J2OBJC_TYPE_LITERAL_HEADER(AROutputFile)

#define ImActorRuntimeFilesOutputFile AROutputFile


#pragma clang diagnostic pop
#endif // _ImActorRuntimeFilesOutputFile_H_

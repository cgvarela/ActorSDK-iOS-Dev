//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/files/FileReadCallback.java
//

#ifndef _ImActorRuntimeFilesFileReadCallback_H_
#define _ImActorRuntimeFilesFileReadCallback_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

@protocol ARFileReadCallback < NSObject, JavaObject >

- (void)onFileReadWithOffset:(jint)fileOffset
                    withData:(IOSByteArray *)data
              withDataOffset:(jint)offset
                  withLength:(jint)len;

- (void)onFileReadError;

@end

J2OBJC_EMPTY_STATIC_INIT(ARFileReadCallback)

J2OBJC_TYPE_LITERAL_HEADER(ARFileReadCallback)

#define ImActorRuntimeFilesFileReadCallback ARFileReadCallback


#pragma clang diagnostic pop
#endif // _ImActorRuntimeFilesFileReadCallback_H_
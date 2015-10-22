//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/FileLocalSource.java
//

#ifndef _ImActorCoreEntityContentFileLocalSource_H_
#define _ImActorCoreEntityContentFileLocalSource_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/entity/content/FileSource.h>

@interface ACFileLocalSource : ACFileSource

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)fileName
                         withInt:(jint)size
                    withNSString:(NSString *)fileDescriptor;

- (NSString *)getFileDescriptor;

- (NSString *)getFileName;

- (jint)getSize;

@end

J2OBJC_EMPTY_STATIC_INIT(ACFileLocalSource)

FOUNDATION_EXPORT void ACFileLocalSource_initWithNSString_withInt_withNSString_(ACFileLocalSource *self, NSString *fileName, jint size, NSString *fileDescriptor);

FOUNDATION_EXPORT ACFileLocalSource *new_ACFileLocalSource_initWithNSString_withInt_withNSString_(NSString *fileName, jint size, NSString *fileDescriptor) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACFileLocalSource)

@compatibility_alias ImActorCoreEntityContentFileLocalSource ACFileLocalSource;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentFileLocalSource_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDDocument.java
//

#ifndef _ImActorRuntimeMarkdownMDDocument_H_
#define _ImActorRuntimeMarkdownMDDocument_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSObjectArray;

@interface ARMDDocument : NSObject

#pragma mark Public

- (instancetype)initWithARMDSectionArray:(IOSObjectArray *)sections;

- (IOSObjectArray *)getSections;

- (jboolean)isTrivial;

- (NSString *)toMarkdown;

@end

J2OBJC_EMPTY_STATIC_INIT(ARMDDocument)

FOUNDATION_EXPORT void ARMDDocument_initWithARMDSectionArray_(ARMDDocument *self, IOSObjectArray *sections);

FOUNDATION_EXPORT ARMDDocument *new_ARMDDocument_initWithARMDSectionArray_(IOSObjectArray *sections) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARMDDocument)

@compatibility_alias ImActorRuntimeMarkdownMDDocument ARMDDocument;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeMarkdownMDDocument_H_
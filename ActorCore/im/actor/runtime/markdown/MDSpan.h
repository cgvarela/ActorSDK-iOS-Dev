//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDSpan.java
//

#ifndef _ImActorRuntimeMarkdownMDSpan_H_
#define _ImActorRuntimeMarkdownMDSpan_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/markdown/MDText.h"

@class IOSObjectArray;

#define ARMDSpan_TYPE_BOLD 0
#define ARMDSpan_TYPE_ITALIC 1
#define ARMDSpan_TYPE_URL 2

@interface ARMDSpan : ARMDText

+ (jint)TYPE_BOLD;

+ (jint)TYPE_ITALIC;

+ (jint)TYPE_URL;

#pragma mark Public

- (instancetype)initWithInt:(jint)spanType
          withARMDTextArray:(IOSObjectArray *)child;

- (IOSObjectArray *)getChild;

- (jint)getSpanType;

- (NSString *)toMarkdown;

@end

J2OBJC_EMPTY_STATIC_INIT(ARMDSpan)

J2OBJC_STATIC_FIELD_GETTER(ARMDSpan, TYPE_BOLD, jint)

J2OBJC_STATIC_FIELD_GETTER(ARMDSpan, TYPE_ITALIC, jint)

J2OBJC_STATIC_FIELD_GETTER(ARMDSpan, TYPE_URL, jint)

FOUNDATION_EXPORT void ARMDSpan_initWithInt_withARMDTextArray_(ARMDSpan *self, jint spanType, IOSObjectArray *child);

FOUNDATION_EXPORT ARMDSpan *new_ARMDSpan_initWithInt_withARMDTextArray_(jint spanType, IOSObjectArray *child) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARMDSpan)

@compatibility_alias ImActorRuntimeMarkdownMDSpan ARMDSpan;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeMarkdownMDSpan_H_

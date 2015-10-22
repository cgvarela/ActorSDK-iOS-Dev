//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTextExMarkdown.java
//

#ifndef _ImActorCoreApiApiTextExMarkdown_H_
#define _ImActorCoreApiApiTextExMarkdown_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/api/ApiTextMessageEx.h"

@class ARBserValues;
@class ARBserWriter;

@interface ARApiTextExMarkdown : ARApiTextMessageEx

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)markdown;

- (jint)getHeader;

- (NSString *)getMarkdown;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiTextExMarkdown)

FOUNDATION_EXPORT void ARApiTextExMarkdown_initWithNSString_(ARApiTextExMarkdown *self, NSString *markdown);

FOUNDATION_EXPORT ARApiTextExMarkdown *new_ARApiTextExMarkdown_initWithNSString_(NSString *markdown) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiTextExMarkdown_init(ARApiTextExMarkdown *self);

FOUNDATION_EXPORT ARApiTextExMarkdown *new_ARApiTextExMarkdown_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiTextExMarkdown)

@compatibility_alias ImActorCoreApiApiTextExMarkdown ARApiTextExMarkdown;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiTextExMarkdown_H_

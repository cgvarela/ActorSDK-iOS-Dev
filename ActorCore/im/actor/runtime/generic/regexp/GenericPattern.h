//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/regexp/GenericPattern.java
//

#ifndef _ImActorRuntimeGenericRegexpGenericPattern_H_
#define _ImActorRuntimeGenericRegexpGenericPattern_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/regexp/PatternCompat.h>

@protocol ImActorRuntimeRegexpMatcherCompat;

@interface ImActorRuntimeGenericRegexpGenericPattern : ImActorRuntimeRegexpPatternCompat

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)pattern;

- (id<ImActorRuntimeRegexpMatcherCompat>)matcherWithNSString:(NSString *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorRuntimeGenericRegexpGenericPattern)

FOUNDATION_EXPORT void ImActorRuntimeGenericRegexpGenericPattern_initWithNSString_(ImActorRuntimeGenericRegexpGenericPattern *self, NSString *pattern);

FOUNDATION_EXPORT ImActorRuntimeGenericRegexpGenericPattern *new_ImActorRuntimeGenericRegexpGenericPattern_initWithNSString_(NSString *pattern) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorRuntimeGenericRegexpGenericPattern)


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericRegexpGenericPattern_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/RegExpRuntime.java
//

#ifndef _ImActorRuntimeRegExpRuntime_H_
#define _ImActorRuntimeRegExpRuntime_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ImActorRuntimeRegexpPatternCompat;

/*!
 @brief Provider for reg exp matching.
 */
@protocol ARRegExpRuntime < NSObject, JavaObject >

/*!
 @brief Creates a new PatternCompat instance
 @param pattern pattern for matching
 @return return compiled pattern
 */
- (ImActorRuntimeRegexpPatternCompat *)getPatternWithPattern:(NSString *)pattern;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRegExpRuntime)

J2OBJC_TYPE_LITERAL_HEADER(ARRegExpRuntime)

#define ImActorRuntimeRegExpRuntime ARRegExpRuntime


#pragma clang diagnostic pop
#endif // _ImActorRuntimeRegExpRuntime_H_

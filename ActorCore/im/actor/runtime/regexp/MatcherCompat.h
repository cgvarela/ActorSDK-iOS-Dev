//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/regexp/MatcherCompat.java
//

#ifndef _ImActorRuntimeRegexpMatcherCompat_H_
#define _ImActorRuntimeRegexpMatcherCompat_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@protocol ImActorRuntimeRegexpMatcherCompat < NSObject, JavaObject >

- (jboolean)hasMatch;

- (jboolean)matches;

- (jint)groupCount;

- (NSString *)group;

- (NSString *)groupWithInt:(jint)index;

- (jint)start;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorRuntimeRegexpMatcherCompat)

J2OBJC_TYPE_LITERAL_HEADER(ImActorRuntimeRegexpMatcherCompat)


#pragma clang diagnostic pop
#endif // _ImActorRuntimeRegexpMatcherCompat_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/GenericRegExpProvider.java
//

#ifndef _ImActorRuntimeGenericGenericRegExpProvider_H_
#define _ImActorRuntimeGenericGenericRegExpProvider_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/RegExpRuntime.h>

@class ImActorRuntimeRegexpPatternCompat;

@interface ARGenericRegExpProvider : NSObject < ARRegExpRuntime >

#pragma mark Public

- (instancetype)init;

- (ImActorRuntimeRegexpPatternCompat *)getPatternWithPattern:(NSString *)pattern;

@end

J2OBJC_EMPTY_STATIC_INIT(ARGenericRegExpProvider)

FOUNDATION_EXPORT void ARGenericRegExpProvider_init(ARGenericRegExpProvider *self);

FOUNDATION_EXPORT ARGenericRegExpProvider *new_ARGenericRegExpProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARGenericRegExpProvider)

@compatibility_alias ImActorRuntimeGenericGenericRegExpProvider ARGenericRegExpProvider;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericGenericRegExpProvider_H_
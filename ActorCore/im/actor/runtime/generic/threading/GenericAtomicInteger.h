//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericAtomicInteger.java
//

#ifndef _ImActorRuntimeGenericThreadingGenericAtomicInteger_H_
#define _ImActorRuntimeGenericThreadingGenericAtomicInteger_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/threading/AtomicIntegerCompat.h"

@interface ARGenericAtomicInteger : ARAtomicIntegerCompat

#pragma mark Public

- (instancetype)initWithInt:(jint)value;

- (void)compareAndSetWithInt:(jint)exp
                     withInt:(jint)v;

- (jint)get;

- (jint)getAndIncrement;

- (jint)incrementAndGet;

- (void)setWithInt:(jint)v;

@end

J2OBJC_EMPTY_STATIC_INIT(ARGenericAtomicInteger)

FOUNDATION_EXPORT void ARGenericAtomicInteger_initWithInt_(ARGenericAtomicInteger *self, jint value);

FOUNDATION_EXPORT ARGenericAtomicInteger *new_ARGenericAtomicInteger_initWithInt_(jint value) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARGenericAtomicInteger)

@compatibility_alias ImActorRuntimeGenericThreadingGenericAtomicInteger ARGenericAtomicInteger;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericThreadingGenericAtomicInteger_H_

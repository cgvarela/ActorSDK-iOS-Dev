//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/ExecuteAfter.java
//

#ifndef _ImActorCoreModulesUpdatesInternalExecuteAfter_H_
#define _ImActorCoreModulesUpdatesInternalExecuteAfter_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@protocol JavaLangRunnable;

@interface ACExecuteAfter : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)seq
       withJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (id<JavaLangRunnable>)getRunnable;

- (jint)getSeq;

@end

J2OBJC_EMPTY_STATIC_INIT(ACExecuteAfter)

FOUNDATION_EXPORT void ACExecuteAfter_initWithInt_withJavaLangRunnable_(ACExecuteAfter *self, jint seq, id<JavaLangRunnable> runnable);

FOUNDATION_EXPORT ACExecuteAfter *new_ACExecuteAfter_initWithInt_withJavaLangRunnable_(jint seq, id<JavaLangRunnable> runnable) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACExecuteAfter)

@compatibility_alias ImActorCoreModulesUpdatesInternalExecuteAfter ACExecuteAfter;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesInternalExecuteAfter_H_

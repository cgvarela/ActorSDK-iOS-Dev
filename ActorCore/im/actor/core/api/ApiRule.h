//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiRule.java
//

#ifndef _ImActorCoreApiApiRule_H_
#define _ImActorCoreApiApiRule_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARApiActionEnum;
@class ARBserValues;
@class ARBserWriter;
@protocol JavaUtilList;

@interface ARApiRule : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiActionEnum:(ARApiActionEnum *)action
                       withJavaUtilList:(id<JavaUtilList>)longValues
                       withJavaUtilList:(id<JavaUtilList>)rawValues;

- (ARApiActionEnum *)getAction;

- (id<JavaUtilList>)getLongValues;

- (id<JavaUtilList>)getRawValues;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiRule)

FOUNDATION_EXPORT void ARApiRule_initWithARApiActionEnum_withJavaUtilList_withJavaUtilList_(ARApiRule *self, ARApiActionEnum *action, id<JavaUtilList> longValues, id<JavaUtilList> rawValues);

FOUNDATION_EXPORT ARApiRule *new_ARApiRule_initWithARApiActionEnum_withJavaUtilList_withJavaUtilList_(ARApiActionEnum *action, id<JavaUtilList> longValues, id<JavaUtilList> rawValues) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiRule_init(ARApiRule *self);

FOUNDATION_EXPORT ARApiRule *new_ARApiRule_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiRule)

@compatibility_alias ImActorCoreApiApiRule ARApiRule;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiRule_H_

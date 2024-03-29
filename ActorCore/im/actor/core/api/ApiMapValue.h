//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiMapValue.java
//

#ifndef _ImActorCoreApiApiMapValue_H_
#define _ImActorCoreApiApiMapValue_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARBserValues;
@class ARBserWriter;
@protocol JavaUtilList;

@interface ARApiMapValue : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)items;

- (id<JavaUtilList>)getItems;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiMapValue)

FOUNDATION_EXPORT void ARApiMapValue_initWithJavaUtilList_(ARApiMapValue *self, id<JavaUtilList> items);

FOUNDATION_EXPORT ARApiMapValue *new_ARApiMapValue_initWithJavaUtilList_(id<JavaUtilList> items) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiMapValue_init(ARApiMapValue *self);

FOUNDATION_EXPORT ARApiMapValue *new_ARApiMapValue_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiMapValue)

@compatibility_alias ImActorCoreApiApiMapValue ARApiMapValue;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiMapValue_H_

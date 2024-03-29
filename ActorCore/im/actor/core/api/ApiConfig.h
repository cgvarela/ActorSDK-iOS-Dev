//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiConfig.java
//

#ifndef _ImActorCoreApiApiConfig_H_
#define _ImActorCoreApiApiConfig_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARBserValues;
@class ARBserWriter;

@interface ARApiConfig : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)maxGroupSize;

- (jint)getMaxGroupSize;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiConfig)

FOUNDATION_EXPORT void ARApiConfig_initWithInt_(ARApiConfig *self, jint maxGroupSize);

FOUNDATION_EXPORT ARApiConfig *new_ARApiConfig_initWithInt_(jint maxGroupSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiConfig_init(ARApiConfig *self);

FOUNDATION_EXPORT ARApiConfig *new_ARApiConfig_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiConfig)

@compatibility_alias ImActorCoreApiApiConfig ARApiConfig;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiConfig_H_

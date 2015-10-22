//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiInt32Value.java
//

#ifndef _ImActorCoreApiApiInt32Value_H_
#define _ImActorCoreApiApiInt32Value_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/api/ApiRawValue.h>

@class ARBserValues;
@class ARBserWriter;

@interface ARApiInt32Value : ARApiRawValue

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)value;

- (jint)getHeader;

- (jint)getValue;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiInt32Value)

FOUNDATION_EXPORT void ARApiInt32Value_initWithInt_(ARApiInt32Value *self, jint value);

FOUNDATION_EXPORT ARApiInt32Value *new_ARApiInt32Value_initWithInt_(jint value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiInt32Value_init(ARApiInt32Value *self);

FOUNDATION_EXPORT ARApiInt32Value *new_ARApiInt32Value_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiInt32Value)

@compatibility_alias ImActorCoreApiApiInt32Value ARApiInt32Value;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiInt32Value_H_
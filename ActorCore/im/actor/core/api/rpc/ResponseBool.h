//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseBool.java
//

#ifndef _ImActorCoreApiRpcResponseBool_H_
#define _ImActorCoreApiRpcResponseBool_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARResponseBool_HEADER 209

@interface ARResponseBool : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)value;

+ (ARResponseBool *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

- (jboolean)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseBool)

J2OBJC_STATIC_FIELD_GETTER(ARResponseBool, HEADER, jint)

FOUNDATION_EXPORT ARResponseBool *ARResponseBool_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseBool_initWithBoolean_(ARResponseBool *self, jboolean value);

FOUNDATION_EXPORT ARResponseBool *new_ARResponseBool_initWithBoolean_(jboolean value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseBool_init(ARResponseBool *self);

FOUNDATION_EXPORT ARResponseBool *new_ARResponseBool_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseBool)

@compatibility_alias ImActorCoreApiRpcResponseBool ARResponseBool;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseBool_H_

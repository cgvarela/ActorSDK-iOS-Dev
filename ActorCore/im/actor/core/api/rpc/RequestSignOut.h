//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestSignOut.java
//

#ifndef _ImActorCoreApiRpcRequestSignOut_H_
#define _ImActorCoreApiRpcRequestSignOut_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestSignOut_HEADER 84

@interface ARRequestSignOut : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

+ (ARRequestSignOut *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestSignOut)

J2OBJC_STATIC_FIELD_GETTER(ARRequestSignOut, HEADER, jint)

FOUNDATION_EXPORT ARRequestSignOut *ARRequestSignOut_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestSignOut_init(ARRequestSignOut *self);

FOUNDATION_EXPORT ARRequestSignOut *new_ARRequestSignOut_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestSignOut)

@compatibility_alias ImActorCoreApiRpcRequestSignOut ARRequestSignOut;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestSignOut_H_

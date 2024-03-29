//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetAuthSessions.java
//

#ifndef _ImActorCoreApiRpcRequestGetAuthSessions_H_
#define _ImActorCoreApiRpcRequestGetAuthSessions_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestGetAuthSessions_HEADER 80

@interface ARRequestGetAuthSessions : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

+ (ARRequestGetAuthSessions *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestGetAuthSessions)

J2OBJC_STATIC_FIELD_GETTER(ARRequestGetAuthSessions, HEADER, jint)

FOUNDATION_EXPORT ARRequestGetAuthSessions *ARRequestGetAuthSessions_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestGetAuthSessions_init(ARRequestGetAuthSessions *self);

FOUNDATION_EXPORT ARRequestGetAuthSessions *new_ARRequestGetAuthSessions_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestGetAuthSessions)

@compatibility_alias ImActorCoreApiRpcRequestGetAuthSessions ARRequestGetAuthSessions;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestGetAuthSessions_H_

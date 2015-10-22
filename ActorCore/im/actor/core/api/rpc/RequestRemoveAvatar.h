//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestRemoveAvatar.java
//

#ifndef _ImActorCoreApiRpcRequestRemoveAvatar_H_
#define _ImActorCoreApiRpcRequestRemoveAvatar_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestRemoveAvatar_HEADER 91

@interface ARRequestRemoveAvatar : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

+ (ARRequestRemoveAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestRemoveAvatar)

J2OBJC_STATIC_FIELD_GETTER(ARRequestRemoveAvatar, HEADER, jint)

FOUNDATION_EXPORT ARRequestRemoveAvatar *ARRequestRemoveAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestRemoveAvatar_init(ARRequestRemoveAvatar *self);

FOUNDATION_EXPORT ARRequestRemoveAvatar *new_ARRequestRemoveAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestRemoveAvatar)

@compatibility_alias ImActorCoreApiRpcRequestRemoveAvatar ARRequestRemoveAvatar;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestRemoveAvatar_H_

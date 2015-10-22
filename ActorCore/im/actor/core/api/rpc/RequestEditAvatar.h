//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditAvatar.java
//

#ifndef _ImActorCoreApiRpcRequestEditAvatar_H_
#define _ImActorCoreApiRpcRequestEditAvatar_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARApiFileLocation;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditAvatar_HEADER 31

@interface ARRequestEditAvatar : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiFileLocation:(ARApiFileLocation *)fileLocation;

+ (ARRequestEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiFileLocation *)getFileLocation;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditAvatar)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditAvatar, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditAvatar *ARRequestEditAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditAvatar_initWithARApiFileLocation_(ARRequestEditAvatar *self, ARApiFileLocation *fileLocation);

FOUNDATION_EXPORT ARRequestEditAvatar *new_ARRequestEditAvatar_initWithARApiFileLocation_(ARApiFileLocation *fileLocation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditAvatar_init(ARRequestEditAvatar *self);

FOUNDATION_EXPORT ARRequestEditAvatar *new_ARRequestEditAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditAvatar)

@compatibility_alias ImActorCoreApiRpcRequestEditAvatar ARRequestEditAvatar;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditAvatar_H_

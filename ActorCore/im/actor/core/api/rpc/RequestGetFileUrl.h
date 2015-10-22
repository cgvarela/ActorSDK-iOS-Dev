//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetFileUrl.java
//

#ifndef _ImActorCoreApiRpcRequestGetFileUrl_H_
#define _ImActorCoreApiRpcRequestGetFileUrl_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARApiFileLocation;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestGetFileUrl_HEADER 77

@interface ARRequestGetFileUrl : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiFileLocation:(ARApiFileLocation *)file;

+ (ARRequestGetFileUrl *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiFileLocation *)getFile;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestGetFileUrl)

J2OBJC_STATIC_FIELD_GETTER(ARRequestGetFileUrl, HEADER, jint)

FOUNDATION_EXPORT ARRequestGetFileUrl *ARRequestGetFileUrl_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestGetFileUrl_initWithARApiFileLocation_(ARRequestGetFileUrl *self, ARApiFileLocation *file);

FOUNDATION_EXPORT ARRequestGetFileUrl *new_ARRequestGetFileUrl_initWithARApiFileLocation_(ARApiFileLocation *file) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestGetFileUrl_init(ARRequestGetFileUrl *self);

FOUNDATION_EXPORT ARRequestGetFileUrl *new_ARRequestGetFileUrl_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestGetFileUrl)

@compatibility_alias ImActorCoreApiRpcRequestGetFileUrl ARRequestGetFileUrl;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestGetFileUrl_H_
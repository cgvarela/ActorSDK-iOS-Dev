//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseLoadWallpappers.java
//

#ifndef _ImActorCoreApiRpcResponseLoadWallpappers_H_
#define _ImActorCoreApiRpcResponseLoadWallpappers_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARResponseLoadWallpappers_HEADER 242

@interface ARResponseLoadWallpappers : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)wallpappers;

+ (ARResponseLoadWallpappers *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getWallpappers;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseLoadWallpappers)

J2OBJC_STATIC_FIELD_GETTER(ARResponseLoadWallpappers, HEADER, jint)

FOUNDATION_EXPORT ARResponseLoadWallpappers *ARResponseLoadWallpappers_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseLoadWallpappers_initWithJavaUtilList_(ARResponseLoadWallpappers *self, id<JavaUtilList> wallpappers);

FOUNDATION_EXPORT ARResponseLoadWallpappers *new_ARResponseLoadWallpappers_initWithJavaUtilList_(id<JavaUtilList> wallpappers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseLoadWallpappers_init(ARResponseLoadWallpappers *self);

FOUNDATION_EXPORT ARResponseLoadWallpappers *new_ARResponseLoadWallpappers_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseLoadWallpappers)

@compatibility_alias ImActorCoreApiRpcResponseLoadWallpappers ARResponseLoadWallpappers;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseLoadWallpappers_H_

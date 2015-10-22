//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestLoadWallpappers.java
//

#ifndef _ImActorCoreApiRpcRequestLoadWallpappers_H_
#define _ImActorCoreApiRpcRequestLoadWallpappers_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestLoadWallpappers_HEADER 241

@interface ARRequestLoadWallpappers : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)maxWidth
                    withInt:(jint)maxHeight;

+ (ARRequestLoadWallpappers *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getMaxHeight;

- (jint)getMaxWidth;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestLoadWallpappers)

J2OBJC_STATIC_FIELD_GETTER(ARRequestLoadWallpappers, HEADER, jint)

FOUNDATION_EXPORT ARRequestLoadWallpappers *ARRequestLoadWallpappers_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestLoadWallpappers_initWithInt_withInt_(ARRequestLoadWallpappers *self, jint maxWidth, jint maxHeight);

FOUNDATION_EXPORT ARRequestLoadWallpappers *new_ARRequestLoadWallpappers_initWithInt_withInt_(jint maxWidth, jint maxHeight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestLoadWallpappers_init(ARRequestLoadWallpappers *self);

FOUNDATION_EXPORT ARRequestLoadWallpappers *new_ARRequestLoadWallpappers_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestLoadWallpappers)

@compatibility_alias ImActorCoreApiRpcRequestLoadWallpappers ARRequestLoadWallpappers;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestLoadWallpappers_H_
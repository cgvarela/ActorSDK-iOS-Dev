//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditAbout.java
//

#ifndef _ImActorCoreApiRpcRequestEditAbout_H_
#define _ImActorCoreApiRpcRequestEditAbout_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditAbout_HEADER 212

@interface ARRequestEditAbout : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)about;

+ (ARRequestEditAbout *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getAbout;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditAbout)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditAbout, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditAbout *ARRequestEditAbout_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditAbout_initWithNSString_(ARRequestEditAbout *self, NSString *about);

FOUNDATION_EXPORT ARRequestEditAbout *new_ARRequestEditAbout_initWithNSString_(NSString *about) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditAbout_init(ARRequestEditAbout *self);

FOUNDATION_EXPORT ARRequestEditAbout *new_ARRequestEditAbout_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditAbout)

@compatibility_alias ImActorCoreApiRpcRequestEditAbout ARRequestEditAbout;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditAbout_H_

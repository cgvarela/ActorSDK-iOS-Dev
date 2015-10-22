//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseEditAvatar.java
//

#ifndef _ImActorCoreApiRpcResponseEditAvatar_H_
#define _ImActorCoreApiRpcResponseEditAvatar_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARApiAvatar;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARResponseEditAvatar_HEADER 103

@interface ARResponseEditAvatar : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiAvatar:(ARApiAvatar *)avatar
                            withInt:(jint)seq
                      withByteArray:(IOSByteArray *)state;

+ (ARResponseEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiAvatar *)getAvatar;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseEditAvatar)

J2OBJC_STATIC_FIELD_GETTER(ARResponseEditAvatar, HEADER, jint)

FOUNDATION_EXPORT ARResponseEditAvatar *ARResponseEditAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseEditAvatar_initWithARApiAvatar_withInt_withByteArray_(ARResponseEditAvatar *self, ARApiAvatar *avatar, jint seq, IOSByteArray *state);

FOUNDATION_EXPORT ARResponseEditAvatar *new_ARResponseEditAvatar_initWithARApiAvatar_withInt_withByteArray_(ARApiAvatar *avatar, jint seq, IOSByteArray *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseEditAvatar_init(ARResponseEditAvatar *self);

FOUNDATION_EXPORT ARResponseEditAvatar *new_ARResponseEditAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseEditAvatar)

@compatibility_alias ImActorCoreApiRpcResponseEditAvatar ARResponseEditAvatar;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseEditAvatar_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditNickName.java
//

#ifndef _ImActorCoreApiRpcRequestEditNickName_H_
#define _ImActorCoreApiRpcRequestEditNickName_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditNickName_HEADER 205

@interface ARRequestEditNickName : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)nickname;

+ (ARRequestEditNickName *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getNickname;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditNickName)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditNickName, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditNickName *ARRequestEditNickName_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditNickName_initWithNSString_(ARRequestEditNickName *self, NSString *nickname);

FOUNDATION_EXPORT ARRequestEditNickName *new_ARRequestEditNickName_initWithNSString_(NSString *nickname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditNickName_init(ARRequestEditNickName *self);

FOUNDATION_EXPORT ARRequestEditNickName *new_ARRequestEditNickName_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditNickName)

@compatibility_alias ImActorCoreApiRpcRequestEditNickName ARRequestEditNickName;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditNickName_H_

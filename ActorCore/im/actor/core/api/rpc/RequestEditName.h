//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditName.java
//

#ifndef _ImActorCoreApiRpcRequestEditName_H_
#define _ImActorCoreApiRpcRequestEditName_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditName_HEADER 53

@interface ARRequestEditName : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)name;

+ (ARRequestEditName *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getName;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditName)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditName, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditName *ARRequestEditName_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditName_initWithNSString_(ARRequestEditName *self, NSString *name);

FOUNDATION_EXPORT ARRequestEditName *new_ARRequestEditName_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditName_init(ARRequestEditName *self);

FOUNDATION_EXPORT ARRequestEditName *new_ARRequestEditName_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditName)

@compatibility_alias ImActorCoreApiRpcRequestEditName ARRequestEditName;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditName_H_

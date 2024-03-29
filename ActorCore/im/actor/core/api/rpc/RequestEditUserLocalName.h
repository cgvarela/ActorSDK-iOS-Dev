//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditUserLocalName.java
//

#ifndef _ImActorCoreApiRpcRequestEditUserLocalName_H_
#define _ImActorCoreApiRpcRequestEditUserLocalName_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditUserLocalName_HEADER 96

@interface ARRequestEditUserLocalName : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name;

+ (ARRequestEditUserLocalName *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getAccessHash;

- (jint)getHeaderKey;

- (NSString *)getName;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditUserLocalName)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditUserLocalName, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditUserLocalName *ARRequestEditUserLocalName_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditUserLocalName_initWithInt_withLong_withNSString_(ARRequestEditUserLocalName *self, jint uid, jlong accessHash, NSString *name);

FOUNDATION_EXPORT ARRequestEditUserLocalName *new_ARRequestEditUserLocalName_initWithInt_withLong_withNSString_(jint uid, jlong accessHash, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditUserLocalName_init(ARRequestEditUserLocalName *self);

FOUNDATION_EXPORT ARRequestEditUserLocalName *new_ARRequestEditUserLocalName_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditUserLocalName)

@compatibility_alias ImActorCoreApiRpcRequestEditUserLocalName ARRequestEditUserLocalName;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditUserLocalName_H_

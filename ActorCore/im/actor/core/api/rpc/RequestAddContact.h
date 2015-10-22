//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestAddContact.java
//

#ifndef _ImActorCoreApiRpcRequestAddContact_H_
#define _ImActorCoreApiRpcRequestAddContact_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestAddContact_HEADER 114

@interface ARRequestAddContact : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash;

+ (ARRequestAddContact *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getAccessHash;

- (jint)getHeaderKey;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestAddContact)

J2OBJC_STATIC_FIELD_GETTER(ARRequestAddContact, HEADER, jint)

FOUNDATION_EXPORT ARRequestAddContact *ARRequestAddContact_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestAddContact_initWithInt_withLong_(ARRequestAddContact *self, jint uid, jlong accessHash);

FOUNDATION_EXPORT ARRequestAddContact *new_ARRequestAddContact_initWithInt_withLong_(jint uid, jlong accessHash) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestAddContact_init(ARRequestAddContact *self);

FOUNDATION_EXPORT ARRequestAddContact *new_ARRequestAddContact_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestAddContact)

@compatibility_alias ImActorCoreApiRpcRequestAddContact ARRequestAddContact;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestAddContact_H_

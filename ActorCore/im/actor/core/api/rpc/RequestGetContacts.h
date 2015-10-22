//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetContacts.java
//

#ifndef _ImActorCoreApiRpcRequestGetContacts_H_
#define _ImActorCoreApiRpcRequestGetContacts_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestGetContacts_HEADER 87

@interface ARRequestGetContacts : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)contactsHash;

+ (ARRequestGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getContactsHash;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestGetContacts)

J2OBJC_STATIC_FIELD_GETTER(ARRequestGetContacts, HEADER, jint)

FOUNDATION_EXPORT ARRequestGetContacts *ARRequestGetContacts_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestGetContacts_initWithNSString_(ARRequestGetContacts *self, NSString *contactsHash);

FOUNDATION_EXPORT ARRequestGetContacts *new_ARRequestGetContacts_initWithNSString_(NSString *contactsHash) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestGetContacts_init(ARRequestGetContacts *self);

FOUNDATION_EXPORT ARRequestGetContacts *new_ARRequestGetContacts_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestGetContacts)

@compatibility_alias ImActorCoreApiRpcRequestGetContacts ARRequestGetContacts;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestGetContacts_H_

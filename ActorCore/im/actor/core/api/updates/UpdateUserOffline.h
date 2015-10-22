//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserOffline.java
//

#ifndef _ImActorCoreApiUpdatesUpdateUserOffline_H_
#define _ImActorCoreApiUpdatesUpdateUserOffline_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Update.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateUserOffline_HEADER 8

@interface ARUpdateUserOffline : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid;

+ (ARUpdateUserOffline *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateUserOffline)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateUserOffline, HEADER, jint)

FOUNDATION_EXPORT ARUpdateUserOffline *ARUpdateUserOffline_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateUserOffline_initWithInt_(ARUpdateUserOffline *self, jint uid);

FOUNDATION_EXPORT ARUpdateUserOffline *new_ARUpdateUserOffline_initWithInt_(jint uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateUserOffline_init(ARUpdateUserOffline *self);

FOUNDATION_EXPORT ARUpdateUserOffline *new_ARUpdateUserOffline_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateUserOffline)

@compatibility_alias ImActorCoreApiUpdatesUpdateUserOffline ARUpdateUserOffline;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateUserOffline_H_

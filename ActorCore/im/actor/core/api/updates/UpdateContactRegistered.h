//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateContactRegistered.java
//

#ifndef _ImActorCoreApiUpdatesUpdateContactRegistered_H_
#define _ImActorCoreApiUpdatesUpdateContactRegistered_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateContactRegistered_HEADER 5

@interface ARUpdateContactRegistered : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
                withBoolean:(jboolean)isSilent
                   withLong:(jlong)date
                   withLong:(jlong)rid;

+ (ARUpdateContactRegistered *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getHeaderKey;

- (jlong)getRid;

- (jint)getUid;

- (jboolean)isSilent;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateContactRegistered)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateContactRegistered, HEADER, jint)

FOUNDATION_EXPORT ARUpdateContactRegistered *ARUpdateContactRegistered_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateContactRegistered_initWithInt_withBoolean_withLong_withLong_(ARUpdateContactRegistered *self, jint uid, jboolean isSilent, jlong date, jlong rid);

FOUNDATION_EXPORT ARUpdateContactRegistered *new_ARUpdateContactRegistered_initWithInt_withBoolean_withLong_withLong_(jint uid, jboolean isSilent, jlong date, jlong rid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateContactRegistered_init(ARUpdateContactRegistered *self);

FOUNDATION_EXPORT ARUpdateContactRegistered *new_ARUpdateContactRegistered_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateContactRegistered)

@compatibility_alias ImActorCoreApiUpdatesUpdateContactRegistered ARUpdateContactRegistered;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateContactRegistered_H_

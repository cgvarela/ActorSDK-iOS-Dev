//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupUserKick.java
//

#ifndef _ImActorCoreApiUpdatesUpdateGroupUserKick_H_
#define _ImActorCoreApiUpdatesUpdateGroupUserKick_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateGroupUserKick_HEADER 24

@interface ARUpdateGroupUserKick : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)kickerUid
                   withLong:(jlong)date;

+ (ARUpdateGroupUserKick *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (jint)getKickerUid;

- (jlong)getRid;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateGroupUserKick)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateGroupUserKick, HEADER, jint)

FOUNDATION_EXPORT ARUpdateGroupUserKick *ARUpdateGroupUserKick_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateGroupUserKick_initWithInt_withLong_withInt_withInt_withLong_(ARUpdateGroupUserKick *self, jint groupId, jlong rid, jint uid, jint kickerUid, jlong date);

FOUNDATION_EXPORT ARUpdateGroupUserKick *new_ARUpdateGroupUserKick_initWithInt_withLong_withInt_withInt_withLong_(jint groupId, jlong rid, jint uid, jint kickerUid, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateGroupUserKick_init(ARUpdateGroupUserKick *self);

FOUNDATION_EXPORT ARUpdateGroupUserKick *new_ARUpdateGroupUserKick_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateGroupUserKick)

@compatibility_alias ImActorCoreApiUpdatesUpdateGroupUserKick ARUpdateGroupUserKick;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateGroupUserKick_H_

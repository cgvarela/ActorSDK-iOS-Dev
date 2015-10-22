//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupUserInvited.java
//

#ifndef _ImActorCoreApiUpdatesUpdateGroupUserInvited_H_
#define _ImActorCoreApiUpdatesUpdateGroupUserInvited_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateGroupUserInvited_HEADER 21

@interface ARUpdateGroupUserInvited : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date;

+ (ARUpdateGroupUserInvited *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (jint)getInviterUid;

- (jlong)getRid;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateGroupUserInvited)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateGroupUserInvited, HEADER, jint)

FOUNDATION_EXPORT ARUpdateGroupUserInvited *ARUpdateGroupUserInvited_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(ARUpdateGroupUserInvited *self, jint groupId, jlong rid, jint uid, jint inviterUid, jlong date);

FOUNDATION_EXPORT ARUpdateGroupUserInvited *new_ARUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateGroupUserInvited_init(ARUpdateGroupUserInvited *self);

FOUNDATION_EXPORT ARUpdateGroupUserInvited *new_ARUpdateGroupUserInvited_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateGroupUserInvited)

@compatibility_alias ImActorCoreApiUpdatesUpdateGroupUserInvited ARUpdateGroupUserInvited;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateGroupUserInvited_H_

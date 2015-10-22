//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupMembersUpdate.java
//

#ifndef _ImActorCoreApiUpdatesUpdateGroupMembersUpdate_H_
#define _ImActorCoreApiUpdatesUpdateGroupMembersUpdate_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARUpdateGroupMembersUpdate_HEADER 44

@interface ARUpdateGroupMembersUpdate : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
           withJavaUtilList:(id<JavaUtilList>)members;

+ (ARUpdateGroupMembersUpdate *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getMembers;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateGroupMembersUpdate)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateGroupMembersUpdate, HEADER, jint)

FOUNDATION_EXPORT ARUpdateGroupMembersUpdate *ARUpdateGroupMembersUpdate_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateGroupMembersUpdate_initWithInt_withJavaUtilList_(ARUpdateGroupMembersUpdate *self, jint groupId, id<JavaUtilList> members);

FOUNDATION_EXPORT ARUpdateGroupMembersUpdate *new_ARUpdateGroupMembersUpdate_initWithInt_withJavaUtilList_(jint groupId, id<JavaUtilList> members) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateGroupMembersUpdate_init(ARUpdateGroupMembersUpdate *self);

FOUNDATION_EXPORT ARUpdateGroupMembersUpdate *new_ARUpdateGroupMembersUpdate_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateGroupMembersUpdate)

@compatibility_alias ImActorCoreApiUpdatesUpdateGroupMembersUpdate ARUpdateGroupMembersUpdate;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateGroupMembersUpdate_H_

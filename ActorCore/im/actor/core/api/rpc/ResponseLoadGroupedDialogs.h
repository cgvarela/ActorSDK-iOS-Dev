//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseLoadGroupedDialogs.java
//

#ifndef _ImActorCoreApiRpcResponseLoadGroupedDialogs_H_
#define _ImActorCoreApiRpcResponseLoadGroupedDialogs_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Response.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARResponseLoadGroupedDialogs_HEADER 226

@interface ARResponseLoadGroupedDialogs : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)dialogs
                    withJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)groups;

+ (ARResponseLoadGroupedDialogs *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getDialogs;

- (id<JavaUtilList>)getGroups;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getUsers;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseLoadGroupedDialogs)

J2OBJC_STATIC_FIELD_GETTER(ARResponseLoadGroupedDialogs, HEADER, jint)

FOUNDATION_EXPORT ARResponseLoadGroupedDialogs *ARResponseLoadGroupedDialogs_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseLoadGroupedDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(ARResponseLoadGroupedDialogs *self, id<JavaUtilList> dialogs, id<JavaUtilList> users, id<JavaUtilList> groups);

FOUNDATION_EXPORT ARResponseLoadGroupedDialogs *new_ARResponseLoadGroupedDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(id<JavaUtilList> dialogs, id<JavaUtilList> users, id<JavaUtilList> groups) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseLoadGroupedDialogs_init(ARResponseLoadGroupedDialogs *self);

FOUNDATION_EXPORT ARResponseLoadGroupedDialogs *new_ARResponseLoadGroupedDialogs_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseLoadGroupedDialogs)

@compatibility_alias ImActorCoreApiRpcResponseLoadGroupedDialogs ARResponseLoadGroupedDialogs;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseLoadGroupedDialogs_H_
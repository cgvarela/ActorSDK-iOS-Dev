//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseEnterGroup.java
//

#ifndef _ImActorCoreApiRpcResponseEnterGroup_H_
#define _ImActorCoreApiRpcResponseEnterGroup_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARApiGroup;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARResponseEnterGroup_HEADER 200

@interface ARResponseEnterGroup : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiGroup:(ARApiGroup *)group
                  withJavaUtilList:(id<JavaUtilList>)users
                          withLong:(jlong)rid
                           withInt:(jint)seq
                     withByteArray:(IOSByteArray *)state
                          withLong:(jlong)date;

+ (ARResponseEnterGroup *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (ARApiGroup *)getGroup;

- (jint)getHeaderKey;

- (jlong)getRid;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (id<JavaUtilList>)getUsers;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseEnterGroup)

J2OBJC_STATIC_FIELD_GETTER(ARResponseEnterGroup, HEADER, jint)

FOUNDATION_EXPORT ARResponseEnterGroup *ARResponseEnterGroup_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseEnterGroup_initWithARApiGroup_withJavaUtilList_withLong_withInt_withByteArray_withLong_(ARResponseEnterGroup *self, ARApiGroup *group, id<JavaUtilList> users, jlong rid, jint seq, IOSByteArray *state, jlong date);

FOUNDATION_EXPORT ARResponseEnterGroup *new_ARResponseEnterGroup_initWithARApiGroup_withJavaUtilList_withLong_withInt_withByteArray_withLong_(ARApiGroup *group, id<JavaUtilList> users, jlong rid, jint seq, IOSByteArray *state, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseEnterGroup_init(ARResponseEnterGroup *self);

FOUNDATION_EXPORT ARResponseEnterGroup *new_ARResponseEnterGroup_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseEnterGroup)

@compatibility_alias ImActorCoreApiRpcResponseEnterGroup ARResponseEnterGroup;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseEnterGroup_H_

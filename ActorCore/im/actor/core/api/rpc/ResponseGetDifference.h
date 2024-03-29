//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetDifference.java
//

#ifndef _ImActorCoreApiRpcResponseGetDifference_H_
#define _ImActorCoreApiRpcResponseGetDifference_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARResponseGetDifference_HEADER 12

@interface ARResponseGetDifference : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups
           withJavaUtilList:(id<JavaUtilList>)updates
                withBoolean:(jboolean)needMore;

+ (ARResponseGetDifference *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getGroups;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (id<JavaUtilList>)getUpdates;

- (id<JavaUtilList>)getUsers;

- (jboolean)needMore;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseGetDifference)

J2OBJC_STATIC_FIELD_GETTER(ARResponseGetDifference, HEADER, jint)

FOUNDATION_EXPORT ARResponseGetDifference *ARResponseGetDifference_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseGetDifference_initWithInt_withByteArray_withJavaUtilList_withJavaUtilList_withJavaUtilList_withBoolean_(ARResponseGetDifference *self, jint seq, IOSByteArray *state, id<JavaUtilList> users, id<JavaUtilList> groups, id<JavaUtilList> updates, jboolean needMore);

FOUNDATION_EXPORT ARResponseGetDifference *new_ARResponseGetDifference_initWithInt_withByteArray_withJavaUtilList_withJavaUtilList_withJavaUtilList_withBoolean_(jint seq, IOSByteArray *state, id<JavaUtilList> users, id<JavaUtilList> groups, id<JavaUtilList> updates, jboolean needMore) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseGetDifference_init(ARResponseGetDifference *self);

FOUNDATION_EXPORT ARResponseGetDifference *new_ARResponseGetDifference_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseGetDifference)

@compatibility_alias ImActorCoreApiRpcResponseGetDifference ARResponseGetDifference;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseGetDifference_H_

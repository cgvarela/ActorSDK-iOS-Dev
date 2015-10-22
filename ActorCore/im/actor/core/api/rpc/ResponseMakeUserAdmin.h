//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseMakeUserAdmin.java
//

#ifndef _ImActorCoreApiRpcResponseMakeUserAdmin_H_
#define _ImActorCoreApiRpcResponseMakeUserAdmin_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Response.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARResponseMakeUserAdmin_HEADER 215

@interface ARResponseMakeUserAdmin : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)members
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state;

+ (ARResponseMakeUserAdmin *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getMembers;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseMakeUserAdmin)

J2OBJC_STATIC_FIELD_GETTER(ARResponseMakeUserAdmin, HEADER, jint)

FOUNDATION_EXPORT ARResponseMakeUserAdmin *ARResponseMakeUserAdmin_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(ARResponseMakeUserAdmin *self, id<JavaUtilList> members, jint seq, IOSByteArray *state);

FOUNDATION_EXPORT ARResponseMakeUserAdmin *new_ARResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(id<JavaUtilList> members, jint seq, IOSByteArray *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseMakeUserAdmin_init(ARResponseMakeUserAdmin *self);

FOUNDATION_EXPORT ARResponseMakeUserAdmin *new_ARResponseMakeUserAdmin_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseMakeUserAdmin)

@compatibility_alias ImActorCoreApiRpcResponseMakeUserAdmin ARResponseMakeUserAdmin;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseMakeUserAdmin_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetPublicGroups.java
//

#ifndef _ImActorCoreApiRpcResponseGetPublicGroups_H_
#define _ImActorCoreApiRpcResponseGetPublicGroups_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Response.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARResponseGetPublicGroups_HEADER 202

@interface ARResponseGetPublicGroups : ACResponse

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups;

+ (ARResponseGetPublicGroups *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getGroups;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARResponseGetPublicGroups)

J2OBJC_STATIC_FIELD_GETTER(ARResponseGetPublicGroups, HEADER, jint)

FOUNDATION_EXPORT ARResponseGetPublicGroups *ARResponseGetPublicGroups_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARResponseGetPublicGroups_initWithJavaUtilList_(ARResponseGetPublicGroups *self, id<JavaUtilList> groups);

FOUNDATION_EXPORT ARResponseGetPublicGroups *new_ARResponseGetPublicGroups_initWithJavaUtilList_(id<JavaUtilList> groups) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARResponseGetPublicGroups_init(ARResponseGetPublicGroups *self);

FOUNDATION_EXPORT ARResponseGetPublicGroups *new_ARResponseGetPublicGroups_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARResponseGetPublicGroups)

@compatibility_alias ImActorCoreApiRpcResponseGetPublicGroups ARResponseGetPublicGroups;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcResponseGetPublicGroups_H_
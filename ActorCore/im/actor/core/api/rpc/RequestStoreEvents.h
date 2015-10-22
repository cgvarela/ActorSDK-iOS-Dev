//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestStoreEvents.java
//

#ifndef _ImActorCoreApiRpcRequestStoreEvents_H_
#define _ImActorCoreApiRpcRequestStoreEvents_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARRequestStoreEvents_HEADER 243

@interface ARRequestStoreEvents : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)events;

+ (ARRequestStoreEvents *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getEvents;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestStoreEvents)

J2OBJC_STATIC_FIELD_GETTER(ARRequestStoreEvents, HEADER, jint)

FOUNDATION_EXPORT ARRequestStoreEvents *ARRequestStoreEvents_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestStoreEvents_initWithJavaUtilList_(ARRequestStoreEvents *self, id<JavaUtilList> events);

FOUNDATION_EXPORT ARRequestStoreEvents *new_ARRequestStoreEvents_initWithJavaUtilList_(id<JavaUtilList> events) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestStoreEvents_init(ARRequestStoreEvents *self);

FOUNDATION_EXPORT ARRequestStoreEvents *new_ARRequestStoreEvents_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestStoreEvents)

@compatibility_alias ImActorCoreApiRpcRequestStoreEvents ARRequestStoreEvents;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestStoreEvents_H_

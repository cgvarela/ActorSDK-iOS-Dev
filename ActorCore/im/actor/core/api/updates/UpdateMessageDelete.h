//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateMessageDelete.java
//

#ifndef _ImActorCoreApiUpdatesUpdateMessageDelete_H_
#define _ImActorCoreApiUpdatesUpdateMessageDelete_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARApiPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ARUpdateMessageDelete_HEADER 46

@interface ARUpdateMessageDelete : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiPeer:(ARApiPeer *)peer
                 withJavaUtilList:(id<JavaUtilList>)rids;

+ (ARUpdateMessageDelete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (ARApiPeer *)getPeer;

- (id<JavaUtilList>)getRids;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateMessageDelete)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateMessageDelete, HEADER, jint)

FOUNDATION_EXPORT ARUpdateMessageDelete *ARUpdateMessageDelete_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateMessageDelete_initWithARApiPeer_withJavaUtilList_(ARUpdateMessageDelete *self, ARApiPeer *peer, id<JavaUtilList> rids);

FOUNDATION_EXPORT ARUpdateMessageDelete *new_ARUpdateMessageDelete_initWithARApiPeer_withJavaUtilList_(ARApiPeer *peer, id<JavaUtilList> rids) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateMessageDelete_init(ARUpdateMessageDelete *self);

FOUNDATION_EXPORT ARUpdateMessageDelete *new_ARUpdateMessageDelete_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateMessageDelete)

@compatibility_alias ImActorCoreApiUpdatesUpdateMessageDelete ARUpdateMessageDelete;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateMessageDelete_H_

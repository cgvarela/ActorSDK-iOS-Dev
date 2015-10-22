//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditGroupTitle.java
//

#ifndef _ImActorCoreApiRpcRequestEditGroupTitle_H_
#define _ImActorCoreApiRpcRequestEditGroupTitle_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Request.h>

@class ARApiGroupOutPeer;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestEditGroupTitle_HEADER 85

@interface ARRequestEditGroupTitle : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                 withLong:(jlong)rid
                             withNSString:(NSString *)title;

+ (ARRequestEditGroupTitle *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiGroupOutPeer *)getGroupPeer;

- (jint)getHeaderKey;

- (jlong)getRid;

- (NSString *)getTitle;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestEditGroupTitle)

J2OBJC_STATIC_FIELD_GETTER(ARRequestEditGroupTitle, HEADER, jint)

FOUNDATION_EXPORT ARRequestEditGroupTitle *ARRequestEditGroupTitle_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestEditGroupTitle_initWithARApiGroupOutPeer_withLong_withNSString_(ARRequestEditGroupTitle *self, ARApiGroupOutPeer *groupPeer, jlong rid, NSString *title);

FOUNDATION_EXPORT ARRequestEditGroupTitle *new_ARRequestEditGroupTitle_initWithARApiGroupOutPeer_withLong_withNSString_(ARApiGroupOutPeer *groupPeer, jlong rid, NSString *title) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestEditGroupTitle_init(ARRequestEditGroupTitle *self);

FOUNDATION_EXPORT ARRequestEditGroupTitle *new_ARRequestEditGroupTitle_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestEditGroupTitle)

@compatibility_alias ImActorCoreApiRpcRequestEditGroupTitle ARRequestEditGroupTitle;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestEditGroupTitle_H_
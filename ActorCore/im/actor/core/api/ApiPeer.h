//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiPeer.java
//

#ifndef _ImActorCoreApiApiPeer_H_
#define _ImActorCoreApiApiPeer_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARApiPeerTypeEnum;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiPeer : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiPeerTypeEnum:(ARApiPeerTypeEnum *)type
                                  withInt:(jint)id_;

- (jint)getId;

- (ARApiPeerTypeEnum *)getType;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiPeer)

FOUNDATION_EXPORT void ARApiPeer_initWithARApiPeerTypeEnum_withInt_(ARApiPeer *self, ARApiPeerTypeEnum *type, jint id_);

FOUNDATION_EXPORT ARApiPeer *new_ARApiPeer_initWithARApiPeerTypeEnum_withInt_(ARApiPeerTypeEnum *type, jint id_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiPeer_init(ARApiPeer *self);

FOUNDATION_EXPORT ARApiPeer *new_ARApiPeer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiPeer)

@compatibility_alias ImActorCoreApiApiPeer ARApiPeer;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiPeer_H_

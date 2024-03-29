//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Avatar.java
//

#ifndef _ImActorCoreEntityAvatar_H_
#define _ImActorCoreEntityAvatar_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/entity/WrapperEntity.h"

@class ACAvatarImage;
@class ARApiAvatar;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ACAvatar : ACWrapperEntity
@property (readonly, nonatomic, getter=getSmallImage) ACAvatarImage *smallImage;
@property (readonly, nonatomic, getter=getLargeImage) ACAvatarImage *largeImage;
@property (readonly, nonatomic, getter=getFullImage) ACAvatarImage *fullImage;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiAvatar:(ARApiAvatar *)wrapped;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (jboolean)isEqual:(id)o;

- (ACAvatarImage *)getFullImage;

- (ACAvatarImage *)getLargeImage;

- (ACAvatarImage *)getSmallImage;

- (NSUInteger)hash;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

#pragma mark Protected

- (void)applyWrappedWithARBserObject:(ARApiAvatar *)wrapped;

- (ARApiAvatar *)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAvatar)

FOUNDATION_EXPORT void ACAvatar_initWithARApiAvatar_(ACAvatar *self, ARApiAvatar *wrapped);

FOUNDATION_EXPORT ACAvatar *new_ACAvatar_initWithARApiAvatar_(ARApiAvatar *wrapped) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACAvatar_initWithByteArray_(ACAvatar *self, IOSByteArray *data);

FOUNDATION_EXPORT ACAvatar *new_ACAvatar_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACAvatar_init(ACAvatar *self);

FOUNDATION_EXPORT ACAvatar *new_ACAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAvatar)

@compatibility_alias ImActorCoreEntityAvatar ACAvatar;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityAvatar_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/internal/AbsLocalContent.java
//

#ifndef _ImActorCoreEntityContentInternalAbsLocalContent_H_
#define _ImActorCoreEntityContentInternalAbsLocalContent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class IOSByteArray;

@interface ACAbsLocalContent : ARBserObject

#pragma mark Public

- (instancetype)init;

- (IOSByteArray *)buildContainer;

+ (ACAbsLocalContent *)loadContainerWithByteArray:(IOSByteArray *)data;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAbsLocalContent)

FOUNDATION_EXPORT ACAbsLocalContent *ACAbsLocalContent_loadContainerWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ACAbsLocalContent_init(ACAbsLocalContent *self);

J2OBJC_TYPE_LITERAL_HEADER(ACAbsLocalContent)

@compatibility_alias ImActorCoreEntityContentInternalAbsLocalContent ACAbsLocalContent;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentInternalAbsLocalContent_H_

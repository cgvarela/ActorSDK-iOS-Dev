//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/internal/ContentRemoteContainer.java
//

#ifndef _ImActorCoreEntityContentInternalContentRemoteContainer_H_
#define _ImActorCoreEntityContentInternalContentRemoteContainer_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/entity/content/internal/AbsContentContainer.h>

@class ARApiMessage;

@interface ACContentRemoteContainer : ACAbsContentContainer

#pragma mark Public

- (instancetype)initWithARApiMessage:(ARApiMessage *)message;

- (ARApiMessage *)getMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(ACContentRemoteContainer)

FOUNDATION_EXPORT void ACContentRemoteContainer_initWithARApiMessage_(ACContentRemoteContainer *self, ARApiMessage *message);

FOUNDATION_EXPORT ACContentRemoteContainer *new_ACContentRemoteContainer_initWithARApiMessage_(ARApiMessage *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACContentRemoteContainer)

@compatibility_alias ImActorCoreEntityContentInternalContentRemoteContainer ACContentRemoteContainer;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentInternalContentRemoteContainer_H_

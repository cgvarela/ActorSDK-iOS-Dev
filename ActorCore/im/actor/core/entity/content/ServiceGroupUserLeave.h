//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupUserLeave.java
//

#ifndef _ImActorCoreEntityContentServiceGroupUserLeave_H_
#define _ImActorCoreEntityContentServiceGroupUserLeave_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/entity/content/ServiceContent.h>

@class ACContentRemoteContainer;

@interface ACServiceGroupUserLeave : ACServiceContent

#pragma mark Public

- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)contentContainer;

+ (ACServiceGroupUserLeave *)create;

@end

J2OBJC_EMPTY_STATIC_INIT(ACServiceGroupUserLeave)

FOUNDATION_EXPORT ACServiceGroupUserLeave *ACServiceGroupUserLeave_create();

FOUNDATION_EXPORT void ACServiceGroupUserLeave_initWithACContentRemoteContainer_(ACServiceGroupUserLeave *self, ACContentRemoteContainer *contentContainer);

FOUNDATION_EXPORT ACServiceGroupUserLeave *new_ACServiceGroupUserLeave_initWithACContentRemoteContainer_(ACContentRemoteContainer *contentContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACServiceGroupUserLeave)

@compatibility_alias ImActorCoreEntityContentServiceGroupUserLeave ACServiceGroupUserLeave;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentServiceGroupUserLeave_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupUserJoined.java
//

#ifndef _ImActorCoreEntityContentServiceGroupUserJoined_H_
#define _ImActorCoreEntityContentServiceGroupUserJoined_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/entity/content/ServiceContent.h"

@class ACContentRemoteContainer;

@interface ACServiceGroupUserJoined : ACServiceContent

#pragma mark Public

- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)contentContainer;

+ (ACServiceGroupUserJoined *)create;

@end

J2OBJC_EMPTY_STATIC_INIT(ACServiceGroupUserJoined)

FOUNDATION_EXPORT ACServiceGroupUserJoined *ACServiceGroupUserJoined_create();

FOUNDATION_EXPORT void ACServiceGroupUserJoined_initWithACContentRemoteContainer_(ACServiceGroupUserJoined *self, ACContentRemoteContainer *contentContainer);

FOUNDATION_EXPORT ACServiceGroupUserJoined *new_ACServiceGroupUserJoined_initWithACContentRemoteContainer_(ACContentRemoteContainer *contentContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACServiceGroupUserJoined)

@compatibility_alias ImActorCoreEntityContentServiceGroupUserJoined ACServiceGroupUserJoined;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentServiceGroupUserJoined_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/internal/ContentLocalContainer.java
//

#ifndef _ImActorCoreEntityContentInternalContentLocalContainer_H_
#define _ImActorCoreEntityContentInternalContentLocalContainer_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/entity/content/internal/AbsContentContainer.h"

@class ACAbsLocalContent;

@interface ACContentLocalContainer : ACAbsContentContainer

#pragma mark Public

- (instancetype)initWithACAbsLocalContent:(ACAbsLocalContent *)content;

- (ACAbsLocalContent *)getContent;

@end

J2OBJC_EMPTY_STATIC_INIT(ACContentLocalContainer)

FOUNDATION_EXPORT void ACContentLocalContainer_initWithACAbsLocalContent_(ACContentLocalContainer *self, ACAbsLocalContent *content);

FOUNDATION_EXPORT ACContentLocalContainer *new_ACContentLocalContainer_initWithACAbsLocalContent_(ACAbsLocalContent *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACContentLocalContainer)

@compatibility_alias ImActorCoreEntityContentInternalContentLocalContainer ACContentLocalContainer;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentInternalContentLocalContainer_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/internal/AbsContentContainer.java
//

#ifndef _ImActorCoreEntityContentInternalAbsContentContainer_H_
#define _ImActorCoreEntityContentInternalAbsContentContainer_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

@interface ACAbsContentContainer : NSObject

#pragma mark Public

- (instancetype)init;

- (IOSByteArray *)buildContainer;

+ (ACAbsContentContainer *)loadContainerWithByteArray:(IOSByteArray *)data;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAbsContentContainer)

FOUNDATION_EXPORT ACAbsContentContainer *ACAbsContentContainer_loadContainerWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ACAbsContentContainer_init(ACAbsContentContainer *self);

J2OBJC_TYPE_LITERAL_HEADER(ACAbsContentContainer)

@compatibility_alias ImActorCoreEntityContentInternalAbsContentContainer ACAbsContentContainer;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentInternalAbsContentContainer_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/OwnAvatarVM.java
//

#ifndef _ImActorCoreViewmodelOwnAvatarVM_H_
#define _ImActorCoreViewmodelOwnAvatarVM_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARValueModel;

/*!
 @brief Current user Avatar View Model
 */
@interface ACOwnAvatarVM : NSObject
@property (readonly, nonatomic, getter=getUploadState) ARValueModel *uploadState;

#pragma mark Public

- (instancetype)init;

/*!
 @brief Get Upload State Value Model
 @return ValueModel of AvatarUploadState
 */
- (ARValueModel *)getUploadState;

@end

J2OBJC_EMPTY_STATIC_INIT(ACOwnAvatarVM)

FOUNDATION_EXPORT void ACOwnAvatarVM_init(ACOwnAvatarVM *self);

FOUNDATION_EXPORT ACOwnAvatarVM *new_ACOwnAvatarVM_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACOwnAvatarVM)

@compatibility_alias ImActorCoreViewmodelOwnAvatarVM ACOwnAvatarVM;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelOwnAvatarVM_H_

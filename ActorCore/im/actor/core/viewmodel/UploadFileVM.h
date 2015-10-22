//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/UploadFileVM.java
//

#ifndef _ImActorCoreViewmodelUploadFileVM_H_
#define _ImActorCoreViewmodelUploadFileVM_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/mvvm/AsyncVM.h"

@class ACModules;
@protocol ACUploadFileVMCallback;

/*!
 @brief Value Model handler for Uploading File.
 <p></p>
 Create by calling method in Messenger object and ALWAYS release by calling detach method.
 */
@interface ACUploadFileVM : ARAsyncVM

#pragma mark Public

/*!
 @brief <p>INTERNAL API</p>
 Create UploadFileVM
 @param rid        file random id
 @param vmCallback file value model callback
 @param modules    im.actor.android.modules reference
 */
- (instancetype)initWithLong:(jlong)rid
  withACUploadFileVMCallback:(id<ACUploadFileVMCallback>)vmCallback
               withACModules:(ACModules *)modules;

/*!
 @brief Detach UploadFileVM from Messenger.
 Don't use object after detaching.
 */
- (void)detach;

#pragma mark Protected

- (void)onObjectReceivedWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(ACUploadFileVM)

FOUNDATION_EXPORT void ACUploadFileVM_initWithLong_withACUploadFileVMCallback_withACModules_(ACUploadFileVM *self, jlong rid, id<ACUploadFileVMCallback> vmCallback, ACModules *modules);

FOUNDATION_EXPORT ACUploadFileVM *new_ACUploadFileVM_initWithLong_withACUploadFileVMCallback_withACModules_(jlong rid, id<ACUploadFileVMCallback> vmCallback, ACModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACUploadFileVM)

@compatibility_alias ImActorCoreViewmodelUploadFileVM ACUploadFileVM;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelUploadFileVM_H_

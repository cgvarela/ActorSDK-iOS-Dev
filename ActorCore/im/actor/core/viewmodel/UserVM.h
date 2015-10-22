//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/UserVM.java
//

#ifndef _ImActorCoreViewmodelUserVM_H_
#define _ImActorCoreViewmodelUserVM_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/mvvm/BaseValueModel.h"

@class ACAvatarValueModel;
@class ACBooleanValueModel;
@class ACSexEnum;
@class ACStringValueModel;
@class ACUser;
@class ACValueModelContactRecord;
@class ACValueModelUserEmail;
@class ACValueModelUserLink;
@class ACValueModelUserPhone;
@class ACValueModelUserPresence;
@protocol ACModuleContext;
@protocol ARModelChangedListener;
@protocol ARValueModelCreator;

/*!
 @brief User View Model
 */
@interface ACUserVM : ARBaseValueModel

#pragma mark Public

/*!
 @brief <p>INTERNAL API</p>
 Create User View Model
 @param user    Initial User value
 @param modules im.actor.android.modules reference
 */
- (instancetype)initWithACUser:(ACUser *)user
           withACModuleContext:(id<ACModuleContext>)modules;

+ (id<ARValueModelCreator>)CREATORWithACModuleContext:(id<ACModuleContext>)modules;

/*!
 @brief Get User about Value Model
 @return ValueModel of String
 */
- (ACStringValueModel *)getAboutModel;

/*!
 @brief Get User Avatar Value Model
 @return ValueModel of Avatar
 */
- (ACAvatarValueModel *)getAvatarModel;

/*!
 @brief Get User Contact records
 @return ValueModel of ArrayList of ContactRecord
 */
- (ACValueModelContactRecord *)getContactsModel;

/*!
 @brief Get User Email addresses
 @return ValueModel of ArrayList of UserEmail
 */
- (ACValueModelUserEmail *)getEmailsModel;

/*!
 @brief Get User Id
 @return user Id
 */
- (jint)getId;

/*!
 @brief Get User web links
 @return ValueModel of ArrayList of UserLink
 */
- (ACValueModelUserLink *)getLinksModel;

/*!
 @brief Get User Local Name Value Model
 @return ValueModel of String
 */
- (ACStringValueModel *)getLocalNameModel;

/*!
 @brief Get User Name Value Model
 @return ValueModel of String
 */
- (ACStringValueModel *)getNameModel;

/*!
 @brief Get User nick Value Model
 @return ValueModel of String
 */
- (ACStringValueModel *)getNickModel;

/*!
 @brief Get Users Phone numbers
 @return ValueModel of ArrayList of UserPhone
 */
- (ACValueModelUserPhone *)getPhonesModel;

/*!
 @brief Get ValueModel of User Presence
 @return ValueModel of UserPresence
 */
- (ACValueModelUserPresence *)getPresenceModel;

/*!
 @brief Get User Server Name Value Model
 @return ValueModel of String
 */
- (ACStringValueModel *)getServerNameModel;

/*!
 @brief Get User Sex
 @return User Sex
 */
- (ACSexEnum *)getSex;

/*!
 @brief Is User actually bot
 @return is User bot
 */
- (jboolean)isBot;

/*!
 @brief Get ValueModel of flag if user is in contact list
 @return ValueModel of Boolean
 */
- (ACBooleanValueModel *)isContactModel;

/*!
 @brief Subscribe to UserVM updates
 @param listener UserVM changed listener
 */
- (void)subscribeWithListener:(id<ARModelChangedListener>)listener;

/*!
 @brief Subscribe to UserVM updates
 @param listener UserVM changed listener
 */
- (void)subscribeWithListener:(id<ARModelChangedListener>)listener
                   withNotify:(jboolean)notify;

/*!
 @brief Unsubscribe from UserVM
 @param listener UserVM changed listener
 */
- (void)unsubscribeWithListener:(id<ARModelChangedListener>)listener;

#pragma mark Protected

- (void)updateValuesWithId:(ACUser *)rawObj;

@end

J2OBJC_EMPTY_STATIC_INIT(ACUserVM)

FOUNDATION_EXPORT id<ARValueModelCreator> ACUserVM_CREATORWithACModuleContext_(id<ACModuleContext> modules);

FOUNDATION_EXPORT void ACUserVM_initWithACUser_withACModuleContext_(ACUserVM *self, ACUser *user, id<ACModuleContext> modules);

FOUNDATION_EXPORT ACUserVM *new_ACUserVM_initWithACUser_withACModuleContext_(ACUser *user, id<ACModuleContext> modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACUserVM)

@compatibility_alias ImActorCoreViewmodelUserVM ACUserVM;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelUserVM_H_

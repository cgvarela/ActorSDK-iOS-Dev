//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/GroupVM.java
//

#ifndef _ImActorCoreViewmodelGroupVM_H_
#define _ImActorCoreViewmodelGroupVM_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/mvvm/BaseValueModel.h>

@class ACAvatarValueModel;
@class ACBooleanValueModel;
@class ACGroup;
@class ACStringValueModel;
@class ARValueModel;
@protocol ARModelChangedListener;
@protocol ARValueModelCreator;

/*!
 @brief Group View Model
 */
@interface ACGroupVM : ARBaseValueModel
@property (readonly, nonatomic) jint groupId;
@property (readonly, nonatomic, getter=getCreatorId) jint creatorId;
@property (readonly, nonatomic, getter=getAvatar) ACAvatarValueModel *avatar;
@property (readonly, nonatomic, getter=getName) ACStringValueModel *name;
@property (readonly, nonatomic, getter=isMember) ACBooleanValueModel *isMember;
@property (readonly, nonatomic, getter=getMembers) ARValueModel *members;
@property (readonly, nonatomic, getter=getPresence) ARValueModel *presence;
@property (readonly, nonatomic, getter=getTheme) ACStringValueModel *theme;
@property (readonly, nonatomic, getter=getAbout) ACStringValueModel *about;

+ (id<ARValueModelCreator>)CREATOR;

+ (void)setCREATOR:(id<ARValueModelCreator>)value;

#pragma mark Public

/*!
 @brief <p>INTERNAL API</p>
 Create Group View Model
 @param rawObj initial value of Group
 */
- (instancetype)initWithACGroup:(ACGroup *)rawObj;

/*!
 @brief Get About Value Model
 @return Value Model of String
 */
- (ACStringValueModel *)getAboutModel;

/*!
 @brief Get Avatar Value Model
 @return Value Model of Avatar
 */
- (ACAvatarValueModel *)getAvatarModel;

/*!
 @brief Get Group creator user id
 @return creator user id
 */
- (jint)getCreatorId;

/*!
 @brief Get Group Id
 @return Group Id
 */
- (jint)getId;

/*!
 @brief Get members Value Model
 @return Value Model of HashSet of GroupMember
 */
- (ARValueModel *)getMembersModel;

/*!
 @brief Get Group members count
 @return members count
 */
- (jint)getMembersCount;

/*!
 @brief Get Name Value Model
 @return Value Model of String
 */
- (ACStringValueModel *)getNameModel;

/*!
 @brief Get Online Value Model
 @return Value Model of Integer
 */
- (ARValueModel *)getPresenceModel;

/*!
 @brief Get Theme Value Model
 @return Value Model of String
 */
- (ACStringValueModel *)getThemeModel;

/*!
 @brief Get membership Value Model
 @return Value Model of Boolean
 */
- (ACBooleanValueModel *)isMemberModel;

/*!
 @brief Subscribe for GroupVM updates
 @param listener Listener for updates
 */
- (void)subscribeWithListener:(id<ARModelChangedListener>)listener;

/*!
 @brief Subscribe for GroupVM updates
 @param listener Listener for updates
 */
- (void)subscribeWithListener:(id<ARModelChangedListener>)listener
                   withNotify:(jboolean)notify;

/*!
 @brief Unsubscribe from GroupVM updates
 @param listener Listener for updates
 */
- (void)unsubscribeWithListener:(id<ARModelChangedListener>)listener;

#pragma mark Protected

- (void)updateValuesWithId:(ACGroup *)rawObj;

@end

J2OBJC_STATIC_INIT(ACGroupVM)

FOUNDATION_EXPORT id<ARValueModelCreator> ACGroupVM_CREATOR_;
J2OBJC_STATIC_FIELD_GETTER(ACGroupVM, CREATOR_, id<ARValueModelCreator>)
J2OBJC_STATIC_FIELD_SETTER(ACGroupVM, CREATOR_, id<ARValueModelCreator>)

FOUNDATION_EXPORT void ACGroupVM_initWithACGroup_(ACGroupVM *self, ACGroup *rawObj);

FOUNDATION_EXPORT ACGroupVM *new_ACGroupVM_initWithACGroup_(ACGroup *rawObj) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACGroupVM)

@compatibility_alias ImActorCoreViewmodelGroupVM ACGroupVM;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGroupVM_H_

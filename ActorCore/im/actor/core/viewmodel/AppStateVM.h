//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/AppStateVM.java
//

#ifndef _ImActorCoreViewmodelAppStateVM_H_
#define _ImActorCoreViewmodelAppStateVM_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACBooleanValueModel;
@class ACIntValueModel;
@protocol ACModuleContext;

/*!
 @brief Application initialization View Model
 */
@interface ACAppStateVM : NSObject
@property (readonly, nonatomic) id<ACModuleContext> context;
@property (readonly, nonatomic, getter=getIsAppVisible) ACBooleanValueModel *isAppVisible;
@property (readonly, nonatomic, getter=getIsDialogsEmpty) ACBooleanValueModel *isDialogsEmpty;
@property (readonly, nonatomic, getter=getIsContactsEmpty) ACBooleanValueModel *isContactsEmpty;
@property (readonly, nonatomic, getter=getIsAppEmpty) ACBooleanValueModel *isAppEmpty;
@property (readonly, nonatomic, getter=getIsAppLoaded) ACBooleanValueModel *isAppLoaded;
@property (readonly, nonatomic, getter=getIsConnecting) ACBooleanValueModel *isConnecting;
@property (readonly, nonatomic, getter=getIsSyncing) ACBooleanValueModel *isSyncing;
@property (readonly, nonatomic, getter=getGlobalCounter) ACIntValueModel *globalCounter;
@property (readonly, nonatomic, getter=getGlobalTempCounter) ACIntValueModel *globalTempCounter;

#pragma mark Public

/*!
 @brief Constructor of View Model
 @param context Messenger im.actor.android.modules
 */
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

/*!
 @brief Gettting global unread counter
 @return View Model of Integer
 */
- (ACIntValueModel *)getGlobalCounter;

/*!
 @brief Getting global unread counter that hiddes when app is opened
 @return View Model of Integer
 */
- (ACIntValueModel *)getGlobalTempCounter;

/*!
 @brief App empty View Model
 @return View Model of Boolean
 */
- (ACBooleanValueModel *)getIsAppEmpty;

/*!
 @brief App loaded View Model
 @return Value Model of Boolean
 */
- (ACBooleanValueModel *)getIsAppLoaded;

/*!
 @brief Is App visible state
 @return View Model of Boolean
 */
- (ACBooleanValueModel *)getIsAppVisible;

/*!
 @brief Is Connecting in progress
 @return View Model of Boolean
 */
- (ACBooleanValueModel *)getIsConnecting;

/*!
 @brief Contacts empty View Model
 @return Value Model of Boolean
 */
- (ACBooleanValueModel *)getIsContactsEmpty;

/*!
 @brief Dialogs empty View Model
 @return Value Model of Boolean
 */
- (ACBooleanValueModel *)getIsDialogsEmpty;

/*!
 @brief Is syncing in progress
 @return View Model of Boolean
 */
- (ACBooleanValueModel *)getIsSyncing;

/*!
 @brief Notify from Modules about contacts state changed
 @param isEmpty is contacts empty
 */
- (void)onContactsChangedWithBoolean:(jboolean)isEmpty;

/*!
 @brief Notify from Modules about contacts load completed
 */
- (void)onContactsLoaded;

/*!
 @brief Notify from Modules about dialogs state changed
 @param isEmpty is dialogs empty
 */
- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty;

/*!
 @brief Notify from Modules about dialog load completed
 */
- (void)onDialogsLoaded;

/*!
 @brief Notify from Modules about global counters changed
 @param value current value of global counter
 */
- (void)onGlobalCounterChangedWithInt:(jint)value;

/*!
 @brief Notify from Modules about phone import completed
 */
- (void)onPhoneImported;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAppStateVM)

FOUNDATION_EXPORT void ACAppStateVM_initWithACModuleContext_(ACAppStateVM *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACAppStateVM *new_ACAppStateVM_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAppStateVM)

@compatibility_alias ImActorCoreViewmodelAppStateVM ACAppStateVM;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelAppStateVM_H_
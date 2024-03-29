//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/Messenger.java
//

#ifndef _ImActorCoreMessenger_H_
#define _ImActorCoreMessenger_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACAppStateVM;
@class ACAuthStateEnum;
@class ACConfiguration;
@class ACDialogGroupsVM;
@class ACFastThumb;
@class ACFileReference;
@class ACFileVM;
@class ACGroupAvatarVM;
@class ACGroupVM;
@class ACI18nEngine;
@class ACModules;
@class ACNetworkStateEnum;
@class ACOwnAvatarVM;
@class ACPeer;
@class ACSexEnum;
@class ACUploadFileVM;
@class ACUserVM;
@class ARMVVMCollection;
@class ARValueModel;
@class IOSIntArray;
@class IOSLongArray;
@class JavaUtilArrayList;
@protocol ACCommand;
@protocol ACFileCallback;
@protocol ACFileVMCallback;
@protocol ACModuleContext;
@protocol ACUploadFileCallback;
@protocol ACUploadFileVMCallback;
@protocol ARPreferencesStorage;
@protocol JavaUtilList;

/*!
 @brief Entry point to Actor Messaging
 Before using Messenger you need to create Configuration object by using ConfigurationBuilder.
 */
@interface ACMessenger : NSObject {
 @public
  ACModules *modules_;
}

#pragma mark Public

/*!
 @brief Construct messenger
 @param configuration configuration of messenger
 */
- (instancetype)initWithConfiguration:(ACConfiguration *)configuration;

/*!
 @brief Add contact to contact's list
 @param uid user's id
 @return Command for execution
 */
- (id<ACCommand>)addContactCommandWithUid:(jint)uid;

/*!
 @brief Bind File View Model
 @param fileReference reference to file
 @param isAutoStart   automatically start download
 @param callback      View Model file state callback
 @return File View Model
 */
- (ACFileVM *)bindFileWithReference:(ACFileReference *)fileReference
                          autoStart:(jboolean)isAutoStart
                       withCallback:(id<ACFileVMCallback>)callback;

/*!
 @brief Raw Bind File
 @param fileReference reference to file
 @param isAutoStart   automatically start download
 @param callback      file state callback
 */
- (void)bindRawFileWithReference:(ACFileReference *)fileReference
                       autoStart:(jboolean)isAutoStart
                    withCallback:(id<ACFileCallback>)callback;

/*!
 @brief Raw Bind Upload File
 @param rid      randomId of uploading file
 @param callback file state callback
 */
- (void)bindRawUploadFileWithRid:(jlong)rid
                    withCallback:(id<ACUploadFileCallback>)callback;

/*!
 @brief Bind Uploading File View Model
 @param rid      randomId of uploading file
 @param callback View Model file state callback
 @return Upload File View Model
 */
- (ACUploadFileVM *)bindUploadWithRid:(jlong)rid
                         withCallback:(id<ACUploadFileVMCallback>)callback;

/*!
 @brief Cancel file download
 @param fileId file's id
 */
- (void)cancelDownloadingWithFileId:(jlong)fileId;

/*!
 @brief Change conversation tones enabled value
 @param val is conversation tones enabled
 */
- (void)changeConversationTonesEnabledWithValue:(jboolean)val;

/*!
 @brief Change group avatar
 @param gid        group's id
 @param descriptor descriptor of avatar file
 */
- (void)changeGroupAvatarWithGid:(jint)gid
                  withDescriptor:(NSString *)descriptor;

/*!
 @brief Change group notifications enabled
 @param val is group notifications enabled
 */
- (void)changeGroupNotificationsEnabled:(jboolean)val;

/*!
 @brief Change group notifications only for mentions enabled
 @param val is group notifications only for mentions
 */
- (void)changeGroupNotificationsOnlyMentionsEnabled:(jboolean)val;

/*!
 @brief Change in-app notifications enable value
 @param val is notifications enabled
 */
- (void)changeInAppNotificationsEnabledWithValue:(jboolean)val;

/*!
 @brief Change in-app notifications sound enabled value
 @param val is notifications sound enabled
 */
- (void)changeInAppNotificationSoundEnabledWithValue:(jboolean)val;

/*!
 @brief Change in-app notifications vibration enabled value
 @param val is notifications vibration enabled
 */
- (void)changeInAppNotificationVibrationEnabledWithValue:(jboolean)val;

/*!
 @brief Change if markdown enabled
 @param val is markdown enabled
 */
- (void)changeMarkdownWithValue:(jboolean)val;

/*!
 @brief Change current user's avatar
 @param descriptor descriptor of avatar file
 */
- (void)changeMyAvatarWithDescriptor:(NSString *)descriptor;

/*!
 @brief Change notifications enabled value
 @param val is notifications enabled
 */
- (void)changeNotificationsEnabledWithValue:(jboolean)val;

/*!
 @brief Change if notifications enabled for peer
 @param peer destination peer
 @param val  is notifications enabled
 */
- (void)changeNotificationsEnabledWithPeer:(ACPeer *)peer
                                 withValue:(jboolean)val;

/*!
 @brief Change sound that used for notifications
 @param sound notification sound name
 */
- (void)changeNotificationSoundWithSound:(NSString *)sound;

/*!
 @brief Change notification sounds enabled
 @param val is notification sounds enabled
 */
- (void)changeNotificationSoundEnabledWithValue:(jboolean)val;

/*!
 @brief Change notification vibration enabled
 @param val is notification vibration enabled
 */
- (void)changeNotificationVibrationEnabledWithValueWithBoolean:(jboolean)val;

/*!
 @brief Change background
 @param uri background uri
 */
- (void)changeSelectedWallpaper:(NSString *)uri;

/*!
 @brief Change if send by enter enabled
 @param val is send by enter enabled
 */
- (void)changeSendByEnterWithValue:(jboolean)val;

/*!
 @brief Change displaying text in notifications enabled
 @param val is displaying text in notifications enabled
 */
- (void)changeShowNotificationTextEnabledWithValue:(jboolean)val;

/*!
 @brief Clear chat
 @param peer destination peer
 @return Command for execution
 */
- (id<ACCommand>)clearChatCommandWithPeer:(ACPeer *)peer;

/*!
 @brief Command for completing web action
 @param actionHash web action name
 @param url        completion url
 @return Command for execution
 */
- (id<ACCommand>)completeWebActionWithHash:(NSString *)actionHash
                                   withUrl:(NSString *)url;

/*!
 @brief Create group
 @param title            group title
 @param avatarDescriptor descriptor of group avatar (can be null if not set)
 @param uids             member's ids
 @return Command for execution
 */
- (id<ACCommand>)createGroupCommandWithTitle:(NSString *)title
                                  withAvatar:(NSString *)avatarDescriptor
                                    withUids:(IOSIntArray *)uids;

/*!
 @brief Delete chat
 @param peer destination peer
 @return Command for execution
 */
- (id<ACCommand>)deleteChatCommandWithPeer:(ACPeer *)peer;

/*!
 @brief Delete messages
 @param peer destination peer
 @param rids rids of messages
 */
- (void)deleteMessagesWithPeer:(ACPeer *)peer
                      withRids:(IOSLongArray *)rids;

/*!
 @brief Edit group's about
 @param gid   group's id
 @param about new group about
 @return Command for execution
 */
- (id<ACCommand>)editGroupAboutCommandWithGid:(jint)gid
                                    withAbout:(NSString *)about;

/*!
 @brief Edit group's theme
 @param gid   group's id
 @param theme new group theme
 @return Command for execution
 */
- (id<ACCommand>)editGroupThemeCommandWithGid:(jint)gid
                                    withTheme:(NSString *)theme;

/*!
 @brief Edit group's title
 @param gid   group's id
 @param title new group title
 @return Command for execution
 */
- (id<ACCommand>)editGroupTitleCommandWithGid:(jint)gid
                                    withTitle:(NSString *)title;

/*!
 @brief Edit current user's about
 @param newAbout new user's about
 @return Command for execution
 */
- (id<ACCommand>)editMyAboutCommandWithNick:(NSString *)newAbout;

/*!
 @brief Edit current user's name
 @param newName new user's name
 @return Command for execution
 */
- (id<ACCommand>)editMyNameCommandWithName:(NSString *)newName;

/*!
 @brief Edit current user's nick
 @param newNick new user's nick
 @return Command for execution
 */
- (id<ACCommand>)editMyNickCommandWithNick:(NSString *)newNick;

/*!
 @brief Edit user's local name
 @param uid  user's id
 @param name new user's local name
 @return Command for execution
 */
- (id<ACCommand>)editNameCommandWithUid:(jint)uid
                               withName:(NSString *)name;

/*!
 @brief Get downloaded file descriptor
 @param fileId file' id
 @return descriptor if file is downloaded
 */
- (NSString *)findDownloadedDescriptorWithFileId:(jlong)fileId;

/*!
 @brief Finding suitable mentions
 @param gid   gid of group
 @param query query for search
 @return matches
 */
- (id<JavaUtilList>)findMentionsWithGid:(jint)gid
                              withQuery:(NSString *)query;

/*!
 @brief Find Users
 @param query query for search
 @return Command for execution
 */
- (id<ACCommand>)findUsersCommandWithQuery:(NSString *)query;

/*!
 @brief Force checking of connection
 */
- (void)forceNetworkCheck;

/*!
 @brief Get ViewModel of application state
 @return view model of application state
 */
- (ACAppStateVM *)getAppState;

/*!
 @brief Get current Authentication email.
 Value is valid only for SIGN_UP or CODE_VALIDATION_EMAIL states.
 @return email
 */
- (NSString *)getAuthEmail;

/*!
 @brief Get current Authentication phone.
 Value is valid only for SIGN_UP or CODE_VALIDATION_PHONE states.
 @return phone number in international format
 */
- (jlong)getAuthPhone;

/*!
 @brief Get current Authentication state
 @return current Authentication state
 */
- (ACAuthStateEnum *)getAuthState;

/*!
 @brief Get Dialog Groups
 @return dialog groups
 */
- (ACDialogGroupsVM *)getDialogGroupsVM;

/*!
 @brief Formatting texts for UI
 @return formatter engine
 */
- (ACI18nEngine *)getFormatter;

/*!
 @brief Get Group Value Model by GID
 @param gid gid
 @return Group Value Model
 */
- (ACGroupVM *)getGroupWithGid:(jint)gid;

/*!
 @brief Get Group avatar ViewModel
 Used for displaying group avatar change progress
 @param gid group's ID
 @return the GroupAvatarVM
 */
- (ACGroupAvatarVM *)getGroupAvatarVMWithGid:(jint)gid;

/*!
 @brief Get Group View Model Collection
 @return Group ViewModel Collection
 */
- (ARMVVMCollection *)getGroups;

/*!
 @brief Get group chat ViewModel
 @param gid chat's Group Id
 @return ValueModel of int[] for typing state
 */
- (ARValueModel *)getGroupTypingWithGid:(jint)gid;

/*!
 @brief Sound that used for notifications
 @return notification sound name
 */
- (NSString *)getNotificationSound;

/*!
 @brief Get Own avatar ViewModel
 Used for displaying avatar change progress
 @return the OwnAvatarVM
 */
- (ACOwnAvatarVM *)getOwnAvatarVM;

/*!
 @brief Get preferences storage
 @return the Preferences
 */
- (id<ARPreferencesStorage>)getPreferences;

/*!
 @brief Getting selected wallpaper uri. local:[file_name] for local files
 @return not null if custom background set
 */
- (NSString *)getSelectedWallpaper;

/*!
 @brief Get private chat ViewModel
 @param uid chat's User Id
 @return ValueModel of Boolean for typing state
 */
- (ARValueModel *)getTypingWithUid:(jint)uid;

/*!
 @brief Get User Value Model by UID
 @param uid uid
 @return User Value Model
 */
- (ACUserVM *)getUserWithUid:(jint)uid;

/*!
 @brief Get User View Model Collection
 @return User ViewModel Collection
 */
- (ARMVVMCollection *)getUsers;

/*!
 @brief Adding member to group
 @param gid group's id
 @param uid user's id
 @return Command for execution
 */
- (id<ACCommand>)inviteMemberCommandWithGid:(jint)gid
                                    withUid:(jint)uid;

/*!
 @brief Is in app conversation tones enabled
 @return is conversation tones enabled flag
 */
- (jboolean)isConversationTonesEnabled;

/*!
 @brief Is Group Notifications Enabled
 @return is group notifications enabled
 */
- (jboolean)isGroupNotificationsEnabled;

/*!
 @brief Is Group Notifications only for mentions enabled
 @return val is group notifications only for mentions
 */
- (jboolean)isGroupNotificationsOnlyMentionsEnabled;

/*!
 @brief Is in-app notifications enabled
 @return is notifications enabled
 */
- (jboolean)isInAppNotificationsEnabled;

/*!
 @brief Is in-app notifications sound enabled
 @return is notifications sound enabled
 */
- (jboolean)isInAppNotificationSoundEnabled;

/*!
 @brief Is in-app notification vibration enabled
 @return is notifications vibration enabled
 */
- (jboolean)isInAppNotificationVibrationEnabled;

/*!
 @brief Convenience method for checking if user logged in
 @return true if user is logged in
 */
- (jboolean)isLoggedIn;

/*!
 @brief Is markdown enabled.
 @return is markdown enabled
 */
- (jboolean)isMarkdownEnabled;

/*!
 @brief Is notifications enabled setting
 @return is notifications enabled
 */
- (jboolean)isNotificationsEnabled;

/*!
 @brief Is notifications enabled for peer
 @param peer destination peer
 @return is notifications enabled
 */
- (jboolean)isNotificationsEnabledWithPeer:(ACPeer *)peer;

/*!
 @brief Is notifications sounds enabled
 @return is notification sounds enabled
 */
- (jboolean)isNotificationSoundEnabled;

/*!
 @brief Is notification vibration enabled
 @return is notification vibration enabled
 */
- (jboolean)isNotificationVibrationEnabled;

/*!
 @brief Is Hint about contact rename shown to user and automatically mark as shown if not.
 @return is hint already shown
 */
- (jboolean)isRenameHintShown;

/*!
 @brief Is send by enter enabled.
 Useful for android and web.
 @return is send by enter enabled
 */
- (jboolean)isSendByEnterEnabled;

/*!
 @brief Is displaying text in notifications enabled
 @return is displaying text in notifications enabled
 */
- (jboolean)isShowNotificationsText;

/*!
 @brief Join group using invite link
 @param url invite link
 @return Command for execution
 */
- (id<ACCommand>)joinGroupViaLinkCommandWithUrl:(NSString *)url;

/*!
 @brief Join public group
 @param gid        group's id
 @param accessHash group's accessHash
 @return Command for execution
 */
- (id<ACCommand>)joinPublicGroupCommandWithGig:(jint)gid
                                withAccessHash:(jlong)accessHash;

/*!
 @brief Kick member from group
 @param gid group's id
 @param uid user's id
 @return Command for execution
 */
- (id<ACCommand>)kickMemberCommandWithGid:(jint)gid
                                  withUid:(jint)uid;

/*!
 @brief Leave group
 @param gid group's id
 @return Command for execution
 */
- (id<ACCommand>)leaveGroupCommandWithGid:(jint)gid;

/*!
 @brief Listing public groups
 @return Command for execution
 */
- (id<ACCommand>)listPublicGroups;

/*!
 @brief Load message draft
 @param peer destination peer
 @return null if no draft available
 */
- (NSString *)loadDraftWithPeer:(ACPeer *)peer;

/*!
 @brief Loading last read messages
 @param peer destination peer
 @return rid of last read message
 */
- (jlong)loadFirstUnread:(ACPeer *)peer;

/*!
 @brief Loading active sessions
 @return Command for execution
 */
- (id<ACCommand>)loadSessionsCommand;

/*!
 @brief Make member admin of group
 @param gid group's id
 @param uid user's id
 @return Command for execution
 */
- (id<ACCommand>)makeAdminCommandWithGid:(jint)gid
                                 withUid:(jint)uid;

/*!
 @brief Get authenticated User Id
 @return current User Id
 */
- (jint)myUid;

/*!
 @brief MUST be called on app became hidden
 */
- (void)onAppHidden;

/*!
 @brief MUST be called on app became visible
 */
- (void)onAppVisible;

/*!
 @brief MUST be called on conversation closed
 @param peer conversation's peer
 */
- (void)onConversationClosedWithPeer:(ACPeer *)peer;

/*!
 @brief MUST be called on conversation open
 @param peer conversation's peer
 */
- (void)onConversationOpenWithPeer:(ACPeer *)peer;

/*!
 @brief MUST be called on dialogs closed
 */
- (void)onDialogsClosed;

/*!
 @brief MUST be called on dialogs open
 */
- (void)onDialogsOpen;

- (void)onLoggedIn;

/*!
 @brief MUST be called when network status change detected
 @param state New network state
 */
- (void)onNetworkChangedWithACNetworkStateEnum:(ACNetworkStateEnum *)state;

/*!
 @brief MUST be called when phone book change detected
 */
- (void)onPhoneBookChanged;

/*!
 @brief MUST be called on profile closed
 @param uid user's Id
 */
- (void)onProfileClosedWithUid:(jint)uid;

/*!
 @brief MUST be called on profile open
 @param uid user's Id
 */
- (void)onProfileOpenWithUid:(jint)uid;

/*!
 @brief MUST be called when external push received
 @param seq sequence number of update
 */
- (void)onPushReceivedWithSeq:(jint)seq;

/*!
 @brief MUST be called on typing in chat.
 Can be called with any frequency
 @param peer conversation's peer
 */
- (void)onTypingWithPeer:(ACPeer *)peer;

/*!
 @brief Fire event when user object became visible
 @param uid user's Id
 */
- (void)onUserVisibleWithUid:(jint)uid;

/*!
 @brief Pause upload
 @param rid file's random id
 */
- (void)pauseUploadWithRid:(jlong)rid;

/*!
 @brief Register apple push
 @param apnsId internal APNS cert key
 @param token  APNS token
 */
- (void)registerApplePushWithApnsId:(jint)apnsId
                          withToken:(NSString *)token;

/*!
 @brief Register google push
 @param projectId GCM project id
 @param token     GCM token
 */
- (void)registerGooglePushWithProjectId:(jlong)projectId
                              withToken:(NSString *)token;

/*!
 @brief Remove user from contact's list
 @param uid user's id
 @return Command for execution
 */
- (id<ACCommand>)removeContactCommandWithUid:(jint)uid;

/*!
 @brief Removing group avatar
 @param gid group's id
 */
- (void)removeGroupAvatarWithGid:(jint)gid;

/*!
 @brief Remove current user's avatar
 */
- (void)removeMyAvatar;

/*!
 @brief Request complete OAuth
 @param code code from oauth
 @return Command for execution
 */
- (id<ACCommand>)requestCompleteOAuthCommandWithCode:(NSString *)code;

/*!
 @brief Request OAuth params
 @return Command for execution
 */
- (id<ACCommand>)requestGetOAuthParamsCommand;

/*!
 @brief Request integration token for group
 @param gid group's id
 @return Command for execution
 */
- (id<ACCommand>)requestIntegrationTokenCommandWithGid:(jint)gid;

/*!
 @brief Request invite link for group
 @param gid group's id
 @return Command for execution
 */
- (id<ACCommand>)requestInviteLinkCommandWithGid:(jint)gid;

/*!
 @brief Request phone call activation
 @return command for execution
 */
- (id<ACCommand>)requestPhoneCall;

/*!
 @brief Request email auth
 @param email email to authenticate
 @return Command for execution
 */
- (id<ACCommand>)requestStartAuthCommandWithEmail:(NSString *)email;

/*!
 @brief Request phone auth
 @param phone phone to authenticate
 @return Command for execution
 */
- (id<ACCommand>)requestStartAuthCommandWithPhone:(jlong)phone;

/*!
 @brief Request file state
 @param fileId   file id
 @param callback file state callback
 */
- (void)requestStateWithFileId:(jlong)fileId
                  withCallback:(id<ACFileCallback>)callback;

/*!
 @brief Request upload file state
 @param rid      file's random id
 @param callback file state callback
 */
- (void)requestUploadStateWithRid:(jlong)rid
                     withCallback:(id<ACUploadFileCallback>)callback;

/*!
 @brief Resetting authentication process
 */
- (void)resetAuth;

/*!
 @brief Resume upload
 @param rid file's random id
 */
- (void)resumeUploadWithRid:(jlong)rid;

/*!
 @brief Revoke get integration token for group
 @param gid group's id
 @return Command for execution
 */
- (id<ACCommand>)revokeIntegrationTokenCommandWithGid:(jint)gid;

/*!
 @brief Revoke invite link for group
 @param gid group's id
 @return Command for execution
 */
- (id<ACCommand>)requestRevokeLinkCommandWithGid:(jint)gid;

/*!
 @brief Save message draft
 @param peer  destination peer
 @param draft message draft
 */
- (void)saveDraftWithPeer:(ACPeer *)peer
                withDraft:(NSString *)draft;

/*!
 @brief Send document with preview
 @param peer       destination peer
 @param fileName   File name (without path)
 @param mimeType   mimetype of document
 @param descriptor File Descriptor
 @param fastThumb  FastThumb of preview
 */
- (void)sendDocumentWithPeer:(ACPeer *)peer
                    withName:(NSString *)fileName
                    withMime:(NSString *)mimeType
                   withThumb:(ACFastThumb *)fastThumb
              withDescriptor:(NSString *)descriptor;

/*!
 @brief Send document without preview
 @param peer       destination peer
 @param fileName   File name (without path)
 @param mimeType   mimetype of document
 @param descriptor File Descriptor
 */
- (void)sendDocumentWithPeer:(ACPeer *)peer
                    withName:(NSString *)fileName
                    withMime:(NSString *)mimeType
              withDescriptor:(NSString *)descriptor;

/*!
 @brief Send Text Message
 @param peer destination peer
 @param text message text
 */
- (void)sendMessageWithPeer:(ACPeer *)peer
                   withText:(NSString *)text;

/*!
 @brief Send Text Message with mentions
 @param peer     destination peer
 @param text     message text
 @param mentions user's mentions
 */
- (void)sendMessageWithPeer:(ACPeer *)peer
                   withText:(NSString *)text
               withMentions:(JavaUtilArrayList *)mentions;

/*!
 @brief Send Markdown Message
 @param peer         destination peer
 @param text         message text
 @param markDownText message markdown text
 */
- (void)sendMessageWithPeer:(ACPeer *)peer
                   withText:(NSString *)text
           withMarkdownText:(NSString *)markDownText;

/*!
 @brief Send Markdown Message with mentions
 @param peer         destination peer
 @param text         message text
 @param markDownText message markdown text
 @param mentions     user's mentions
 */
- (void)sendMessageWithPeer:(ACPeer *)peer
                   withText:(NSString *)text
           withMarkdownText:(NSString *)markDownText
               withMentions:(JavaUtilArrayList *)mentions;

/*!
 @brief Send Markdown Message with mentions
 @param peer         destination peer
 @param text         message text
 @param markDownText message markdown text
 @param mentions     user's mentions
 */
- (void)sendMessageWithPeer:(ACPeer *)peer
                   withText:(NSString *)text
           withMarkdownText:(NSString *)markDownText
               withMentions:(JavaUtilArrayList *)mentions
                 autoDetect:(jboolean)autoDetect;

/*!
 @brief Send Text Message
 @param peer destination peer
 @param text message text
 */
- (void)sendMessageWithMentionsDetect:(ACPeer *)peer
                             withText:(NSString *)text;

/*!
 @brief Send Text Message
 @param peer destination peer
 @param text message text
 */
- (void)sendMessageWithMentionsDetect:(ACPeer *)peer
                             withText:(NSString *)text
                     withMarkdownText:(NSString *)markdownText;

/*!
 @brief Send Photo message
 @param peer       destination peer
 @param fileName   File name (without path)
 @param w          photo width
 @param h          photo height
 @param fastThumb  Fast thumb of photo
 @param descriptor File Descriptor
 */
- (void)sendPhotoWithPeer:(ACPeer *)peer
                 withName:(NSString *)fileName
                    withW:(jint)w
                    withH:(jint)h
                withThumb:(ACFastThumb *)fastThumb
           withDescriptor:(NSString *)descriptor;

/*!
 @brief Send Video message
 @param peer       destination peer
 @param fileName   File name (without path)
 @param w          video width
 @param h          video height
 @param duration   video duration
 @param fastThumb  Fast thumb of video
 @param descriptor File Descriptor
 */
- (void)sendVideoWithPeer:(ACPeer *)peer
                 withName:(NSString *)fileName
                    withW:(jint)w
                    withH:(jint)h
             withDuration:(jint)duration
                withThumb:(ACFastThumb *)fastThumb
           withDescriptor:(NSString *)descriptor;

/*!
 @brief Perform signup
 @param name       Name of User
 @param sex        user sex
 @param avatarPath File descriptor of avatar (may be null if not set)
 @return Comand for execution
 */
- (id<ACCommand>)signUpCommandWithName:(NSString *)name
                               WithSex:(ACSexEnum *)sex
                            withAvatar:(NSString *)avatarPath;

/*!
 @brief Start file download
 @param reference file's reference
 */
- (void)startDownloadingWithReference:(ACFileReference *)reference;

/*!
 @brief Command for starting web action
 @param webAction web action name
 @return Command for execution
 */
- (id<ACCommand>)startWebAction:(NSString *)webAction;

/*!
 @brief Terminate all other sessions
 @return Command for execution
 */
- (id<ACCommand>)terminateAllSessionsCommand;

/*!
 @brief Terminate active session
 @param id_ session id
 @return Command for execution
 */
- (id<ACCommand>)terminateSessionCommandWithId:(jint)id_;

/*!
 @brief Unbind Raw File
 @param fileId       file id
 @param isAutoCancel automatically cancel download
 @param callback     file state callback
 */
- (void)unbindRawFileWithFileId:(jlong)fileId
                     autoCancel:(jboolean)isAutoCancel
                   withCallback:(id<ACFileCallback>)callback;

/*!
 @brief Unbind Raw Upload File
 @param rid      randomId of uploading file
 @param callback file state callback
 */
- (void)unbindRawUploadFileWithRid:(jlong)rid
                      withCallback:(id<ACUploadFileCallback>)callback;

/*!
 @brief Sending activation code
 @param code activation code
 @return Command for execution
 */
- (id<ACCommand>)validateCodeCommand:(NSString *)code;

#pragma mark Package-Private

/*!
 @brief Get modules of messenger for extensions
 @return Module Contexts
 */
- (id<ACModuleContext>)getModuleContext;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessenger)

J2OBJC_FIELD_SETTER(ACMessenger, modules_, ACModules *)

FOUNDATION_EXPORT void ACMessenger_initWithConfiguration_(ACMessenger *self, ACConfiguration *configuration);

FOUNDATION_EXPORT ACMessenger *new_ACMessenger_initWithConfiguration_(ACConfiguration *configuration) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessenger)

@compatibility_alias ImActorCoreMessenger ACMessenger;


#pragma clang diagnostic pop
#endif // _ImActorCoreMessenger_H_

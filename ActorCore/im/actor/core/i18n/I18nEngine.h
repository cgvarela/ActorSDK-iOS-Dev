//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/i18n/I18nEngine.java
//

#ifndef _ImActorCoreI18nI18nEngine_H_
#define _ImActorCoreI18nI18nEngine_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACContentTypeEnum;
@class ACDialog;
@class ACModules;
@class ACNotification;
@class ACServiceContent;
@class ACSexEnum;
@class ACUserPresence;
@class IOSObjectArray;

@interface ACI18nEngine : NSObject

#pragma mark Public

- (instancetype)initWithModules:(ACModules *)modules;

- (NSString *)formatContentTextWithSenderId:(jint)senderId
                            withContentType:(ACContentTypeEnum *)contentType
                                   withText:(NSString *)text
                             withRelatedUid:(jint)relatedUid;

- (NSString *)formatDate:(jlong)date;

- (NSString *)formatDialogText:(ACDialog *)dialog;

- (NSString *)formatDuration:(jint)duration;

- (NSString *)formatErrorTextWithError:(id)o;

- (NSString *)formatErrorTextWithTag:(NSString *)tag;

- (NSString *)formatFastName:(NSString *)name;

- (NSString *)formatFileSize:(jint)bytes;

- (NSString *)formatFullServiceMessageWithSenderId:(jint)senderId
                                       withContent:(ACServiceContent *)content;

- (NSString *)formatGroupMembers:(jint)count;

- (NSString *)formatGroupOnline:(jint)count;

- (NSString *)formatMessagesExport:(IOSObjectArray *)messages;

- (NSString *)formatNotificationText:(ACNotification *)pendingNotification;

- (NSString *)formatPerformerNameWithUid:(jint)uid;

- (NSString *)formatPresence:(ACUserPresence *)value
                     withSex:(ACSexEnum *)sex;

- (NSString *)formatShortDate:(jlong)date;

- (NSString *)formatTime:(jlong)date;

- (NSString *)formatTyping;

- (NSString *)formatTypingWithCount:(jint)count;

- (NSString *)formatTypingWithName:(NSString *)name;

- (NSString *)getSubjectNameWithUid:(jint)uid;

- (jboolean)isLargeDialogMessage:(ACContentTypeEnum *)contentType;

@end

J2OBJC_STATIC_INIT(ACI18nEngine)

FOUNDATION_EXPORT void ACI18nEngine_initWithModules_(ACI18nEngine *self, ACModules *modules);

FOUNDATION_EXPORT ACI18nEngine *new_ACI18nEngine_initWithModules_(ACModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACI18nEngine)

@compatibility_alias ImActorCoreI18nI18nEngine ACI18nEngine;


#pragma clang diagnostic pop
#endif // _ImActorCoreI18nI18nEngine_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/GroupsProcessor.java
//

#ifndef _ImActorCoreModulesUpdatesGroupsProcessor_H_
#define _ImActorCoreModulesUpdatesGroupsProcessor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/AbsModule.h>

@class ARApiAvatar;
@protocol ACModuleContext;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

@interface ACGroupsProcessor : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)applyGroupsWithJavaUtilCollection:(id<JavaUtilCollection>)updated
                              withBoolean:(jboolean)forced;

- (jboolean)hasGroupsWithJavaUtilCollection:(id<JavaUtilCollection>)gids;

- (void)onAboutChangedWithInt:(jint)groupId
                 withNSString:(NSString *)about;

- (void)onAvatarChangedWithInt:(jint)groupId
                      withLong:(jlong)rid
                       withInt:(jint)uid
               withARApiAvatar:(ARApiAvatar *)avatar
                      withLong:(jlong)date
                   withBoolean:(jboolean)isSilent;

- (void)onGroupInviteWithInt:(jint)groupId
                    withLong:(jlong)rid
                     withInt:(jint)inviterId
                    withLong:(jlong)date
                 withBoolean:(jboolean)isSilent;

- (void)onMembersUpdatedWithInt:(jint)groupId
               withJavaUtilList:(id<JavaUtilList>)members;

- (void)onTitleChangedWithInt:(jint)groupId
                     withLong:(jlong)rid
                      withInt:(jint)uid
                 withNSString:(NSString *)title
                     withLong:(jlong)date
                  withBoolean:(jboolean)isSilent;

- (void)onTopicChangedWithInt:(jint)groupId
                 withNSString:(NSString *)topic;

- (void)onUserAddedWithInt:(jint)groupId
                  withLong:(jlong)rid
                   withInt:(jint)uid
                   withInt:(jint)adder
                  withLong:(jlong)date
               withBoolean:(jboolean)isSilent;

- (void)onUserKickedWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)kicker
                   withLong:(jlong)date
                withBoolean:(jboolean)isSilent;

- (void)onUserLeaveWithInt:(jint)groupId
                  withLong:(jlong)rid
                   withInt:(jint)uid
                  withLong:(jlong)date
               withBoolean:(jboolean)isSilent;

@end

J2OBJC_EMPTY_STATIC_INIT(ACGroupsProcessor)

FOUNDATION_EXPORT void ACGroupsProcessor_initWithACModuleContext_(ACGroupsProcessor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACGroupsProcessor *new_ACGroupsProcessor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACGroupsProcessor)

@compatibility_alias ImActorCoreModulesUpdatesGroupsProcessor ACGroupsProcessor;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesGroupsProcessor_H_
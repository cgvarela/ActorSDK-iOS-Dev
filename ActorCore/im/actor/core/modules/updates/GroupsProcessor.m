//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/GroupsProcessor.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiAvatar.h"
#include "im/actor/core/api/ApiGroup.h"
#include "im/actor/core/entity/Avatar.h"
#include "im/actor/core/entity/Group.h"
#include "im/actor/core/entity/Message.h"
#include "im/actor/core/entity/MessageState.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/core/entity/content/ServiceGroupCreated.h"
#include "im/actor/core/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/core/entity/content/ServiceGroupUserInvited.h"
#include "im/actor/core/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/core/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/MessagesModule.h"
#include "im/actor/core/modules/internal/messages/DialogsActor.h"
#include "im/actor/core/modules/internal/messages/GroupedDialogsActor.h"
#include "im/actor/core/modules/internal/messages/entity/EntityConverter.h"
#include "im/actor/core/modules/updates/GroupsProcessor.h"
#include "im/actor/core/util/JavaUtil.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/storage/KeyValueEngine.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACGroupsProcessor ()

- (void)onGroupDescChangedWithACGroup:(ACGroup *)group;

@end

__attribute__((unused)) static void ACGroupsProcessor_onGroupDescChangedWithACGroup_(ACGroupsProcessor *self, ACGroup *group);

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/GroupsProcessor.java"


#line 35
@implementation ACGroupsProcessor

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACGroupsProcessor_initWithACModuleContext_(self, context);
  return self;
}

- (void)applyGroupsWithJavaUtilCollection:(id<JavaUtilCollection>)updated
                              withBoolean:(jboolean)forced {
  JavaUtilArrayList *batch = new_JavaUtilArrayList_init();
  for (ARApiGroup * __strong group in nil_chk(updated)) {
    ACGroup *saved = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:[((ARApiGroup *) nil_chk(group)) getId]];
    if (saved == nil) {
      [batch addWithId:ACEntityConverter_convertWithARApiGroup_(group)];
    }
    else
#line 48
    if (forced) {
      ACGroup *upd = ACEntityConverter_convertWithARApiGroup_(group);
      [batch addWithId:upd];
      
#line 53
      if (!ACJavaUtil_equalsEWithId_withId_([((ACGroup *) nil_chk(upd)) getAvatar], [saved getAvatar]) ||
#line 54
      ![((NSString *) nil_chk([upd getTitle])) isEqual:[saved getTitle]]) {
        ACGroupsProcessor_onGroupDescChangedWithACGroup_(self, upd);
      }
    }
  }
  
#line 60
  if ([batch size] > 0) {
    [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItems:batch];
  }
}


#line 66
- (void)onGroupInviteWithInt:(jint)groupId
                    withLong:(jlong)rid
                     withInt:(jint)inviterId
                    withLong:(jlong)date
                 withBoolean:(jboolean)isSilent {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 71
    [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:[((ACGroup *) nil_chk([group changeMemberWithBoolean:
#line 72
    true])) addMemberWithInt:
#line 73
    [self myUid] withInt:inviterId withLong:date]];
    
#line 75
    if (!isSilent) {
      if (inviterId == [self myUid]) {
        
#line 78
        ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, inviterId, JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceGroupCreated_create());
        
#line 80
        [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
      }
      else {
        ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, inviterId, JreLoadStatic(ACMessageStateEnum, SENT), ACServiceGroupUserInvited_createWithInt_(
#line 84
        [self myUid]));
        [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
      }
    }
  }
}


#line 92
- (void)onUserLeaveWithInt:(jint)groupId
                  withLong:(jlong)rid
                   withInt:(jint)uid
                  withLong:(jlong)date
               withBoolean:(jboolean)isSilent {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 96
    if (uid == [self myUid]) {
      
#line 98
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:[((ACGroup *) nil_chk([group clearMembers])) changeMemberWithBoolean:
#line 100
      false]];
    }
    else {
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:[group removeMemberWithInt:
#line 104
      uid]];
    }
    
#line 108
    if (!isSilent) {
      ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, uid,
#line 110
      uid == [self myUid] ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceGroupUserLeave_create());
      
#line 112
      [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
    }
  }
}


#line 118
- (void)onUserKickedWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)kicker
                   withLong:(jlong)date
                withBoolean:(jboolean)isSilent {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 122
    if (uid == [self myUid]) {
      
#line 124
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:[((ACGroup *) nil_chk([group clearMembers])) changeMemberWithBoolean:
#line 126
      false]];
    }
    else {
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:[group removeMemberWithInt:
#line 130
      uid]];
    }
    
#line 134
    if (!isSilent) {
      ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, kicker,
#line 136
      kicker == [self myUid] ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceGroupUserKicked_createWithInt_(
#line 137
      uid));
      [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
    }
  }
}


#line 144
- (void)onUserAddedWithInt:(jint)groupId
                  withLong:(jlong)rid
                   withInt:(jint)uid
                   withInt:(jint)adder
                  withLong:(jlong)date
               withBoolean:(jboolean)isSilent {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 149
    [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:[group addMemberWithInt:uid withInt:adder withLong:date]];
    
#line 152
    if (!isSilent) {
      ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, adder,
#line 154
      adder == [self myUid] ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceGroupUserInvited_createWithInt_(
#line 155
      uid));
      [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
    }
  }
}


#line 162
- (void)onTitleChangedWithInt:(jint)groupId
                     withLong:(jlong)rid
                      withInt:(jint)uid
                 withNSString:(NSString *)title
                     withLong:(jlong)date
                  withBoolean:(jboolean)isSilent {
  
#line 164
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 171
    if (![((NSString *) nil_chk([group getTitle])) isEqual:title]) {
      
#line 173
      ACGroup *upd = [group editTitleWithNSString:title];
      
#line 176
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:upd];
      
#line 179
      ACGroupsProcessor_onGroupDescChangedWithACGroup_(self, upd);
    }
    
#line 183
    if (!isSilent) {
      ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, uid,
#line 185
      uid == [self myUid] ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceGroupTitleChanged_createWithNSString_(
#line 186
      title));
      [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
    }
  }
}


#line 193
- (void)onTopicChangedWithInt:(jint)groupId
                 withNSString:(NSString *)topic {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 201
    if ([group getTheme] == nil || ![((NSString *) nil_chk([group getTheme])) isEqual:topic]) {
      
#line 203
      ACGroup *upd = [group editThemeWithNSString:topic];
      
#line 206
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:upd];
      
#line 209
      ACGroupsProcessor_onGroupDescChangedWithACGroup_(self, upd);
    }
  }
}


#line 217
- (void)onAboutChangedWithInt:(jint)groupId
                 withNSString:(NSString *)about {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 225
    if ([group getAbout] == nil || ![((NSString *) nil_chk([group getAbout])) isEqual:about]) {
      
#line 227
      ACGroup *upd = [group editAboutWithNSString:about];
      
#line 230
      [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:upd];
      
#line 233
      ACGroupsProcessor_onGroupDescChangedWithACGroup_(self, upd);
    }
  }
}


#line 241
- (void)onAvatarChangedWithInt:(jint)groupId
                      withLong:(jlong)rid
                       withInt:(jint)uid
               withARApiAvatar:(ARApiAvatar *)avatar
                      withLong:(jlong)date
                   withBoolean:(jboolean)isSilent {
  
#line 243
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 255
    ACGroup *upd = [group editAvatarWithARApiAvatar:avatar];
    
#line 258
    [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:upd];
    
#line 261
    ACGroupsProcessor_onGroupDescChangedWithACGroup_(self, upd);
    
#line 266
    if (!isSilent) {
      ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, uid,
#line 268
      uid == [self myUid] ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceGroupAvatarChanged_createWithARApiAvatar_(
#line 269
      avatar));
      [((ARActorRef *) nil_chk([self conversationActorWithACPeer:[group peer]])) sendWithId:message];
    }
  }
}


#line 277
- (void)onMembersUpdatedWithInt:(jint)groupId
               withJavaUtilList:(id<JavaUtilList>)members {
  ACGroup *group = [((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:groupId];
  if (group != nil) {
    
#line 282
    group = [group updateMembersWithJavaUtilList:members];
    
#line 285
    [((id<ARKeyValueEngine>) nil_chk([self groups])) addOrUpdateItem:group];
  }
}

- (jboolean)hasGroupsWithJavaUtilCollection:(id<JavaUtilCollection>)gids {
  for (JavaLangInteger * __strong uid in nil_chk(gids)) {
    if ([((id<ARKeyValueEngine>) nil_chk([self groups])) getValueWithKey:[((JavaLangInteger *) nil_chk(uid)) intValue]] == nil) {
      return false;
    }
  }
  return true;
}


#line 300
- (void)onGroupDescChangedWithACGroup:(ACGroup *)group {
  ACGroupsProcessor_onGroupDescChangedWithACGroup_(self, group);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "GroupsProcessor", NULL, 0x1, NULL, NULL },
    { "applyGroupsWithJavaUtilCollection:withBoolean:", "applyGroups", "V", 0x1, NULL, NULL },
    { "onGroupInviteWithInt:withLong:withInt:withLong:withBoolean:", "onGroupInvite", "V", 0x1, NULL, NULL },
    { "onUserLeaveWithInt:withLong:withInt:withLong:withBoolean:", "onUserLeave", "V", 0x1, NULL, NULL },
    { "onUserKickedWithInt:withLong:withInt:withInt:withLong:withBoolean:", "onUserKicked", "V", 0x1, NULL, NULL },
    { "onUserAddedWithInt:withLong:withInt:withInt:withLong:withBoolean:", "onUserAdded", "V", 0x1, NULL, NULL },
    { "onTitleChangedWithInt:withLong:withInt:withNSString:withLong:withBoolean:", "onTitleChanged", "V", 0x1, NULL, NULL },
    { "onTopicChangedWithInt:withNSString:", "onTopicChanged", "V", 0x1, NULL, NULL },
    { "onAboutChangedWithInt:withNSString:", "onAboutChanged", "V", 0x1, NULL, NULL },
    { "onAvatarChangedWithInt:withLong:withInt:withARApiAvatar:withLong:withBoolean:", "onAvatarChanged", "V", 0x1, NULL, NULL },
    { "onMembersUpdatedWithInt:withJavaUtilList:", "onMembersUpdated", "V", 0x1, NULL, NULL },
    { "hasGroupsWithJavaUtilCollection:", "hasGroups", "Z", 0x1, NULL, NULL },
    { "onGroupDescChangedWithACGroup:", "onGroupDescChanged", "V", 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACGroupsProcessor = { 2, "GroupsProcessor", "im.actor.core.modules.updates", NULL, 0x1, 13, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACGroupsProcessor;
}

@end


#line 37
void ACGroupsProcessor_initWithACModuleContext_(ACGroupsProcessor *self, id<ACModuleContext> context) {
  (void) ACAbsModule_initWithACModuleContext_(self, context);
}


#line 37
ACGroupsProcessor *new_ACGroupsProcessor_initWithACModuleContext_(id<ACModuleContext> context) {
  ACGroupsProcessor *self = [ACGroupsProcessor alloc];
  ACGroupsProcessor_initWithACModuleContext_(self, context);
  return self;
}


#line 300
void ACGroupsProcessor_onGroupDescChangedWithACGroup_(ACGroupsProcessor *self, ACGroup *group) {
  [((ARActorRef *) nil_chk([((ACMessagesModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getMessagesModule])) getDialogsActor])) sendWithId:new_ACDialogsActor_GroupChanged_initWithACGroup_(
#line 302
  group)];
  [((ARActorRef *) nil_chk([((ACMessagesModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getMessagesModule])) getDialogsGroupedActor])) sendWithId:new_ACGroupedDialogsActor_PeerInformationChanged_initWithACPeer_(ACPeer_groupWithInt_(
#line 304
  [((ACGroup *) nil_chk(group)) getGroupId]))];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACGroupsProcessor)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/MessagesProcessor.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiAppCounters.h"
#include "im/actor/core/api/ApiDialog.h"
#include "im/actor/core/api/ApiHistoryMessage.h"
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/api/ApiMessageState.h"
#include "im/actor/core/api/ApiPeer.h"
#include "im/actor/core/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/core/api/rpc/ResponseLoadHistory.h"
#include "im/actor/core/api/updates/UpdateMessage.h"
#include "im/actor/core/entity/Message.h"
#include "im/actor/core/entity/MessageState.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/entity/content/AbsContent.h"
#include "im/actor/core/entity/content/ServiceUserRegistered.h"
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/AppStateModule.h"
#include "im/actor/core/modules/internal/MessagesModule.h"
#include "im/actor/core/modules/internal/messages/ConversationActor.h"
#include "im/actor/core/modules/internal/messages/ConversationHistoryActor.h"
#include "im/actor/core/modules/internal/messages/CursorReceiverActor.h"
#include "im/actor/core/modules/internal/messages/DialogsActor.h"
#include "im/actor/core/modules/internal/messages/DialogsHistoryActor.h"
#include "im/actor/core/modules/internal/messages/GroupedDialogsActor.h"
#include "im/actor/core/modules/internal/messages/OwnReadActor.h"
#include "im/actor/core/modules/internal/messages/SenderActor.h"
#include "im/actor/core/modules/internal/messages/entity/DialogHistory.h"
#include "im/actor/core/modules/internal/messages/entity/EntityConverter.h"
#include "im/actor/core/modules/updates/MessagesProcessor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Long.h>
#include <j2objc/java/lang/Math.h>
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/MessagesProcessor.java"


#line 41
@implementation ACMessagesProcessor

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACMessagesProcessor_initWithACModuleContext_(self, context);
  return self;
}


#line 47
- (void)onMessagesWithARApiPeer:(ARApiPeer *)_peer
               withJavaUtilList:(id<JavaUtilList>)messages {
  
#line 49
  jlong outMessageSortDate = 0;
  jlong intMessageSortDate = 0;
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 53
  JavaUtilArrayList *nMesages = new_JavaUtilArrayList_init();
  for (ARUpdateMessage * __strong u in nil_chk(messages)) {
    
#line 56
    ACAbsContent *msgContent;
    @try {
      msgContent = ACAbsContent_fromMessageWithARApiMessage_([((ARUpdateMessage *) nil_chk(u)) getMessage]);
    }
    @catch (
#line 59
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      continue;
    }
    
#line 64
    jboolean isOut = [self myUid] == [((ARUpdateMessage *) nil_chk(u)) getSenderUid];
    
#line 67
    [nMesages addWithId:new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_([u getRid], [u getDate], [u getDate], [u getSenderUid],
#line 68
    isOut ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), msgContent)];
    
#line 70
    if (!isOut) {
      
#line 72
      intMessageSortDate = JavaLangMath_maxWithLong_withLong_(intMessageSortDate, [u getDate]);
    }
    else {
      
#line 74
      outMessageSortDate = JavaLangMath_maxWithLong_withLong_(outMessageSortDate, [u getDate]);
    }
  }
  
#line 78
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_Messages_initWithJavaUtilArrayList_(nMesages)];
  
#line 80
  if (intMessageSortDate > 0) {
    [((ARActorRef *) nil_chk([self plainReceiveActor])) sendWithId:new_ACCursorReceiverActor_MarkReceived_initWithACPeer_withLong_(peer, intMessageSortDate)];
  }
  
#line 84
  if (outMessageSortDate > 0) {
    [((ARActorRef *) nil_chk([self ownReadActor])) sendWithId:new_ACOwnReadActor_OutMessage_initWithACPeer_withLong_(peer, outMessageSortDate)];
  }
  
#line 89
  for (ACMessage * __strong m in nMesages) {
    if ([((ACMessage *) nil_chk(m)) getSenderId] != [self myUid]) {
      [((ARActorRef *) nil_chk([self ownReadActor])) sendWithId:new_ACOwnReadActor_InMessage_initWithACPeer_withACMessage_(peer, m)];
    }
  }
}


#line 97
- (void)onMessageWithARApiPeer:(ARApiPeer *)_peer
                       withInt:(jint)senderUid
                      withLong:(jlong)date
                      withLong:(jlong)rid
              withARApiMessage:(ARApiMessage *)content {
  
#line 100
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  ACAbsContent *msgContent;
  @try {
    msgContent = ACAbsContent_fromMessageWithARApiMessage_(content);
  }
  @catch (
#line 104
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    return;
  }
  
#line 109
  jboolean isOut = [self myUid] == senderUid;
  
#line 112
  ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, senderUid,
#line 113
  isOut ? JreLoadStatic(ACMessageStateEnum, SENT) : JreLoadStatic(ACMessageStateEnum, UNKNOWN), msgContent);
  
#line 115
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:message];
  
#line 117
  if (!isOut) {
    
#line 119
    [((ARActorRef *) nil_chk([self plainReceiveActor])) sendWithId:new_ACCursorReceiverActor_MarkReceived_initWithACPeer_withLong_(peer, date)];
    
#line 122
    [((ARActorRef *) nil_chk([self ownReadActor])) sendWithId:new_ACOwnReadActor_InMessage_initWithACPeer_withACMessage_(peer, message)];
  }
  else {
    [((ARActorRef *) nil_chk([self ownReadActor])) sendWithId:new_ACOwnReadActor_OutMessage_initWithACPeer_withLong_(peer, [message getSortDate])];
  }
}


#line 130
- (void)onUserRegisteredWithLong:(jlong)rid
                         withInt:(jint)uid
                        withLong:(jlong)date {
  ACMessage *message = new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid, date, date, uid, JreLoadStatic(ACMessageStateEnum, UNKNOWN), ACServiceUserRegistered_create());
  
#line 134
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:ACPeer_userWithInt_(uid)])) sendWithId:message];
}


#line 138
- (void)onMessageReadWithARApiPeer:(ARApiPeer *)_peer
                          withLong:(jlong)startDate {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 142
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 147
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_MessageRead_initWithLong_(startDate)];
}

- (void)onMessageReceivedWithARApiPeer:(ARApiPeer *)_peer
                              withLong:(jlong)startDate {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 155
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 160
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_MessageReceived_initWithLong_(startDate)];
}

- (void)onMessageReadByMeWithARApiPeer:(ARApiPeer *)_peer
                              withLong:(jlong)startDate {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 168
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 173
  [((ARActorRef *) nil_chk([self ownReadActor])) sendWithId:new_ACOwnReadActor_MessageReadByMe_initWithACPeer_withLong_(peer, startDate)];
}

- (void)onMessageSentWithARApiPeer:(ARApiPeer *)_peer
                          withLong:(jlong)rid
                          withLong:(jlong)date {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 181
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 186
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_MessageSent_initWithLong_withLong_(rid, date)];
  
#line 189
  [((ARActorRef *) nil_chk([self sendActor])) sendWithId:new_ACSenderActor_MessageSent_initWithACPeer_withLong_(peer, rid)];
  
#line 192
  [((ARActorRef *) nil_chk([self ownReadActor])) sendWithId:new_ACOwnReadActor_OutMessage_initWithACPeer_withLong_(peer, date)];
}


#line 196
- (void)onMessageContentChangedWithARApiPeer:(ARApiPeer *)_peer
                                    withLong:(jlong)rid
                            withARApiMessage:(ARApiMessage *)message {
  
#line 198
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 201
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 205
  ACAbsContent *content;
  @try {
    content = ACAbsContent_fromMessageWithARApiMessage_(message);
  }
  @catch (
#line 208
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    return;
  }
  
#line 214
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_MessageContentUpdated_initWithLong_withACAbsContent_(rid, content)];
}


#line 218
- (void)onMessageDeleteWithARApiPeer:(ARApiPeer *)_peer
                    withJavaUtilList:(id<JavaUtilList>)rids {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 222
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 227
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_MessagesDeleted_initWithJavaUtilList_(rids)];
}


#line 233
- (void)onChatClearWithARApiPeer:(ARApiPeer *)_peer {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 237
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 242
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_ClearConversation_init()];
}


#line 248
- (void)onChatDeleteWithARApiPeer:(ARApiPeer *)_peer {
  ACPeer *peer = ACEntityConverter_convertWithARApiPeer_(_peer);
  
#line 252
  if (![self isValidPeerWithACPeer:peer]) {
    return;
  }
  
#line 257
  [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_DeleteConversation_init()];
}


#line 263
- (void)onDialogsLoadedWithARResponseLoadDialogs:(ARResponseLoadDialogs *)dialogsResponse {
  
#line 267
  JavaUtilArrayList *dialogs = new_JavaUtilArrayList_init();
  
#line 269
  jlong maxLoadedDate = JavaLangLong_MAX_VALUE;
  
#line 271
  for (ARApiDialog * __strong dialog in nil_chk([((ARResponseLoadDialogs *) nil_chk(dialogsResponse)) getDialogs])) {
    
#line 273
    maxLoadedDate = JavaLangMath_minWithLong_withLong_([((ARApiDialog *) nil_chk(dialog)) getSortDate], maxLoadedDate);
    
#line 275
    ACPeer *peer = ACEntityConverter_convertWithARApiPeer_([dialog getPeer]);
    
#line 277
    ACAbsContent *msgContent = nil;
    @try {
      msgContent = ACAbsContent_fromMessageWithARApiMessage_([dialog getMessage]);
    }
    @catch (
#line 280
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
    
#line 284
    if (msgContent == nil) {
      continue;
    }
    
#line 288
    [dialogs addWithId:new_ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(peer, [dialog getUnreadCount], [dialog getSortDate],
#line 289
    [dialog getRid], [dialog getDate], [dialog getSenderUid], msgContent, ACEntityConverter_convertWithARApiMessageStateEnum_([dialog getState]))];
  }
  
#line 293
  if ([dialogs size] > 0) {
    [((ARActorRef *) nil_chk([self dialogsActor])) sendWithId:new_ACDialogsActor_HistoryLoaded_initWithJavaUtilList_(dialogs)];
  }
  else {
    
#line 296
    [((ACAppStateModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getAppStateModule])) onDialogsLoaded];
  }
  
#line 300
  [((ARActorRef *) nil_chk([self dialogsHistoryActor])) sendWithId:new_ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_([((id<JavaUtilList>) nil_chk([dialogsResponse getDialogs])) size],
#line 301
  maxLoadedDate)];
}


#line 305
- (void)onMessagesLoadedWithACPeer:(ACPeer *)peer
         withARResponseLoadHistory:(ARResponseLoadHistory *)historyResponse {
  JavaUtilArrayList *messages = new_JavaUtilArrayList_init();
  jlong maxLoadedDate = JavaLangLong_MAX_VALUE;
  for (ARApiHistoryMessage * __strong historyMessage in nil_chk([((ARResponseLoadHistory *) nil_chk(historyResponse)) getHistory])) {
    
#line 310
    maxLoadedDate = JavaLangMath_minWithLong_withLong_([((ARApiHistoryMessage *) nil_chk(historyMessage)) getDate], maxLoadedDate);
    
#line 312
    ACAbsContent *content = nil;
    @try {
      content = ACAbsContent_fromMessageWithARApiMessage_([historyMessage getMessage]);
    }
    @catch (
#line 315
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
    if (content == nil) {
      continue;
    }
    ACMessageStateEnum *state = ACEntityConverter_convertWithARApiMessageStateEnum_([historyMessage getState]);
    
#line 323
    [messages addWithId:new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_([historyMessage getRid], [historyMessage getDate],
#line 324
    [historyMessage getDate], [historyMessage getSenderUid],
#line 325
    state, content)];
  }
  
#line 329
  if ([messages size] > 0) {
    [((ARActorRef *) nil_chk([self conversationActorWithACPeer:peer])) sendWithId:new_ACConversationActor_HistoryLoaded_initWithJavaUtilList_(messages)];
  }
  
#line 334
  [((ARActorRef *) nil_chk([self conversationHistoryActorWithACPeer:peer])) sendWithId:new_ACConversationHistoryActor_LoadedMore_initWithInt_withLong_([((id<JavaUtilList>) nil_chk([historyResponse getHistory])) size],
#line 335
  maxLoadedDate)];
}


#line 338
- (void)onCountersChangedWithARApiAppCounters:(ARApiAppCounters *)counters {
  [((ACAppStateModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getAppStateModule])) onCountersChangedWithARApiAppCounters:counters];
}

- (void)onChatArchivedWithACPeer:(ACPeer *)peer {
}


#line 346
- (void)onChatRestoredWithACPeer:(ACPeer *)peer {
}


#line 350
- (void)onChatGroupsChangedWithJavaUtilList:(id<JavaUtilList>)groups {
  [((ARActorRef *) nil_chk([((ACMessagesModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getMessagesModule])) getDialogsGroupedActor])) sendWithId:new_ACGroupedDialogsActor_GroupedDialogsChanged_initWithJavaUtilList_(
#line 352
  groups)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "MessagesProcessor", NULL, 0x1, NULL, NULL },
    { "onMessagesWithARApiPeer:withJavaUtilList:", "onMessages", "V", 0x1, NULL, NULL },
    { "onMessageWithARApiPeer:withInt:withLong:withLong:withARApiMessage:", "onMessage", "V", 0x1, NULL, NULL },
    { "onUserRegisteredWithLong:withInt:withLong:", "onUserRegistered", "V", 0x1, NULL, NULL },
    { "onMessageReadWithARApiPeer:withLong:", "onMessageRead", "V", 0x1, NULL, NULL },
    { "onMessageReceivedWithARApiPeer:withLong:", "onMessageReceived", "V", 0x1, NULL, NULL },
    { "onMessageReadByMeWithARApiPeer:withLong:", "onMessageReadByMe", "V", 0x1, NULL, NULL },
    { "onMessageSentWithARApiPeer:withLong:withLong:", "onMessageSent", "V", 0x1, NULL, NULL },
    { "onMessageContentChangedWithARApiPeer:withLong:withARApiMessage:", "onMessageContentChanged", "V", 0x1, NULL, NULL },
    { "onMessageDeleteWithARApiPeer:withJavaUtilList:", "onMessageDelete", "V", 0x1, NULL, NULL },
    { "onChatClearWithARApiPeer:", "onChatClear", "V", 0x1, NULL, NULL },
    { "onChatDeleteWithARApiPeer:", "onChatDelete", "V", 0x1, NULL, NULL },
    { "onDialogsLoadedWithARResponseLoadDialogs:", "onDialogsLoaded", "V", 0x1, NULL, NULL },
    { "onMessagesLoadedWithACPeer:withARResponseLoadHistory:", "onMessagesLoaded", "V", 0x1, NULL, NULL },
    { "onCountersChangedWithARApiAppCounters:", "onCountersChanged", "V", 0x1, NULL, NULL },
    { "onChatArchivedWithACPeer:", "onChatArchived", "V", 0x1, NULL, NULL },
    { "onChatRestoredWithACPeer:", "onChatRestored", "V", 0x1, NULL, NULL },
    { "onChatGroupsChangedWithJavaUtilList:", "onChatGroupsChanged", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACMessagesProcessor = { 2, "MessagesProcessor", "im.actor.core.modules.updates", NULL, 0x1, 18, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACMessagesProcessor;
}

@end


#line 43
void ACMessagesProcessor_initWithACModuleContext_(ACMessagesProcessor *self, id<ACModuleContext> context) {
  (void) ACAbsModule_initWithACModuleContext_(self, context);
}


#line 43
ACMessagesProcessor *new_ACMessagesProcessor_initWithACModuleContext_(id<ACModuleContext> context) {
  ACMessagesProcessor *self = [ACMessagesProcessor alloc];
  ACMessagesProcessor_initWithACModuleContext_(self, context);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACMessagesProcessor)

#pragma clang diagnostic pop

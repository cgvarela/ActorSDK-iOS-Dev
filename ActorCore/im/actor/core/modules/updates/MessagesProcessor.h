//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/MessagesProcessor.java
//

#ifndef _ImActorCoreModulesUpdatesMessagesProcessor_H_
#define _ImActorCoreModulesUpdatesMessagesProcessor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/AbsModule.h>

@class ACPeer;
@class ARApiAppCounters;
@class ARApiMessage;
@class ARApiPeer;
@class ARResponseLoadDialogs;
@class ARResponseLoadHistory;
@protocol ACModuleContext;
@protocol JavaUtilList;

@interface ACMessagesProcessor : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onChatArchivedWithACPeer:(ACPeer *)peer;

- (void)onChatClearWithARApiPeer:(ARApiPeer *)_peer;

- (void)onChatDeleteWithARApiPeer:(ARApiPeer *)_peer;

- (void)onChatGroupsChangedWithJavaUtilList:(id<JavaUtilList>)groups;

- (void)onChatRestoredWithACPeer:(ACPeer *)peer;

- (void)onCountersChangedWithARApiAppCounters:(ARApiAppCounters *)counters;

- (void)onDialogsLoadedWithARResponseLoadDialogs:(ARResponseLoadDialogs *)dialogsResponse;

- (void)onMessageWithARApiPeer:(ARApiPeer *)_peer
                       withInt:(jint)senderUid
                      withLong:(jlong)date
                      withLong:(jlong)rid
              withARApiMessage:(ARApiMessage *)content;

- (void)onMessageContentChangedWithARApiPeer:(ARApiPeer *)_peer
                                    withLong:(jlong)rid
                            withARApiMessage:(ARApiMessage *)message;

- (void)onMessageDeleteWithARApiPeer:(ARApiPeer *)_peer
                    withJavaUtilList:(id<JavaUtilList>)rids;

- (void)onMessageReadWithARApiPeer:(ARApiPeer *)_peer
                          withLong:(jlong)startDate;

- (void)onMessageReadByMeWithARApiPeer:(ARApiPeer *)_peer
                              withLong:(jlong)startDate;

- (void)onMessageReceivedWithARApiPeer:(ARApiPeer *)_peer
                              withLong:(jlong)startDate;

- (void)onMessagesWithARApiPeer:(ARApiPeer *)_peer
               withJavaUtilList:(id<JavaUtilList>)messages;

- (void)onMessageSentWithARApiPeer:(ARApiPeer *)_peer
                          withLong:(jlong)rid
                          withLong:(jlong)date;

- (void)onMessagesLoadedWithACPeer:(ACPeer *)peer
         withARResponseLoadHistory:(ARResponseLoadHistory *)historyResponse;

- (void)onUserRegisteredWithLong:(jlong)rid
                         withInt:(jint)uid
                        withLong:(jlong)date;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessagesProcessor)

FOUNDATION_EXPORT void ACMessagesProcessor_initWithACModuleContext_(ACMessagesProcessor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACMessagesProcessor *new_ACMessagesProcessor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessagesProcessor)

@compatibility_alias ImActorCoreModulesUpdatesMessagesProcessor ACMessagesProcessor;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesMessagesProcessor_H_

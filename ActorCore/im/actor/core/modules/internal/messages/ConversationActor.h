//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/ConversationActor.java
//

#ifndef _ImActorCoreModulesInternalMessagesConversationActor_H_
#define _ImActorCoreModulesInternalMessagesConversationActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/utils/ModuleActor.h"

@class ACAbsContent;
@class ACPeer;
@class JavaUtilArrayList;
@protocol ACModuleContext;
@protocol JavaUtilList;

/*!
 @brief Actor for managing any Conversation
 <p></p>
 Possible bugs
 1) Sometimes actor receive read history with old read/receive states.
 May be we need to update it manually during history load?
 2) Sometimes conversation may become out of sync with dialog list.
 This bug will be auto-heal on any new message.
 */
@interface ACConversationActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
           withACModuleContext:(id<ACModuleContext>)context;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor)

FOUNDATION_EXPORT void ACConversationActor_initWithACPeer_withACModuleContext_(ACConversationActor *self, ACPeer *peer, id<ACModuleContext> context);

FOUNDATION_EXPORT ACConversationActor *new_ACConversationActor_initWithACPeer_withACModuleContext_(ACPeer *peer, id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor)

@compatibility_alias ImActorCoreModulesInternalMessagesConversationActor ACConversationActor;

@interface ACConversationActor_MessageContentUpdated : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid
            withACAbsContent:(ACAbsContent *)content;

- (ACAbsContent *)getContent;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessageContentUpdated)

FOUNDATION_EXPORT void ACConversationActor_MessageContentUpdated_initWithLong_withACAbsContent_(ACConversationActor_MessageContentUpdated *self, jlong rid, ACAbsContent *content);

FOUNDATION_EXPORT ACConversationActor_MessageContentUpdated *new_ACConversationActor_MessageContentUpdated_initWithLong_withACAbsContent_(jlong rid, ACAbsContent *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessageContentUpdated)

@interface ACConversationActor_HistoryLoaded : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)messages;

- (id<JavaUtilList>)getMessages;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_HistoryLoaded)

FOUNDATION_EXPORT void ACConversationActor_HistoryLoaded_initWithJavaUtilList_(ACConversationActor_HistoryLoaded *self, id<JavaUtilList> messages);

FOUNDATION_EXPORT ACConversationActor_HistoryLoaded *new_ACConversationActor_HistoryLoaded_initWithJavaUtilList_(id<JavaUtilList> messages) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_HistoryLoaded)

@interface ACConversationActor_MessageReceived : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)date;

- (jlong)getDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessageReceived)

FOUNDATION_EXPORT void ACConversationActor_MessageReceived_initWithLong_(ACConversationActor_MessageReceived *self, jlong date);

FOUNDATION_EXPORT ACConversationActor_MessageReceived *new_ACConversationActor_MessageReceived_initWithLong_(jlong date) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessageReceived)

@interface ACConversationActor_MessageRead : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)date;

- (jlong)getDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessageRead)

FOUNDATION_EXPORT void ACConversationActor_MessageRead_initWithLong_(ACConversationActor_MessageRead *self, jlong date);

FOUNDATION_EXPORT ACConversationActor_MessageRead *new_ACConversationActor_MessageRead_initWithLong_(jlong date) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessageRead)

@interface ACConversationActor_MessageSent : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date;

- (jlong)getDate;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessageSent)

FOUNDATION_EXPORT void ACConversationActor_MessageSent_initWithLong_withLong_(ACConversationActor_MessageSent *self, jlong rid, jlong date);

FOUNDATION_EXPORT ACConversationActor_MessageSent *new_ACConversationActor_MessageSent_initWithLong_withLong_(jlong rid, jlong date) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessageSent)

@interface ACConversationActor_MessageReadByMe : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)date;

- (jlong)getDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessageReadByMe)

FOUNDATION_EXPORT void ACConversationActor_MessageReadByMe_initWithLong_(ACConversationActor_MessageReadByMe *self, jlong date);

FOUNDATION_EXPORT ACConversationActor_MessageReadByMe *new_ACConversationActor_MessageReadByMe_initWithLong_(jlong date) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessageReadByMe)

@interface ACConversationActor_MessageError : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessageError)

FOUNDATION_EXPORT void ACConversationActor_MessageError_initWithLong_(ACConversationActor_MessageError *self, jlong rid);

FOUNDATION_EXPORT ACConversationActor_MessageError *new_ACConversationActor_MessageError_initWithLong_(jlong rid) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessageError)

@interface ACConversationActor_MessagesDeleted : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)rids;

- (id<JavaUtilList>)getRids;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_MessagesDeleted)

FOUNDATION_EXPORT void ACConversationActor_MessagesDeleted_initWithJavaUtilList_(ACConversationActor_MessagesDeleted *self, id<JavaUtilList> rids);

FOUNDATION_EXPORT ACConversationActor_MessagesDeleted *new_ACConversationActor_MessagesDeleted_initWithJavaUtilList_(id<JavaUtilList> rids) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_MessagesDeleted)

@interface ACConversationActor_ClearConversation : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_ClearConversation)

FOUNDATION_EXPORT void ACConversationActor_ClearConversation_init(ACConversationActor_ClearConversation *self);

FOUNDATION_EXPORT ACConversationActor_ClearConversation *new_ACConversationActor_ClearConversation_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_ClearConversation)

@interface ACConversationActor_DeleteConversation : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_DeleteConversation)

FOUNDATION_EXPORT void ACConversationActor_DeleteConversation_init(ACConversationActor_DeleteConversation *self);

FOUNDATION_EXPORT ACConversationActor_DeleteConversation *new_ACConversationActor_DeleteConversation_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_DeleteConversation)

@interface ACConversationActor_Messages : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilArrayList:(JavaUtilArrayList *)messages;

- (JavaUtilArrayList *)getMessages;

@end

J2OBJC_EMPTY_STATIC_INIT(ACConversationActor_Messages)

FOUNDATION_EXPORT void ACConversationActor_Messages_initWithJavaUtilArrayList_(ACConversationActor_Messages *self, JavaUtilArrayList *messages);

FOUNDATION_EXPORT ACConversationActor_Messages *new_ACConversationActor_Messages_initWithJavaUtilArrayList_(JavaUtilArrayList *messages) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACConversationActor_Messages)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesConversationActor_H_

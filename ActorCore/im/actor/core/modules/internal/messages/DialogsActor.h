//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsActor.java
//

#ifndef _ImActorCoreModulesInternalMessagesDialogsActor_H_
#define _ImActorCoreModulesInternalMessagesDialogsActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/utils/ModuleActor.h"

@class ACAbsContent;
@class ACGroup;
@class ACMessage;
@class ACMessageStateEnum;
@class ACPeer;
@class ACUser;
@protocol ACModuleContext;
@protocol JavaUtilList;

@interface ACDialogsActor : ACModuleActor

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor)

FOUNDATION_EXPORT void ACDialogsActor_initWithACModuleContext_(ACDialogsActor *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACDialogsActor *new_ACDialogsActor_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor)

@compatibility_alias ImActorCoreModulesInternalMessagesDialogsActor ACDialogsActor;

@interface ACDialogsActor_InMessage : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                 withACMessage:(ACMessage *)message
                       withInt:(jint)counter;

- (jint)getCounter;

- (ACMessage *)getMessage;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_InMessage)

FOUNDATION_EXPORT void ACDialogsActor_InMessage_initWithACPeer_withACMessage_withInt_(ACDialogsActor_InMessage *self, ACPeer *peer, ACMessage *message, jint counter);

FOUNDATION_EXPORT ACDialogsActor_InMessage *new_ACDialogsActor_InMessage_initWithACPeer_withACMessage_withInt_(ACPeer *peer, ACMessage *message, jint counter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_InMessage)

@interface ACDialogsActor_CounterChanged : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                       withInt:(jint)counter;

- (jint)getCounter;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_CounterChanged)

FOUNDATION_EXPORT void ACDialogsActor_CounterChanged_initWithACPeer_withInt_(ACDialogsActor_CounterChanged *self, ACPeer *peer, jint counter);

FOUNDATION_EXPORT ACDialogsActor_CounterChanged *new_ACDialogsActor_CounterChanged_initWithACPeer_withInt_(ACPeer *peer, jint counter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_CounterChanged)

@interface ACDialogsActor_UserChanged : NSObject

#pragma mark Public

- (instancetype)initWithACUser:(ACUser *)user;

- (ACUser *)getUser;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_UserChanged)

FOUNDATION_EXPORT void ACDialogsActor_UserChanged_initWithACUser_(ACDialogsActor_UserChanged *self, ACUser *user);

FOUNDATION_EXPORT ACDialogsActor_UserChanged *new_ACDialogsActor_UserChanged_initWithACUser_(ACUser *user) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_UserChanged)

@interface ACDialogsActor_GroupChanged : NSObject

#pragma mark Public

- (instancetype)initWithACGroup:(ACGroup *)group;

- (ACGroup *)getGroup;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_GroupChanged)

FOUNDATION_EXPORT void ACDialogsActor_GroupChanged_initWithACGroup_(ACDialogsActor_GroupChanged *self, ACGroup *group);

FOUNDATION_EXPORT ACDialogsActor_GroupChanged *new_ACDialogsActor_GroupChanged_initWithACGroup_(ACGroup *group) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_GroupChanged)

@interface ACDialogsActor_ChatClear : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_ChatClear)

FOUNDATION_EXPORT void ACDialogsActor_ChatClear_initWithACPeer_(ACDialogsActor_ChatClear *self, ACPeer *peer);

FOUNDATION_EXPORT ACDialogsActor_ChatClear *new_ACDialogsActor_ChatClear_initWithACPeer_(ACPeer *peer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_ChatClear)

@interface ACDialogsActor_ChatDelete : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_ChatDelete)

FOUNDATION_EXPORT void ACDialogsActor_ChatDelete_initWithACPeer_(ACDialogsActor_ChatDelete *self, ACPeer *peer);

FOUNDATION_EXPORT ACDialogsActor_ChatDelete *new_ACDialogsActor_ChatDelete_initWithACPeer_(ACPeer *peer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_ChatDelete)

@interface ACDialogsActor_MessageStateChanged : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)rid
        withACMessageStateEnum:(ACMessageStateEnum *)state;

- (ACPeer *)getPeer;

- (jlong)getRid;

- (ACMessageStateEnum *)getState;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_MessageStateChanged)

FOUNDATION_EXPORT void ACDialogsActor_MessageStateChanged_initWithACPeer_withLong_withACMessageStateEnum_(ACDialogsActor_MessageStateChanged *self, ACPeer *peer, jlong rid, ACMessageStateEnum *state);

FOUNDATION_EXPORT ACDialogsActor_MessageStateChanged *new_ACDialogsActor_MessageStateChanged_initWithACPeer_withLong_withACMessageStateEnum_(ACPeer *peer, jlong rid, ACMessageStateEnum *state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_MessageStateChanged)

@interface ACDialogsActor_MessageContentChanged : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)rid
              withACAbsContent:(ACAbsContent *)content;

- (ACAbsContent *)getContent;

- (ACPeer *)getPeer;

- (jlong)getRid;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_MessageContentChanged)

FOUNDATION_EXPORT void ACDialogsActor_MessageContentChanged_initWithACPeer_withLong_withACAbsContent_(ACDialogsActor_MessageContentChanged *self, ACPeer *peer, jlong rid, ACAbsContent *content);

FOUNDATION_EXPORT ACDialogsActor_MessageContentChanged *new_ACDialogsActor_MessageContentChanged_initWithACPeer_withLong_withACAbsContent_(ACPeer *peer, jlong rid, ACAbsContent *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_MessageContentChanged)

@interface ACDialogsActor_MessageDeleted : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                 withACMessage:(ACMessage *)topMessage;

- (ACPeer *)getPeer;

- (ACMessage *)getTopMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_MessageDeleted)

FOUNDATION_EXPORT void ACDialogsActor_MessageDeleted_initWithACPeer_withACMessage_(ACDialogsActor_MessageDeleted *self, ACPeer *peer, ACMessage *topMessage);

FOUNDATION_EXPORT ACDialogsActor_MessageDeleted *new_ACDialogsActor_MessageDeleted_initWithACPeer_withACMessage_(ACPeer *peer, ACMessage *topMessage) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_MessageDeleted)

@interface ACDialogsActor_HistoryLoaded : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)history;

- (id<JavaUtilList>)getHistory;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsActor_HistoryLoaded)

FOUNDATION_EXPORT void ACDialogsActor_HistoryLoaded_initWithJavaUtilList_(ACDialogsActor_HistoryLoaded *self, id<JavaUtilList> history);

FOUNDATION_EXPORT ACDialogsActor_HistoryLoaded *new_ACDialogsActor_HistoryLoaded_initWithJavaUtilList_(id<JavaUtilList> history) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsActor_HistoryLoaded)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesDialogsActor_H_

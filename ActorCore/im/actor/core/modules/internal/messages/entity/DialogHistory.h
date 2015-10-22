//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/DialogHistory.java
//

#ifndef _ImActorCoreModulesInternalMessagesEntityDialogHistory_H_
#define _ImActorCoreModulesInternalMessagesEntityDialogHistory_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACAbsContent;
@class ACMessageStateEnum;
@class ACPeer;

@interface ACDialogHistory : NSObject

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
                       withInt:(jint)unreadCount
                      withLong:(jlong)sortDate
                      withLong:(jlong)rid
                      withLong:(jlong)date
                       withInt:(jint)senderId
              withACAbsContent:(ACAbsContent *)content
        withACMessageStateEnum:(ACMessageStateEnum *)status;

- (ACAbsContent *)getContent;

- (jlong)getDate;

- (ACPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderId;

- (jlong)getSortDate;

- (ACMessageStateEnum *)getStatus;

- (jint)getUnreadCount;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogHistory)

FOUNDATION_EXPORT void ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(ACDialogHistory *self, ACPeer *peer, jint unreadCount, jlong sortDate, jlong rid, jlong date, jint senderId, ACAbsContent *content, ACMessageStateEnum *status);

FOUNDATION_EXPORT ACDialogHistory *new_ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(ACPeer *peer, jint unreadCount, jlong sortDate, jlong rid, jlong date, jint senderId, ACAbsContent *content, ACMessageStateEnum *status) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogHistory)

@compatibility_alias ImActorCoreModulesInternalMessagesEntityDialogHistory ACDialogHistory;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesEntityDialogHistory_H_

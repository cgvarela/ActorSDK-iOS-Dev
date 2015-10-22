//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/DialogHistory.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/entity/MessageState.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/entity/content/AbsContent.h"
#include "im/actor/core/modules/internal/messages/entity/DialogHistory.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACDialogHistory () {
 @public
  ACPeer *peer_;
  jint unreadCount_;
  jlong sortDate_;
  jlong rid_;
  jlong date_;
  jint senderId_;
  ACAbsContent *content_;
  ACMessageStateEnum *status_;
}

@end

J2OBJC_FIELD_SETTER(ACDialogHistory, peer_, ACPeer *)
J2OBJC_FIELD_SETTER(ACDialogHistory, content_, ACAbsContent *)
J2OBJC_FIELD_SETTER(ACDialogHistory, status_, ACMessageStateEnum *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/DialogHistory.java"


#line 11
@implementation ACDialogHistory


#line 22
- (instancetype)initWithACPeer:(ACPeer *)peer
                       withInt:(jint)unreadCount
                      withLong:(jlong)sortDate
                      withLong:(jlong)rid
                      withLong:(jlong)date
                       withInt:(jint)senderId
              withACAbsContent:(ACAbsContent *)content
        withACMessageStateEnum:(ACMessageStateEnum *)status {
  ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(self, peer, unreadCount, sortDate, rid, date, senderId, content, status);
  return self;
}

- (ACPeer *)getPeer {
  return peer_;
}

- (jint)getUnreadCount {
  return unreadCount_;
}

- (jlong)getSortDate {
  return sortDate_;
}

- (jlong)getRid {
  return rid_;
}

- (jlong)getDate {
  return date_;
}

- (jint)getSenderId {
  return senderId_;
}

- (ACAbsContent *)getContent {
  return content_;
}

- (ACMessageStateEnum *)getStatus {
  return status_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACPeer:withInt:withLong:withLong:withLong:withInt:withACAbsContent:withACMessageStateEnum:", "DialogHistory", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.entity.Peer;", 0x1, NULL, NULL },
    { "getUnreadCount", NULL, "I", 0x1, NULL, NULL },
    { "getSortDate", NULL, "J", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "getSenderId", NULL, "I", 0x1, NULL, NULL },
    { "getContent", NULL, "Lim.actor.core.entity.content.AbsContent;", 0x1, NULL, NULL },
    { "getStatus", NULL, "Lim.actor.core.entity.MessageState;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "peer_", NULL, 0x12, "Lim.actor.core.entity.Peer;", NULL, NULL, .constantValue.asLong = 0 },
    { "unreadCount_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "sortDate_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "senderId_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "content_", NULL, 0x12, "Lim.actor.core.entity.content.AbsContent;", NULL, NULL, .constantValue.asLong = 0 },
    { "status_", NULL, 0x12, "Lim.actor.core.entity.MessageState;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACDialogHistory = { 2, "DialogHistory", "im.actor.core.modules.internal.messages.entity", NULL, 0x1, 9, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACDialogHistory;
}

@end


#line 22
void ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(ACDialogHistory *self, ACPeer *peer, jint unreadCount, jlong sortDate, jlong rid, jlong date, jint senderId, ACAbsContent *content, ACMessageStateEnum *status) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->unreadCount_ = unreadCount;
  self->sortDate_ = sortDate;
  self->rid_ = rid;
  self->date_ = date;
  self->senderId_ = senderId;
  self->content_ = content;
  self->status_ = status;
}


#line 22
ACDialogHistory *new_ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(ACPeer *peer, jint unreadCount, jlong sortDate, jlong rid, jlong date, jint senderId, ACAbsContent *content, ACMessageStateEnum *status) {
  ACDialogHistory *self = [ACDialogHistory alloc];
  ACDialogHistory_initWithACPeer_withInt_withLong_withLong_withLong_withInt_withACAbsContent_withACMessageStateEnum_(self, peer, unreadCount, sortDate, rid, date, senderId, content, status);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogHistory)

#pragma clang diagnostic pop

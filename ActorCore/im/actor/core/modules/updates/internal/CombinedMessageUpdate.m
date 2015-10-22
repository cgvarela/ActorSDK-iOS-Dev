//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/CombinedMessageUpdate.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/modules/updates/internal/CombinedMessageUpdate.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACCombinedMessageUpdate () {
 @public
  JavaUtilArrayList *messages_;
  jlong receivedKey_;
  jlong readKey_;
}

@end

J2OBJC_FIELD_SETTER(ACCombinedMessageUpdate, messages_, JavaUtilArrayList *)

@interface ACCombinedMessageUpdate_CombinedMessage () {
 @public
  jlong rid_;
  jint sender_;
  jlong date_;
  ARApiMessage *message_;
}

@end

J2OBJC_FIELD_SETTER(ACCombinedMessageUpdate_CombinedMessage, message_, ARApiMessage *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/CombinedMessageUpdate.java"


#line 11
@implementation ACCombinedMessageUpdate


#line 17
- (jlong)getReceivedKey {
  return receivedKey_;
}

- (void)setReceivedKeyWithLong:(jlong)receivedKey {
  self->receivedKey_ = receivedKey;
}

- (jlong)getReadKey {
  return readKey_;
}

- (void)setReadKeyWithLong:(jlong)readKey {
  self->readKey_ = readKey;
}

- (JavaUtilArrayList *)getMessages {
  return messages_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACCombinedMessageUpdate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getReceivedKey", NULL, "J", 0x1, NULL, NULL },
    { "setReceivedKeyWithLong:", "setReceivedKey", "V", 0x1, NULL, NULL },
    { "getReadKey", NULL, "J", 0x1, NULL, NULL },
    { "setReadKeyWithLong:", "setReadKey", "V", 0x1, NULL, NULL },
    { "getMessages", NULL, "Ljava.util.ArrayList;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "messages_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/core/modules/updates/internal/CombinedMessageUpdate$CombinedMessage;>;", .constantValue.asLong = 0 },
    { "receivedKey_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "readKey_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.updates.internal.CombinedMessageUpdate$CombinedMessage;"};
  static const J2ObjcClassInfo _ACCombinedMessageUpdate = { 2, "CombinedMessageUpdate", "im.actor.core.modules.updates.internal", NULL, 0x1, 6, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ACCombinedMessageUpdate;
}

@end

void ACCombinedMessageUpdate_init(ACCombinedMessageUpdate *self) {
  (void) NSObject_init(self);
  self->messages_ = new_JavaUtilArrayList_init();
}

ACCombinedMessageUpdate *new_ACCombinedMessageUpdate_init() {
  ACCombinedMessageUpdate *self = [ACCombinedMessageUpdate alloc];
  ACCombinedMessageUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACCombinedMessageUpdate)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/CombinedMessageUpdate.java"


#line 37
@implementation ACCombinedMessageUpdate_CombinedMessage


#line 43
- (instancetype)initWithLong:(jlong)rid
                     withInt:(jint)sender
                    withLong:(jlong)date
            withARApiMessage:(ARApiMessage *)message {
  ACCombinedMessageUpdate_CombinedMessage_initWithLong_withInt_withLong_withARApiMessage_(self, rid, sender, date, message);
  return self;
}


#line 50
- (jlong)getRid {
  return rid_;
}

- (jint)getSender {
  return sender_;
}

- (jlong)getDate {
  return date_;
}

- (ARApiMessage *)getMessage {
  return message_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withInt:withLong:withARApiMessage:", "CombinedMessage", NULL, 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getSender", NULL, "I", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "getMessage", NULL, "Lim.actor.core.api.ApiMessage;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "sender_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "message_", NULL, 0x2, "Lim.actor.core.api.ApiMessage;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACCombinedMessageUpdate_CombinedMessage = { 2, "CombinedMessage", "im.actor.core.modules.updates.internal", "CombinedMessageUpdate", 0x9, 5, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACCombinedMessageUpdate_CombinedMessage;
}

@end


#line 43
void ACCombinedMessageUpdate_CombinedMessage_initWithLong_withInt_withLong_withARApiMessage_(ACCombinedMessageUpdate_CombinedMessage *self, jlong rid, jint sender, jlong date, ARApiMessage *message) {
  (void) NSObject_init(self);
  
#line 44
  self->rid_ = rid;
  self->sender_ = sender;
  self->date_ = date;
  self->message_ = message;
}


#line 43
ACCombinedMessageUpdate_CombinedMessage *new_ACCombinedMessageUpdate_CombinedMessage_initWithLong_withInt_withLong_withARApiMessage_(jlong rid, jint sender, jlong date, ARApiMessage *message) {
  ACCombinedMessageUpdate_CombinedMessage *self = [ACCombinedMessageUpdate_CombinedMessage alloc];
  ACCombinedMessageUpdate_CombinedMessage_initWithLong_withInt_withLong_withARApiMessage_(self, rid, sender, date, message);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACCombinedMessageUpdate_CombinedMessage)

#pragma clang diagnostic pop

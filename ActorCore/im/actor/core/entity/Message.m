//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Message.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/Message.h"
#include "im/actor/core/entity/MessageState.h"
#include "im/actor/core/entity/content/AbsContent.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACMessage () {
 @public
  jlong rid_;
  jlong sortDate_;
  jlong date_;
  jint senderId_;
  ACMessageStateEnum *messageState_;
  ACAbsContent *content_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ACMessage, messageState_, ACMessageStateEnum *)
J2OBJC_FIELD_SETTER(ACMessage, content_, ACAbsContent *)

__attribute__((unused)) static void ACMessage_init(ACMessage *self);

__attribute__((unused)) static ACMessage *new_ACMessage_init() NS_RETURNS_RETAINED;

@interface ACMessage_$1 : NSObject < ARBserCreator >

- (ACMessage *)createInstance;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessage_$1)

__attribute__((unused)) static void ACMessage_$1_init(ACMessage_$1 *self);

__attribute__((unused)) static ACMessage_$1 *new_ACMessage_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessage_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Message.java"

J2OBJC_INITIALIZED_DEFN(ACMessage)

id<ARBserCreator> ACMessage_CREATOR_;
NSString *ACMessage_ENTITY_NAME_ = @"Message";


#line 19
@implementation ACMessage

@synthesize rid = rid_;
@synthesize sortDate = sortDate_;
@synthesize date = date_;
@synthesize senderId = senderId_;
@synthesize messageState = messageState_;
@synthesize content = content_;

+ (id<ARBserCreator>)CREATOR {
  return ACMessage_CREATOR_;
}

+ (NSString *)ENTITY_NAME {
  return ACMessage_ENTITY_NAME_;
}


#line 21
+ (ACMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ACMessage_fromBytesWithByteArray_(data);
}


#line 47
- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)sortDate
                    withLong:(jlong)date
                     withInt:(jint)senderId
      withACMessageStateEnum:(ACMessageStateEnum *)messageState
            withACAbsContent:(ACAbsContent *)content {
  ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(self, rid, sortDate, date, senderId, messageState, content);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 56
- (instancetype)init {
  ACMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 60
- (jlong)getRid {
  return rid_;
}

- (jlong)getSortDate {
  return sortDate_;
}

- (jlong)getDate {
  return date_;
}

- (jint)getSenderId {
  return senderId_;
}

- (ACMessageStateEnum *)getMessageState {
  return messageState_;
}

- (jboolean)isSent {
  return messageState_ == JreLoadStatic(ACMessageStateEnum, SENT) || messageState_ == JreLoadStatic(ACMessageStateEnum, SENT);
}

- (jboolean)isReceivedOrSent {
  return messageState_ == JreLoadStatic(ACMessageStateEnum, SENT) || messageState_ == JreLoadStatic(ACMessageStateEnum, RECEIVED);
}

- (jboolean)isPendingOrSent {
  return messageState_ == JreLoadStatic(ACMessageStateEnum, SENT) || messageState_ == JreLoadStatic(ACMessageStateEnum, PENDING);
}

- (jboolean)isOnServer {
  return messageState_ != JreLoadStatic(ACMessageStateEnum, ERROR) && messageState_ != JreLoadStatic(ACMessageStateEnum, PENDING);
}

- (ACAbsContent *)getContent {
  return content_;
}

- (ACMessage *)changeStateWithACMessageStateEnum:(ACMessageStateEnum *)messageState {
  return new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid_, sortDate_, date_, senderId_, messageState, content_);
}

- (ACMessage *)changeDateWithLong:(jlong)date {
  return new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid_, sortDate_, date, senderId_, messageState_, content_);
}

- (ACMessage *)changeAllDateWithLong:(jlong)date {
  return new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid_, date, date, senderId_, messageState_, content_);
}

- (ACMessage *)changeContentWithACAbsContent:(ACAbsContent *)content {
  return new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(rid_, sortDate_, date_, senderId_, messageState_, content);
}


#line 117
- (void)parseWithARBserValues:(ARBserValues *)values {
  rid_ = [((ARBserValues *) nil_chk(values)) getLongWithInt:1];
  sortDate_ = [values getLongWithInt:2];
  date_ = [values getLongWithInt:3];
  senderId_ = [values getIntWithInt:4];
  messageState_ = ACMessageStateEnum_fromValueWithInt_([values getIntWithInt:5]);
  content_ = ACAbsContent_parseWithByteArray_([values getBytesWithInt:6]);
}


#line 127
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:rid_];
  [writer writeLongWithInt:2 withLong:sortDate_];
  [writer writeLongWithInt:3 withLong:date_];
  [writer writeIntWithInt:4 withInt:senderId_];
  [writer writeIntWithInt:5 withInt:[((ACMessageStateEnum *) nil_chk(messageState_)) getValue]];
  [writer writeBytesWithInt:6 withByteArray:ACAbsContent_serializeWithACAbsContent_(content_)];
}


#line 137
- (jlong)getEngineId {
  return rid_;
}


#line 142
- (jlong)getEngineSort {
  return sortDate_;
}


#line 147
- (NSString *)getEngineSearch {
  return nil;
}

+ (void)initialize {
  if (self == [ACMessage class]) {
    ACMessage_CREATOR_ = new_ACMessage_$1_init();
    J2OBJC_SET_INITIALIZED(ACMessage)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.entity.Message;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithLong:withLong:withLong:withInt:withACMessageStateEnum:withACAbsContent:", "Message", NULL, 0x1, NULL, NULL },
    { "init", "Message", NULL, 0x2, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "getSortDate", NULL, "J", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "getSenderId", NULL, "I", 0x1, NULL, NULL },
    { "getMessageState", NULL, "Lim.actor.core.entity.MessageState;", 0x1, NULL, NULL },
    { "isSent", NULL, "Z", 0x1, NULL, NULL },
    { "isReceivedOrSent", NULL, "Z", 0x1, NULL, NULL },
    { "isPendingOrSent", NULL, "Z", 0x1, NULL, NULL },
    { "isOnServer", NULL, "Z", 0x1, NULL, NULL },
    { "getContent", NULL, "Lim.actor.core.entity.content.AbsContent;", 0x1, NULL, NULL },
    { "changeStateWithACMessageStateEnum:", "changeState", "Lim.actor.core.entity.Message;", 0x1, NULL, NULL },
    { "changeDateWithLong:", "changeDate", "Lim.actor.core.entity.Message;", 0x1, NULL, NULL },
    { "changeAllDateWithLong:", "changeAllDate", "Lim.actor.core.entity.Message;", 0x1, NULL, NULL },
    { "changeContentWithACAbsContent:", "changeContent", "Lim.actor.core.entity.Message;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getEngineId", NULL, "J", 0x1, NULL, NULL },
    { "getEngineSort", NULL, "J", 0x1, NULL, NULL },
    { "getEngineSearch", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CREATOR_", NULL, 0x19, "Lim.actor.runtime.bser.BserCreator;", &ACMessage_CREATOR_, "Lim/actor/runtime/bser/BserCreator<Lim/actor/core/entity/Message;>;", .constantValue.asLong = 0 },
    { "ENTITY_NAME_", NULL, 0x19, "Ljava.lang.String;", &ACMessage_ENTITY_NAME_, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "sortDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "senderId_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "messageState_", NULL, 0x2, "Lim.actor.core.entity.MessageState;", NULL, NULL, .constantValue.asLong = 0 },
    { "content_", NULL, 0x2, "Lim.actor.core.entity.content.AbsContent;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACMessage = { 2, "Message", "im.actor.core.entity", NULL, 0x1, 22, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACMessage;
}

@end


#line 21
ACMessage *ACMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ACMessage_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ACMessage_init(), data);
}


#line 47
void ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(ACMessage *self, jlong rid, jlong sortDate, jlong date, jint senderId, ACMessageStateEnum *messageState, ACAbsContent *content) {
  (void) ARBserObject_init(self);
  
#line 48
  self->rid_ = rid;
  self->sortDate_ = sortDate;
  self->date_ = date;
  self->senderId_ = senderId;
  self->messageState_ = messageState;
  self->content_ = content;
}


#line 47
ACMessage *new_ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(jlong rid, jlong sortDate, jlong date, jint senderId, ACMessageStateEnum *messageState, ACAbsContent *content) {
  ACMessage *self = [ACMessage alloc];
  ACMessage_initWithLong_withLong_withLong_withInt_withACMessageStateEnum_withACAbsContent_(self, rid, sortDate, date, senderId, messageState, content);
  return self;
}


#line 56
void ACMessage_init(ACMessage *self) {
  (void) ARBserObject_init(self);
}


#line 56
ACMessage *new_ACMessage_init() {
  ACMessage *self = [ACMessage alloc];
  ACMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACMessage)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Message.java"

@implementation ACMessage_$1


#line 27
- (ACMessage *)createInstance {
  return new_ACMessage_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACMessage_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createInstance", NULL, "Lim.actor.core.entity.Message;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACMessage_$1 = { 2, "", "im.actor.core.entity", "Message", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/bser/BserCreator<Lim/actor/core/entity/Message;>;" };
  return &_ACMessage_$1;
}

@end

void ACMessage_$1_init(ACMessage_$1 *self) {
  (void) NSObject_init(self);
}

ACMessage_$1 *new_ACMessage_$1_init() {
  ACMessage_$1 *self = [ACMessage_$1 alloc];
  ACMessage_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACMessage_$1)

#pragma clang diagnostic pop
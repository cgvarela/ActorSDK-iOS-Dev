//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/PlainCursor.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/modules/internal/messages/entity/PlainCursor.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPlainCursor () {
 @public
  ACPeer *peer_;
  jlong sortDate_;
  jlong pendingSortDate_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ACPlainCursor, peer_, ACPeer *)

__attribute__((unused)) static void ACPlainCursor_init(ACPlainCursor *self);

__attribute__((unused)) static ACPlainCursor *new_ACPlainCursor_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/PlainCursor.java"


#line 15
@implementation ACPlainCursor

+ (ACPlainCursor *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ACPlainCursor_fromBytesWithByteArray_(data);
}


#line 25
- (instancetype)initWithACPeer:(ACPeer *)peer
                      withLong:(jlong)sortDate
                      withLong:(jlong)pendingSortDate {
  ACPlainCursor_initWithACPeer_withLong_withLong_(self, peer, sortDate, pendingSortDate);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ACPlainCursor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 35
- (ACPeer *)getPeer {
  return peer_;
}

- (jlong)getSortDate {
  return sortDate_;
}

- (jlong)getPendingSortDate {
  return pendingSortDate_;
}

- (ACPlainCursor *)changeSortDateWithLong:(jlong)date {
  return new_ACPlainCursor_initWithACPeer_withLong_withLong_(peer_, date, pendingSortDate_);
}

- (ACPlainCursor *)changePendingSortDateWithLong:(jlong)pendingDate {
  return new_ACPlainCursor_initWithACPeer_withLong_withLong_(peer_, sortDate_, pendingDate);
}


#line 56
- (void)parseWithARBserValues:(ARBserValues *)values {
  peer_ = ACPeer_fromUniqueIdWithLong_([((ARBserValues *) nil_chk(values)) getLongWithInt:1]);
  sortDate_ = [values getLongWithInt:2];
  pendingSortDate_ = [values getLongWithInt:3];
}


#line 63
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:[((ACPeer *) nil_chk(peer_)) getUnuqueId]];
  [writer writeLongWithInt:2 withLong:sortDate_];
  [writer writeLongWithInt:3 withLong:pendingSortDate_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.modules.internal.messages.entity.PlainCursor;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithACPeer:withLong:withLong:", "PlainCursor", NULL, 0x1, NULL, NULL },
    { "init", "PlainCursor", NULL, 0x2, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.entity.Peer;", 0x1, NULL, NULL },
    { "getSortDate", NULL, "J", 0x1, NULL, NULL },
    { "getPendingSortDate", NULL, "J", 0x1, NULL, NULL },
    { "changeSortDateWithLong:", "changeSortDate", "Lim.actor.core.modules.internal.messages.entity.PlainCursor;", 0x1, NULL, NULL },
    { "changePendingSortDateWithLong:", "changePendingSortDate", "Lim.actor.core.modules.internal.messages.entity.PlainCursor;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "peer_", NULL, 0x2, "Lim.actor.core.entity.Peer;", NULL, NULL, .constantValue.asLong = 0 },
    { "sortDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "pendingSortDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACPlainCursor = { 2, "PlainCursor", "im.actor.core.modules.internal.messages.entity", NULL, 0x1, 10, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPlainCursor;
}

@end


#line 17
ACPlainCursor *ACPlainCursor_fromBytesWithByteArray_(IOSByteArray *data) {
  ACPlainCursor_initialize();
  
#line 18
  return ARBser_parseWithARBserObject_withByteArray_(new_ACPlainCursor_init(), data);
}


#line 25
void ACPlainCursor_initWithACPeer_withLong_withLong_(ACPlainCursor *self, ACPeer *peer, jlong sortDate, jlong pendingSortDate) {
  (void) ARBserObject_init(self);
  
#line 26
  self->peer_ = peer;
  self->sortDate_ = sortDate;
  self->pendingSortDate_ = pendingSortDate;
}


#line 25
ACPlainCursor *new_ACPlainCursor_initWithACPeer_withLong_withLong_(ACPeer *peer, jlong sortDate, jlong pendingSortDate) {
  ACPlainCursor *self = [ACPlainCursor alloc];
  ACPlainCursor_initWithACPeer_withLong_withLong_(self, peer, sortDate, pendingSortDate);
  return self;
}

void ACPlainCursor_init(ACPlainCursor *self) {
  (void) ARBserObject_init(self);
}


#line 31
ACPlainCursor *new_ACPlainCursor_init() {
  ACPlainCursor *self = [ACPlainCursor alloc];
  ACPlainCursor_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACPlainCursor)

#pragma clang diagnostic pop

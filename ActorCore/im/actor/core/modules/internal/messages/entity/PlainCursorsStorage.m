//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/PlainCursorsStorage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/modules/internal/messages/entity/PlainCursor.h"
#include "im/actor/core/modules/internal/messages/entity/PlainCursorsStorage.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPlainCursorsStorage () {
 @public
  JavaUtilHashMap *cursors_;
}

@end

J2OBJC_FIELD_SETTER(ACPlainCursorsStorage, cursors_, JavaUtilHashMap *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/PlainCursorsStorage.java"


#line 17
@implementation ACPlainCursorsStorage

+ (ACPlainCursorsStorage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ACPlainCursorsStorage_fromBytesWithByteArray_(data);
}


#line 25
- (ACPlainCursor *)getCursorWithACPeer:(ACPeer *)peer {
  if (![((JavaUtilHashMap *) nil_chk(cursors_)) containsKeyWithId:peer]) {
    (void) [cursors_ putWithId:peer withId:new_ACPlainCursor_initWithACPeer_withLong_withLong_(peer, 0, 0)];
  }
  return [cursors_ getWithId:peer];
}

- (void)putCursorWithACPlainCursor:(ACPlainCursor *)cursor {
  (void) [((JavaUtilHashMap *) nil_chk(cursors_)) putWithId:[((ACPlainCursor *) nil_chk(cursor)) getPeer] withId:cursor];
}

- (id<JavaUtilCollection>)getAllCursors {
  return [((JavaUtilHashMap *) nil_chk(cursors_)) values];
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  for (IOSByteArray * __strong data in nil_chk([((ARBserValues *) nil_chk(values)) getRepeatedBytesWithInt:1])) {
    @try {
      ACPlainCursor *plainCursor = ACPlainCursor_fromBytesWithByteArray_(data);
      (void) [((JavaUtilHashMap *) nil_chk(cursors_)) putWithId:[((ACPlainCursor *) nil_chk(plainCursor)) getPeer] withId:plainCursor];
    }
    @catch (
#line 46
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
}


#line 53
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  for (ACPlainCursor * __strong cursor in nil_chk([((JavaUtilHashMap *) nil_chk(cursors_)) values])) {
    [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:cursor];
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACPlainCursorsStorage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.modules.internal.messages.entity.PlainCursorsStorage;", 0x9, "Ljava.io.IOException;", NULL },
    { "getCursorWithACPeer:", "getCursor", "Lim.actor.core.modules.internal.messages.entity.PlainCursor;", 0x1, NULL, NULL },
    { "putCursorWithACPlainCursor:", "putCursor", "V", 0x1, NULL, NULL },
    { "getAllCursors", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cursors_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Lim/actor/core/entity/Peer;Lim/actor/core/modules/internal/messages/entity/PlainCursor;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACPlainCursorsStorage = { 2, "PlainCursorsStorage", "im.actor.core.modules.internal.messages.entity", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPlainCursorsStorage;
}

@end


#line 19
ACPlainCursorsStorage *ACPlainCursorsStorage_fromBytesWithByteArray_(IOSByteArray *data) {
  ACPlainCursorsStorage_initialize();
  
#line 20
  return ARBser_parseWithARBserObject_withByteArray_(new_ACPlainCursorsStorage_init(), data);
}

void ACPlainCursorsStorage_init(ACPlainCursorsStorage *self) {
  (void) ARBserObject_init(self);
  self->cursors_ = new_JavaUtilHashMap_init();
}

ACPlainCursorsStorage *new_ACPlainCursorsStorage_init() {
  ACPlainCursorsStorage *self = [ACPlainCursorsStorage alloc];
  ACPlainCursorsStorage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACPlainCursorsStorage)

#pragma clang diagnostic pop
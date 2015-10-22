//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/notifications/entity/PendingStorage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/modules/internal/notifications/entity/PendingNotification.h"
#include "im/actor/core/modules/internal/notifications/entity/PendingStorage.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPendingStorage () {
 @public
  id<JavaUtilList> notifications_;
}

@end

J2OBJC_FIELD_SETTER(ACPendingStorage, notifications_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/notifications/entity/PendingStorage.java"


#line 16
@implementation ACPendingStorage

+ (ACPendingStorage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ACPendingStorage_fromBytesWithByteArray_(data);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 24
- (instancetype)init {
  ACPendingStorage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 28
- (id<JavaUtilList>)getNotifications {
  return notifications_;
}


#line 33
- (void)parseWithARBserValues:(ARBserValues *)values {
  jint count = [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1];
  if (count > 0) {
    JavaUtilArrayList *stubs = new_JavaUtilArrayList_init();
    for (jint i = 0; i < count; i++) {
      [stubs addWithId:new_ACPendingNotification_init()];
    }
    
#line 41
    notifications_ = [values getRepeatedObjWithInt:1 withJavaUtilList:stubs];
  }
}

- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:notifications_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.modules.internal.notifications.entity.PendingStorage;", 0x9, "Ljava.io.IOException;", NULL },
    { "init", "PendingStorage", NULL, 0x1, NULL, NULL },
    { "getNotifications", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "notifications_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/modules/internal/notifications/entity/PendingNotification;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACPendingStorage = { 2, "PendingStorage", "im.actor.core.modules.internal.notifications.entity", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPendingStorage;
}

@end


#line 18
ACPendingStorage *ACPendingStorage_fromBytesWithByteArray_(IOSByteArray *data) {
  ACPendingStorage_initialize();
  
#line 19
  return ARBser_parseWithARBserObject_withByteArray_(new_ACPendingStorage_init(), data);
}


#line 24
void ACPendingStorage_init(ACPendingStorage *self) {
  (void) ARBserObject_init(self);
  
#line 25
  self->notifications_ = new_JavaUtilArrayList_init();
}


#line 24
ACPendingStorage *new_ACPendingStorage_init() {
  ACPendingStorage *self = [ACPendingStorage alloc];
  ACPendingStorage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACPendingStorage)

#pragma clang diagnostic pop

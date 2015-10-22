//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/search/SearchActor.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/Avatar.h"
#include "im/actor/core/entity/Dialog.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/entity/SearchEntity.h"
#include "im/actor/core/entity/User.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/SearchModule.h"
#include "im/actor/core/modules/internal/search/SearchActor.h"
#include "im/actor/core/modules/utils/ModuleActor.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/storage/KeyValueEngine.h"
#include "im/actor/runtime/storage/ListEngine.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ACSearchActor_CONTACTS_PREFIX 4294967296LL

@interface ACSearchActor () {
 @public
  id<ARListEngine> listEngine_;
}

- (void)onDialogsUpdatedWithJavaUtilList:(id<JavaUtilList>)dialogs;

- (void)onContactsUpdatedWithIntArray:(IOSIntArray *)contactsList;

- (void)clear;

@end

J2OBJC_FIELD_SETTER(ACSearchActor, listEngine_, id<ARListEngine>)

J2OBJC_STATIC_FIELD_GETTER(ACSearchActor, CONTACTS_PREFIX, jlong)

__attribute__((unused)) static void ACSearchActor_onDialogsUpdatedWithJavaUtilList_(ACSearchActor *self, id<JavaUtilList> dialogs);

__attribute__((unused)) static void ACSearchActor_onContactsUpdatedWithIntArray_(ACSearchActor *self, IOSIntArray *contactsList);

__attribute__((unused)) static void ACSearchActor_clear(ACSearchActor *self);

@interface ACSearchActor_OnDialogsUpdated () {
 @public
  id<JavaUtilList> dialogs_;
}

@end

J2OBJC_FIELD_SETTER(ACSearchActor_OnDialogsUpdated, dialogs_, id<JavaUtilList>)

@interface ACSearchActor_OnContactsUpdated () {
 @public
  IOSIntArray *contactsList_;
}

@end

J2OBJC_FIELD_SETTER(ACSearchActor_OnContactsUpdated, contactsList_, IOSIntArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/search/SearchActor.java"


#line 18
@implementation ACSearchActor


#line 24
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)modules {
  ACSearchActor_initWithACModuleContext_(self, modules);
  return self;
}

- (void)preStart {
  [super preStart];
  
#line 32
  listEngine_ = [((ACSearchModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getSearchModule])) getSearchList];
}


#line 35
- (void)onDialogsUpdatedWithJavaUtilList:(id<JavaUtilList>)dialogs {
  ACSearchActor_onDialogsUpdatedWithJavaUtilList_(self, dialogs);
}


#line 44
- (void)onContactsUpdatedWithIntArray:(IOSIntArray *)contactsList {
  ACSearchActor_onContactsUpdatedWithIntArray_(self, contactsList);
}


#line 54
- (void)clear {
  ACSearchActor_clear(self);
}


#line 59
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ACSearchActor_OnDialogsUpdated class]]) {
    ACSearchActor_OnDialogsUpdated *onDialogsUpdated = (ACSearchActor_OnDialogsUpdated *) check_class_cast(message, [ACSearchActor_OnDialogsUpdated class]);
    ACSearchActor_onDialogsUpdatedWithJavaUtilList_(self, [((ACSearchActor_OnDialogsUpdated *) nil_chk(onDialogsUpdated)) getDialogs]);
  }
  else
#line 63
  if ([message isKindOfClass:[ACSearchActor_OnContactsUpdated class]]) {
    ACSearchActor_OnContactsUpdated *contactsUpdated = (ACSearchActor_OnContactsUpdated *) check_class_cast(message, [ACSearchActor_OnContactsUpdated class]);
    ACSearchActor_onContactsUpdatedWithIntArray_(self, [((ACSearchActor_OnContactsUpdated *) nil_chk(contactsUpdated)) getContactsList]);
  }
  else
#line 66
  if ([message isKindOfClass:[ACSearchActor_Clear class]]) {
    ACSearchActor_clear(self);
  }
  else {
    
#line 69
    [self dropWithId:message];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "SearchActor", NULL, 0x1, NULL, NULL },
    { "preStart", NULL, "V", 0x1, NULL, NULL },
    { "onDialogsUpdatedWithJavaUtilList:", "onDialogsUpdated", "V", 0x2, NULL, NULL },
    { "onContactsUpdatedWithIntArray:", "onContactsUpdated", "V", 0x2, NULL, NULL },
    { "clear", NULL, "V", 0x2, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CONTACTS_PREFIX", "CONTACTS_PREFIX", 0x1a, "J", NULL, NULL, .constantValue.asLong = ACSearchActor_CONTACTS_PREFIX },
    { "listEngine_", NULL, 0x2, "Lim.actor.runtime.storage.ListEngine;", NULL, "Lim/actor/runtime/storage/ListEngine<Lim/actor/core/entity/SearchEntity;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.internal.search.SearchActor$OnDialogsUpdated;", "Lim.actor.core.modules.internal.search.SearchActor$OnContactsUpdated;", "Lim.actor.core.modules.internal.search.SearchActor$Clear;"};
  static const J2ObjcClassInfo _ACSearchActor = { 2, "SearchActor", "im.actor.core.modules.internal.search", NULL, 0x1, 6, methods, 2, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_ACSearchActor;
}

@end


#line 24
void ACSearchActor_initWithACModuleContext_(ACSearchActor *self, id<ACModuleContext> modules) {
  (void) ACModuleActor_initWithACModuleContext_(self, modules);
}


#line 24
ACSearchActor *new_ACSearchActor_initWithACModuleContext_(id<ACModuleContext> modules) {
  ACSearchActor *self = [ACSearchActor alloc];
  ACSearchActor_initWithACModuleContext_(self, modules);
  return self;
}


#line 35
void ACSearchActor_onDialogsUpdatedWithJavaUtilList_(ACSearchActor *self, id<JavaUtilList> dialogs) {
  id<JavaUtilList> updated = new_JavaUtilArrayList_init();
  for (ACDialog * __strong d in nil_chk(dialogs)) {
    [updated addWithId:new_ACSearchEntity_initWithACPeer_withLong_withACAvatar_withNSString_([((ACDialog *) nil_chk(d)) getPeer], [d getSortDate], [d getDialogAvatar],
#line 39
    [d getDialogTitle])];
  }
  [((id<ARListEngine>) nil_chk(self->listEngine_)) addOrUpdateItems:updated];
}


#line 44
void ACSearchActor_onContactsUpdatedWithIntArray_(ACSearchActor *self, IOSIntArray *contactsList) {
  id<JavaUtilList> updated = new_JavaUtilArrayList_init();
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(contactsList))->size_; i++) {
    ACUser *user = [((id<ARKeyValueEngine>) nil_chk([self users])) getValueWithKey:IOSIntArray_Get(contactsList, i)];
    [updated addWithId:new_ACSearchEntity_initWithACPeer_withLong_withACAvatar_withNSString_(ACPeer_userWithInt_([((ACUser *) nil_chk(user)) getUid]), ACSearchActor_CONTACTS_PREFIX + i, [user getAvatar],
#line 49
    [user getName])];
  }
  [((id<ARListEngine>) nil_chk(self->listEngine_)) addOrUpdateItems:updated];
}


#line 54
void ACSearchActor_clear(ACSearchActor *self) {
  [((id<ARListEngine>) nil_chk(self->listEngine_)) clear];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSearchActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/search/SearchActor.java"


#line 73
@implementation ACSearchActor_OnDialogsUpdated


#line 76
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)dialogs {
  ACSearchActor_OnDialogsUpdated_initWithJavaUtilList_(self, dialogs);
  return self;
}


#line 80
- (id<JavaUtilList>)getDialogs {
  return dialogs_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:", "OnDialogsUpdated", NULL, 0x1, NULL, NULL },
    { "getDialogs", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dialogs_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/entity/Dialog;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACSearchActor_OnDialogsUpdated = { 2, "OnDialogsUpdated", "im.actor.core.modules.internal.search", "SearchActor", 0x9, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSearchActor_OnDialogsUpdated;
}

@end


#line 76
void ACSearchActor_OnDialogsUpdated_initWithJavaUtilList_(ACSearchActor_OnDialogsUpdated *self, id<JavaUtilList> dialogs) {
  (void) NSObject_init(self);
  
#line 77
  self->dialogs_ = dialogs;
}


#line 76
ACSearchActor_OnDialogsUpdated *new_ACSearchActor_OnDialogsUpdated_initWithJavaUtilList_(id<JavaUtilList> dialogs) {
  ACSearchActor_OnDialogsUpdated *self = [ACSearchActor_OnDialogsUpdated alloc];
  ACSearchActor_OnDialogsUpdated_initWithJavaUtilList_(self, dialogs);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSearchActor_OnDialogsUpdated)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/search/SearchActor.java"


#line 85
@implementation ACSearchActor_OnContactsUpdated


#line 88
- (instancetype)initWithIntArray:(IOSIntArray *)contactsList {
  ACSearchActor_OnContactsUpdated_initWithIntArray_(self, contactsList);
  return self;
}


#line 92
- (IOSIntArray *)getContactsList {
  return contactsList_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithIntArray:", "OnContactsUpdated", NULL, 0x1, NULL, NULL },
    { "getContactsList", NULL, "[I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "contactsList_", NULL, 0x2, "[I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACSearchActor_OnContactsUpdated = { 2, "OnContactsUpdated", "im.actor.core.modules.internal.search", "SearchActor", 0x9, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSearchActor_OnContactsUpdated;
}

@end


#line 88
void ACSearchActor_OnContactsUpdated_initWithIntArray_(ACSearchActor_OnContactsUpdated *self, IOSIntArray *contactsList) {
  (void) NSObject_init(self);
  
#line 89
  self->contactsList_ = contactsList;
}


#line 88
ACSearchActor_OnContactsUpdated *new_ACSearchActor_OnContactsUpdated_initWithIntArray_(IOSIntArray *contactsList) {
  ACSearchActor_OnContactsUpdated *self = [ACSearchActor_OnContactsUpdated alloc];
  ACSearchActor_OnContactsUpdated_initWithIntArray_(self, contactsList);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSearchActor_OnContactsUpdated)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/search/SearchActor.java"


#line 97
@implementation ACSearchActor_Clear

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACSearchActor_Clear_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACSearchActor_Clear = { 2, "Clear", "im.actor.core.modules.internal.search", "SearchActor", 0x9, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSearchActor_Clear;
}

@end

void ACSearchActor_Clear_init(ACSearchActor_Clear *self) {
  (void) NSObject_init(self);
}

ACSearchActor_Clear *new_ACSearchActor_Clear_init() {
  ACSearchActor_Clear *self = [ACSearchActor_Clear alloc];
  ACSearchActor_Clear_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSearchActor_Clear)

#pragma clang diagnostic pop

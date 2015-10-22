//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/ContactsProcessor.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/ContactsModule.h"
#include "im/actor/core/modules/internal/contacts/ContactsSyncActor.h"
#include "im/actor/core/modules/updates/ContactsProcessor.h"
#include "im/actor/runtime/actors/ActorRef.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACContactsProcessor () {
 @public
  ARActorRef *contactsSyncActor_;
}

@end

J2OBJC_FIELD_SETTER(ACContactsProcessor, contactsSyncActor_, ARActorRef *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/ContactsProcessor.java"


#line 14
@implementation ACContactsProcessor


#line 19
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACContactsProcessor_initWithACModuleContext_(self, context);
  return self;
}


#line 25
- (void)onContactsAddedWithIntArray:(IOSIntArray *)uid {
  [((ARActorRef *) nil_chk(contactsSyncActor_)) sendWithId:new_ACContactsSyncActor_ContactsAdded_initWithIntArray_(uid)];
}


#line 30
- (void)onContactsRemovedWithIntArray:(IOSIntArray *)uid {
  [((ARActorRef *) nil_chk(contactsSyncActor_)) sendWithId:new_ACContactsSyncActor_ContactsRemoved_initWithIntArray_(uid)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "ContactsProcessor", NULL, 0x1, NULL, NULL },
    { "onContactsAddedWithIntArray:", "onContactsAdded", "V", 0x1, NULL, NULL },
    { "onContactsRemovedWithIntArray:", "onContactsRemoved", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "contactsSyncActor_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACContactsProcessor = { 2, "ContactsProcessor", "im.actor.core.modules.updates", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACContactsProcessor;
}

@end


#line 19
void ACContactsProcessor_initWithACModuleContext_(ACContactsProcessor *self, id<ACModuleContext> context) {
  (void) ACAbsModule_initWithACModuleContext_(self, context);
  self->contactsSyncActor_ = [((ACContactsModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getContactsModule])) getContactSyncActor];
}


#line 19
ACContactsProcessor *new_ACContactsProcessor_initWithACModuleContext_(id<ACModuleContext> context) {
  ACContactsProcessor *self = [ACContactsProcessor alloc];
  ACContactsProcessor_initWithACModuleContext_(self, context);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContactsProcessor)

#pragma clang diagnostic pop

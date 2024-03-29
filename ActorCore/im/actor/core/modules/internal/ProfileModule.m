//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/ProfileModule.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/Modules.h"
#include "im/actor/core/modules/internal/ProfileModule.h"
#include "im/actor/core/modules/internal/avatar/OwnAvatarChangeActor.h"
#include "im/actor/core/viewmodel/OwnAvatarVM.h"
#include "im/actor/runtime/actors/ActorCreator.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/Props.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACProfileModule () {
 @public
  ARActorRef *avatarChangeActor_;
  ACOwnAvatarVM *ownAvatarVM_;
}

@end

J2OBJC_FIELD_SETTER(ACProfileModule, avatarChangeActor_, ARActorRef *)
J2OBJC_FIELD_SETTER(ACProfileModule, ownAvatarVM_, ACOwnAvatarVM *)

@interface ACProfileModule_$1 : NSObject < ARActorCreator > {
 @public
  ACModules *val$modules_;
}

- (ACOwnAvatarChangeActor *)create;

- (instancetype)initWithACModules:(ACModules *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACProfileModule_$1)

J2OBJC_FIELD_SETTER(ACProfileModule_$1, val$modules_, ACModules *)

__attribute__((unused)) static void ACProfileModule_$1_initWithACModules_(ACProfileModule_$1 *self, ACModules *capture$0);

__attribute__((unused)) static ACProfileModule_$1 *new_ACProfileModule_$1_initWithACModules_(ACModules *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACProfileModule_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/ProfileModule.java"


#line 17
@implementation ACProfileModule


#line 22
- (instancetype)initWithACModules:(ACModules *)modules {
  ACProfileModule_initWithACModules_(self, modules);
  return self;
}


#line 33
- (ACOwnAvatarVM *)getOwnAvatarVM {
  return ownAvatarVM_;
}

- (void)changeAvatarWithNSString:(NSString *)descriptor {
  [((ARActorRef *) nil_chk(avatarChangeActor_)) sendWithId:new_ACOwnAvatarChangeActor_ChangeAvatar_initWithNSString_(descriptor)];
}

- (void)removeAvatar {
  [((ARActorRef *) nil_chk(avatarChangeActor_)) sendWithId:new_ACOwnAvatarChangeActor_RemoveAvatar_init()];
}

- (void)resetModule {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModules:", "ProfileModule", NULL, 0x1, NULL, NULL },
    { "getOwnAvatarVM", NULL, "Lim.actor.core.viewmodel.OwnAvatarVM;", 0x1, NULL, NULL },
    { "changeAvatarWithNSString:", "changeAvatar", "V", 0x1, NULL, NULL },
    { "removeAvatar", NULL, "V", 0x1, NULL, NULL },
    { "resetModule", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "avatarChangeActor_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "ownAvatarVM_", NULL, 0x2, "Lim.actor.core.viewmodel.OwnAvatarVM;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACProfileModule = { 2, "ProfileModule", "im.actor.core.modules.internal", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACProfileModule;
}

@end


#line 22
void ACProfileModule_initWithACModules_(ACProfileModule *self, ACModules *modules) {
  (void) ACAbsModule_initWithACModuleContext_(self, modules);
  self->ownAvatarVM_ = new_ACOwnAvatarVM_init();
  self->avatarChangeActor_ = [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:ARProps_createWithIOSClass_withARActorCreator_(ACOwnAvatarChangeActor_class_(), new_ACProfileModule_$1_initWithACModules_(modules)) withNSString:
#line 30
  @"actor/avatar/my"];
}


#line 22
ACProfileModule *new_ACProfileModule_initWithACModules_(ACModules *modules) {
  ACProfileModule *self = [ACProfileModule alloc];
  ACProfileModule_initWithACModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACProfileModule)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/ProfileModule.java"

@implementation ACProfileModule_$1


#line 27
- (ACOwnAvatarChangeActor *)create {
  return new_ACOwnAvatarChangeActor_initWithACModules_(val$modules_);
}

- (instancetype)initWithACModules:(ACModules *)capture$0 {
  ACProfileModule_$1_initWithACModules_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.core.modules.internal.avatar.OwnAvatarChangeActor;", 0x1, NULL, NULL },
    { "initWithACModules:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$modules_", NULL, 0x1012, "Lim.actor.core.modules.Modules;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACProfileModule", "initWithACModules:" };
  static const J2ObjcClassInfo _ACProfileModule_$1 = { 2, "", "im.actor.core.modules.internal", "ProfileModule", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/core/modules/internal/avatar/OwnAvatarChangeActor;>;" };
  return &_ACProfileModule_$1;
}

@end

void ACProfileModule_$1_initWithACModules_(ACProfileModule_$1 *self, ACModules *capture$0) {
  self->val$modules_ = capture$0;
  (void) NSObject_init(self);
}

ACProfileModule_$1 *new_ACProfileModule_$1_initWithACModules_(ACModules *capture$0) {
  ACProfileModule_$1 *self = [ACProfileModule_$1 alloc];
  ACProfileModule_$1_initWithACModules_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACProfileModule_$1)

#pragma clang diagnostic pop

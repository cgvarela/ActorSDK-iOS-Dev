//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/AppStateVM.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/events/AppVisibleChanged.h"
#include "im/actor/core/modules/events/ConnectingStateChanged.h"
#include "im/actor/core/viewmodel/AppStateVM.h"
#include "im/actor/core/viewmodel/generics/BooleanValueModel.h"
#include "im/actor/core/viewmodel/generics/IntValueModel.h"
#include "im/actor/runtime/eventbus/BusSubscriber.h"
#include "im/actor/runtime/eventbus/Event.h"
#include "im/actor/runtime/eventbus/EventBus.h"
#include "im/actor/runtime/storage/PreferencesStorage.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACAppStateVM () {
 @public
  id<ACModuleContext> context_;
  ACBooleanValueModel *isAppVisible_;
  ACBooleanValueModel *isDialogsEmpty_;
  ACBooleanValueModel *isContactsEmpty_;
  ACBooleanValueModel *isAppEmpty_;
  ACBooleanValueModel *isAppLoaded_;
  ACBooleanValueModel *isConnecting_;
  ACBooleanValueModel *isSyncing_;
  ACIntValueModel *globalCounter_;
  ACIntValueModel *globalTempCounter_;
  jboolean isBookImported_;
  jboolean isDialogsLoaded_;
  jboolean isContactsLoaded_;
}

- (void)updateLoaded;

@end

J2OBJC_FIELD_SETTER(ACAppStateVM, context_, id<ACModuleContext>)
J2OBJC_FIELD_SETTER(ACAppStateVM, isAppVisible_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, isDialogsEmpty_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, isContactsEmpty_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, isAppEmpty_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, isAppLoaded_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, isConnecting_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, isSyncing_, ACBooleanValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, globalCounter_, ACIntValueModel *)
J2OBJC_FIELD_SETTER(ACAppStateVM, globalTempCounter_, ACIntValueModel *)

__attribute__((unused)) static void ACAppStateVM_updateLoaded(ACAppStateVM *self);

@interface ACAppStateVM_$1 : NSObject < ImActorRuntimeEventbusBusSubscriber > {
 @public
  ACAppStateVM *this$0_;
}

- (void)onBusEventWithImActorRuntimeEventbusEvent:(ImActorRuntimeEventbusEvent *)event;

- (instancetype)initWithACAppStateVM:(ACAppStateVM *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAppStateVM_$1)

J2OBJC_FIELD_SETTER(ACAppStateVM_$1, this$0_, ACAppStateVM *)

__attribute__((unused)) static void ACAppStateVM_$1_initWithACAppStateVM_(ACAppStateVM_$1 *self, ACAppStateVM *outer$);

__attribute__((unused)) static ACAppStateVM_$1 *new_ACAppStateVM_$1_initWithACAppStateVM_(ACAppStateVM *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAppStateVM_$1)

@interface ACAppStateVM_$2 : NSObject < ImActorRuntimeEventbusBusSubscriber > {
 @public
  ACAppStateVM *this$0_;
}

- (void)onBusEventWithImActorRuntimeEventbusEvent:(ImActorRuntimeEventbusEvent *)event;

- (instancetype)initWithACAppStateVM:(ACAppStateVM *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAppStateVM_$2)

J2OBJC_FIELD_SETTER(ACAppStateVM_$2, this$0_, ACAppStateVM *)

__attribute__((unused)) static void ACAppStateVM_$2_initWithACAppStateVM_(ACAppStateVM_$2 *self, ACAppStateVM *outer$);

__attribute__((unused)) static ACAppStateVM_$2 *new_ACAppStateVM_$2_initWithACAppStateVM_(ACAppStateVM *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAppStateVM_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/AppStateVM.java"


#line 21
@implementation ACAppStateVM

@synthesize context = context_;
@synthesize isAppVisible = isAppVisible_;
@synthesize isDialogsEmpty = isDialogsEmpty_;
@synthesize isContactsEmpty = isContactsEmpty_;
@synthesize isAppEmpty = isAppEmpty_;
@synthesize isAppLoaded = isAppLoaded_;
@synthesize isConnecting = isConnecting_;
@synthesize isSyncing = isSyncing_;
@synthesize globalCounter = globalCounter_;
@synthesize globalTempCounter = globalTempCounter_;


#line 52
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACAppStateVM_initWithACModuleContext_(self, context);
  return self;
}


#line 91
- (void)updateLoaded {
  ACAppStateVM_updateLoaded(self);
}


#line 103
- (void)onGlobalCounterChangedWithInt:(jint)value {
  @synchronized(self) {
    
#line 104
    [((ACIntValueModel *) nil_chk(globalCounter_)) changeWithValue:JavaLangInteger_valueOfWithInt_(value)];
    [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putIntWithKey:@"app.counter" withValue:value];
    if (![((JavaLangBoolean *) nil_chk([((ACBooleanValueModel *) nil_chk(isAppVisible_)) get])) booleanValue]) {
      [((ACIntValueModel *) nil_chk(globalTempCounter_)) changeWithValue:JavaLangInteger_valueOfWithInt_(value)];
    }
  }
}


#line 116
- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty {
  @synchronized(self) {
    
#line 117
    if ([((JavaLangBoolean *) nil_chk([((ACBooleanValueModel *) nil_chk(isDialogsEmpty_)) get])) booleanValue] != isEmpty) {
      [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.dialogs.empty" withValue:isEmpty];
      [isDialogsEmpty_ changeWithValue:JavaLangBoolean_valueOfWithBoolean_(isEmpty)];
    }
    if (!isEmpty) {
      if ([((JavaLangBoolean *) nil_chk([((ACBooleanValueModel *) nil_chk(isAppEmpty_)) get])) booleanValue]) {
        [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.empty" withValue:false];
        [isAppEmpty_ changeWithValue:JavaLangBoolean_valueOfWithBoolean_(false)];
      }
    }
  }
}


#line 134
- (void)onContactsChangedWithBoolean:(jboolean)isEmpty {
  @synchronized(self) {
    
#line 135
    if ([((JavaLangBoolean *) nil_chk([((ACBooleanValueModel *) nil_chk(isContactsEmpty_)) get])) booleanValue] != isEmpty) {
      [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.contacts.empty" withValue:isEmpty];
      [isContactsEmpty_ changeWithValue:JavaLangBoolean_valueOfWithBoolean_(isEmpty)];
    }
    if (!isEmpty) {
      if ([((JavaLangBoolean *) nil_chk([((ACBooleanValueModel *) nil_chk(isAppEmpty_)) get])) booleanValue]) {
        [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.empty" withValue:false];
        [isAppEmpty_ changeWithValue:JavaLangBoolean_valueOfWithBoolean_(false)];
      }
    }
  }
}


#line 150
- (void)onPhoneImported {
  @synchronized(self) {
    
#line 151
    if (!isBookImported_) {
      isBookImported_ = true;
      [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.contacts.imported" withValue:true];
      ACAppStateVM_updateLoaded(self);
    }
  }
}


#line 161
- (void)onDialogsLoaded {
  @synchronized(self) {
    
#line 162
    if (!isDialogsLoaded_) {
      isDialogsLoaded_ = true;
      [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.dialogs.loaded" withValue:true];
      ACAppStateVM_updateLoaded(self);
    }
  }
}


#line 172
- (void)onContactsLoaded {
  @synchronized(self) {
    
#line 173
    if (!isContactsLoaded_) {
      isContactsLoaded_ = true;
      [((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context_)) getPreferences])) putBoolWithKey:@"app.contacts.loaded" withValue:true];
      ACAppStateVM_updateLoaded(self);
    }
  }
}


#line 185
- (ACBooleanValueModel *)getIsDialogsEmpty {
  return isDialogsEmpty_;
}


#line 194
- (ACBooleanValueModel *)getIsContactsEmpty {
  return isContactsEmpty_;
}


#line 203
- (ACBooleanValueModel *)getIsAppLoaded {
  return isAppLoaded_;
}


#line 212
- (ACBooleanValueModel *)getIsAppEmpty {
  return isAppEmpty_;
}


#line 221
- (ACBooleanValueModel *)getIsSyncing {
  return isSyncing_;
}


#line 230
- (ACBooleanValueModel *)getIsConnecting {
  return isConnecting_;
}


#line 240
- (ACIntValueModel *)getGlobalCounter {
  return globalCounter_;
}


#line 249
- (ACIntValueModel *)getGlobalTempCounter {
  return globalTempCounter_;
}


#line 258
- (ACBooleanValueModel *)getIsAppVisible {
  return isAppVisible_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "AppStateVM", NULL, 0x1, NULL, NULL },
    { "updateLoaded", NULL, "V", 0x2, NULL, NULL },
    { "onGlobalCounterChangedWithInt:", "onGlobalCounterChanged", "V", 0x21, NULL, NULL },
    { "onDialogsChangedWithBoolean:", "onDialogsChanged", "V", 0x21, NULL, NULL },
    { "onContactsChangedWithBoolean:", "onContactsChanged", "V", 0x21, NULL, NULL },
    { "onPhoneImported", NULL, "V", 0x21, NULL, NULL },
    { "onDialogsLoaded", NULL, "V", 0x21, NULL, NULL },
    { "onContactsLoaded", NULL, "V", 0x21, NULL, NULL },
    { "getIsDialogsEmpty", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "getIsContactsEmpty", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "getIsAppLoaded", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "getIsAppEmpty", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "getIsSyncing", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "getIsConnecting", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
    { "getGlobalCounter", NULL, "Lim.actor.core.viewmodel.generics.IntValueModel;", 0x1, NULL, NULL },
    { "getGlobalTempCounter", NULL, "Lim.actor.core.viewmodel.generics.IntValueModel;", 0x1, NULL, NULL },
    { "getIsAppVisible", NULL, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "context_", NULL, 0x2, "Lim.actor.core.modules.ModuleContext;", NULL, NULL, .constantValue.asLong = 0 },
    { "isAppVisible_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isDialogsEmpty_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isContactsEmpty_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isAppEmpty_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isAppLoaded_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isConnecting_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isSyncing_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.BooleanValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "globalCounter_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.IntValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "globalTempCounter_", NULL, 0x2, "Lim.actor.core.viewmodel.generics.IntValueModel;", NULL, NULL, .constantValue.asLong = 0 },
    { "isBookImported_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "isDialogsLoaded_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "isContactsLoaded_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACAppStateVM = { 2, "AppStateVM", "im.actor.core.viewmodel", NULL, 0x1, 17, methods, 13, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACAppStateVM;
}

@end


#line 52
void ACAppStateVM_initWithACModuleContext_(ACAppStateVM *self, id<ACModuleContext> context) {
  (void) NSObject_init(self);
  
#line 53
  self->context_ = context;
  self->isDialogsEmpty_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.dialogs.empty", JavaLangBoolean_valueOfWithBoolean_([((id<ARPreferencesStorage>) nil_chk([((id<ACModuleContext>) nil_chk(context)) getPreferences])) getBoolWithKey:@"app.dialogs.empty" withDefault:true]));
  self->isContactsEmpty_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.contacts.empty", JavaLangBoolean_valueOfWithBoolean_([((id<ARPreferencesStorage>) nil_chk([context getPreferences])) getBoolWithKey:@"app.contacts.empty" withDefault:true]));
  self->isAppEmpty_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.empty", JavaLangBoolean_valueOfWithBoolean_([((id<ARPreferencesStorage>) nil_chk([context getPreferences])) getBoolWithKey:@"app.empty" withDefault:true]));
  self->globalCounter_ = new_ACIntValueModel_initWithNSString_withJavaLangInteger_(@"app.counter", JavaLangInteger_valueOfWithInt_([((id<ARPreferencesStorage>) nil_chk([context getPreferences])) getIntWithKey:@"app.counter" withDefault:0]));
  self->globalTempCounter_ = new_ACIntValueModel_initWithNSString_withJavaLangInteger_(@"app.temp_counter", JavaLangInteger_valueOfWithInt_(0));
  self->isConnecting_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.connecting", JavaLangBoolean_valueOfWithBoolean_(false));
  self->isSyncing_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.syncing", JavaLangBoolean_valueOfWithBoolean_(false));
  self->isAppVisible_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.visible", JavaLangBoolean_valueOfWithBoolean_(false));
  
#line 63
  self->isBookImported_ = [((id<ARPreferencesStorage>) nil_chk([context getPreferences])) getBoolWithKey:@"app.contacts.imported" withDefault:false];
  self->isDialogsLoaded_ = [((id<ARPreferencesStorage>) nil_chk([context getPreferences])) getBoolWithKey:@"app.dialogs.loaded" withDefault:false];
  self->isContactsLoaded_ = [((id<ARPreferencesStorage>) nil_chk([context getPreferences])) getBoolWithKey:@"app.contacts.loaded" withDefault:false];
  
#line 67
  self->isAppLoaded_ = new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(@"app.loaded", JavaLangBoolean_valueOfWithBoolean_(self->isBookImported_ && self->isDialogsLoaded_ && self->isContactsLoaded_));
  
#line 69
  [((ImActorRuntimeEventbusEventBus *) nil_chk([context getEvents])) subscribeWithImActorRuntimeEventbusBusSubscriber:new_ACAppStateVM_$1_initWithACAppStateVM_(self) withNSString:
#line 81
  ImActorCoreModulesEventsAppVisibleChanged_EVENT_];
  
#line 83
  [((ImActorRuntimeEventbusEventBus *) nil_chk([context getEvents])) subscribeWithImActorRuntimeEventbusBusSubscriber:new_ACAppStateVM_$2_initWithACAppStateVM_(self) withNSString:
#line 88
  ImActorCoreModulesEventsConnectingStateChanged_EVENT_];
}


#line 52
ACAppStateVM *new_ACAppStateVM_initWithACModuleContext_(id<ACModuleContext> context) {
  ACAppStateVM *self = [ACAppStateVM alloc];
  ACAppStateVM_initWithACModuleContext_(self, context);
  return self;
}


#line 91
void ACAppStateVM_updateLoaded(ACAppStateVM *self) {
  jboolean val = self->isBookImported_ && self->isDialogsLoaded_ && self->isContactsLoaded_;
  if ([((JavaLangBoolean *) nil_chk([((ACBooleanValueModel *) nil_chk(self->isAppLoaded_)) get])) booleanValue] != val) {
    [self->isAppLoaded_ changeWithValue:JavaLangBoolean_valueOfWithBoolean_(val)];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAppStateVM)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/AppStateVM.java"

@implementation ACAppStateVM_$1


#line 71
- (void)onBusEventWithImActorRuntimeEventbusEvent:(ImActorRuntimeEventbusEvent *)event {
  if ([event isKindOfClass:[ImActorCoreModulesEventsAppVisibleChanged class]]) {
    if ([((ImActorCoreModulesEventsAppVisibleChanged *) nil_chk(((ImActorCoreModulesEventsAppVisibleChanged *) check_class_cast(event, [ImActorCoreModulesEventsAppVisibleChanged class])))) isVisible]) {
      [((ACBooleanValueModel *) nil_chk(this$0_->isAppVisible_)) changeWithValue:JavaLangBoolean_valueOfWithBoolean_(true)];
      [((ACIntValueModel *) nil_chk(this$0_->globalTempCounter_)) changeWithValue:JavaLangInteger_valueOfWithInt_(0)];
    }
    else {
      
#line 77
      [((ACBooleanValueModel *) nil_chk(this$0_->isAppVisible_)) changeWithValue:JavaLangBoolean_valueOfWithBoolean_(false)];
    }
  }
}

- (instancetype)initWithACAppStateVM:(ACAppStateVM *)outer$ {
  ACAppStateVM_$1_initWithACAppStateVM_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onBusEventWithImActorRuntimeEventbusEvent:", "onBusEvent", "V", 0x1, NULL, NULL },
    { "initWithACAppStateVM:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.viewmodel.AppStateVM;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACAppStateVM", "initWithACModuleContext:" };
  static const J2ObjcClassInfo _ACAppStateVM_$1 = { 2, "", "im.actor.core.viewmodel", "AppStateVM", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACAppStateVM_$1;
}

@end

void ACAppStateVM_$1_initWithACAppStateVM_(ACAppStateVM_$1 *self, ACAppStateVM *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACAppStateVM_$1 *new_ACAppStateVM_$1_initWithACAppStateVM_(ACAppStateVM *outer$) {
  ACAppStateVM_$1 *self = [ACAppStateVM_$1 alloc];
  ACAppStateVM_$1_initWithACAppStateVM_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAppStateVM_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/AppStateVM.java"

@implementation ACAppStateVM_$2


#line 85
- (void)onBusEventWithImActorRuntimeEventbusEvent:(ImActorRuntimeEventbusEvent *)event {
  [((ACBooleanValueModel *) nil_chk(this$0_->isConnecting_)) changeWithValue:JavaLangBoolean_valueOfWithBoolean_([((ImActorCoreModulesEventsConnectingStateChanged *) nil_chk(((ImActorCoreModulesEventsConnectingStateChanged *) check_class_cast(event, [ImActorCoreModulesEventsConnectingStateChanged class])))) isConnecting])];
}

- (instancetype)initWithACAppStateVM:(ACAppStateVM *)outer$ {
  ACAppStateVM_$2_initWithACAppStateVM_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onBusEventWithImActorRuntimeEventbusEvent:", "onBusEvent", "V", 0x1, NULL, NULL },
    { "initWithACAppStateVM:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.viewmodel.AppStateVM;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACAppStateVM", "initWithACModuleContext:" };
  static const J2ObjcClassInfo _ACAppStateVM_$2 = { 2, "", "im.actor.core.viewmodel", "AppStateVM", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACAppStateVM_$2;
}

@end

void ACAppStateVM_$2_initWithACAppStateVM_(ACAppStateVM_$2 *self, ACAppStateVM *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACAppStateVM_$2 *new_ACAppStateVM_$2_initWithACAppStateVM_(ACAppStateVM *outer$) {
  ACAppStateVM_$2 *self = [ACAppStateVM_$2 alloc];
  ACAppStateVM_$2_initWithACAppStateVM_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAppStateVM_$2)

#pragma clang diagnostic pop

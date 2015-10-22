//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/settings/SettingsSyncActor.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiParameter.h"
#include "im/actor/core/api/base/SeqUpdate.h"
#include "im/actor/core/api/rpc/RequestEditParameter.h"
#include "im/actor/core/api/rpc/RequestGetParameters.h"
#include "im/actor/core/api/rpc/ResponseGetParameters.h"
#include "im/actor/core/api/rpc/ResponseSeq.h"
#include "im/actor/core/api/updates/UpdateParameterChanged.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/Updates.h"
#include "im/actor/core/modules/internal/SettingsModule.h"
#include "im/actor/core/modules/internal/settings/SettingsSyncActor.h"
#include "im/actor/core/modules/internal/settings/entity/SettingsSyncAction.h"
#include "im/actor/core/modules/internal/settings/entity/SettingsSyncState.h"
#include "im/actor/core/modules/utils/ModuleActor.h"
#include "im/actor/core/network/RpcCallback.h"
#include "im/actor/core/network/RpcException.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/storage/PreferencesStorage.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACSettingsSyncActor () {
 @public
  ACSettingsSyncState *syncState_;
}

- (void)performSyncWithACSettingsSyncAction:(ACSettingsSyncAction *)action;

- (void)saveState;

@end

J2OBJC_FIELD_SETTER(ACSettingsSyncActor, syncState_, ACSettingsSyncState *)

static NSString *ACSettingsSyncActor_SYNC_STATE_ = @"settings_sync_state_v2";
J2OBJC_STATIC_FIELD_GETTER(ACSettingsSyncActor, SYNC_STATE_, NSString *)

static NSString *ACSettingsSyncActor_SYNC_STATE_LOADED_ = @"settings_sync_state_loaded_v2";
J2OBJC_STATIC_FIELD_GETTER(ACSettingsSyncActor, SYNC_STATE_LOADED_, NSString *)

__attribute__((unused)) static void ACSettingsSyncActor_performSyncWithACSettingsSyncAction_(ACSettingsSyncActor *self, ACSettingsSyncAction *action);

__attribute__((unused)) static void ACSettingsSyncActor_saveState(ACSettingsSyncActor *self);

@interface ACSettingsSyncActor_ChangeSettings () {
 @public
  NSString *key_;
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(ACSettingsSyncActor_ChangeSettings, key_, NSString *)
J2OBJC_FIELD_SETTER(ACSettingsSyncActor_ChangeSettings, value_, NSString *)

@interface ACSettingsSyncActor_$1 : NSObject < ACRpcCallback > {
 @public
  ACSettingsSyncActor *this$0_;
}

- (void)onResult:(ARResponseGetParameters *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithACSettingsSyncActor:(ACSettingsSyncActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSettingsSyncActor_$1)

J2OBJC_FIELD_SETTER(ACSettingsSyncActor_$1, this$0_, ACSettingsSyncActor *)

__attribute__((unused)) static void ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(ACSettingsSyncActor_$1 *self, ACSettingsSyncActor *outer$);

__attribute__((unused)) static ACSettingsSyncActor_$1 *new_ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(ACSettingsSyncActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSettingsSyncActor_$1)

@interface ACSettingsSyncActor_$2 : NSObject < ACRpcCallback > {
 @public
  ACSettingsSyncActor *this$0_;
  ACSettingsSyncAction *val$action_;
}

- (void)onResult:(ARResponseSeq *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithACSettingsSyncActor:(ACSettingsSyncActor *)outer$
                   withACSettingsSyncAction:(ACSettingsSyncAction *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSettingsSyncActor_$2)

J2OBJC_FIELD_SETTER(ACSettingsSyncActor_$2, this$0_, ACSettingsSyncActor *)
J2OBJC_FIELD_SETTER(ACSettingsSyncActor_$2, val$action_, ACSettingsSyncAction *)

__attribute__((unused)) static void ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(ACSettingsSyncActor_$2 *self, ACSettingsSyncActor *outer$, ACSettingsSyncAction *capture$0);

__attribute__((unused)) static ACSettingsSyncActor_$2 *new_ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(ACSettingsSyncActor *outer$, ACSettingsSyncAction *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSettingsSyncActor_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/settings/SettingsSyncActor.java"


#line 23
@implementation ACSettingsSyncActor


#line 30
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)modules {
  ACSettingsSyncActor_initWithACModuleContext_(self, modules);
  return self;
}

- (void)preStart {
  [super preStart];
  syncState_ = new_ACSettingsSyncState_init();
  IOSByteArray *data = [((id<ARPreferencesStorage>) nil_chk([self preferences])) getBytesWithKey:ACSettingsSyncActor_SYNC_STATE_];
  if (data != nil) {
    @try {
      syncState_ = ACSettingsSyncState_fromBytesWithByteArray_(data);
    }
    @catch (
#line 42
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
  
#line 47
  for (ACSettingsSyncAction * __strong action in nil_chk([((ACSettingsSyncState *) nil_chk(syncState_)) getPendingActions])) {
    ACSettingsSyncActor_performSyncWithACSettingsSyncAction_(self, action);
  }
  
#line 51
  if (![((id<ARPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:ACSettingsSyncActor_SYNC_STATE_LOADED_ withDefault:false]) {
    
#line 53
    [self requestWithACRequest:new_ARRequestGetParameters_init() withACRpcCallback:new_ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(self)];
  }
}


#line 70
- (void)performSyncWithACSettingsSyncAction:(ACSettingsSyncAction *)action {
  ACSettingsSyncActor_performSyncWithACSettingsSyncAction_(self, action);
}


#line 87
- (void)saveState {
  ACSettingsSyncActor_saveState(self);
}


#line 92
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ACSettingsSyncActor_ChangeSettings class]]) {
    ACSettingsSyncActor_ChangeSettings *changeSettings = (ACSettingsSyncActor_ChangeSettings *) check_class_cast(message, [ACSettingsSyncActor_ChangeSettings class]);
    ACSettingsSyncAction *action = new_ACSettingsSyncAction_initWithNSString_withNSString_([((ACSettingsSyncActor_ChangeSettings *) nil_chk(changeSettings)) getKey],
#line 96
    [changeSettings getValue]);
    [((id<JavaUtilList>) nil_chk([((ACSettingsSyncState *) nil_chk(syncState_)) getPendingActions])) addWithId:action];
    ACSettingsSyncActor_saveState(self);
    ACSettingsSyncActor_performSyncWithACSettingsSyncAction_(self, action);
  }
  else {
    
#line 101
    [self dropWithId:message];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "SettingsSyncActor", NULL, 0x1, NULL, NULL },
    { "preStart", NULL, "V", 0x1, NULL, NULL },
    { "performSyncWithACSettingsSyncAction:", "performSync", "V", 0x2, NULL, NULL },
    { "saveState", NULL, "V", 0x2, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SYNC_STATE_", NULL, 0x1a, "Ljava.lang.String;", &ACSettingsSyncActor_SYNC_STATE_, NULL, .constantValue.asLong = 0 },
    { "SYNC_STATE_LOADED_", NULL, 0x1a, "Ljava.lang.String;", &ACSettingsSyncActor_SYNC_STATE_LOADED_, NULL, .constantValue.asLong = 0 },
    { "syncState_", NULL, 0x2, "Lim.actor.core.modules.internal.settings.entity.SettingsSyncState;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.internal.settings.SettingsSyncActor$ChangeSettings;"};
  static const J2ObjcClassInfo _ACSettingsSyncActor = { 2, "SettingsSyncActor", "im.actor.core.modules.internal.settings", NULL, 0x1, 5, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ACSettingsSyncActor;
}

@end


#line 30
void ACSettingsSyncActor_initWithACModuleContext_(ACSettingsSyncActor *self, id<ACModuleContext> modules) {
  (void) ACModuleActor_initWithACModuleContext_(self, modules);
}


#line 30
ACSettingsSyncActor *new_ACSettingsSyncActor_initWithACModuleContext_(id<ACModuleContext> modules) {
  ACSettingsSyncActor *self = [ACSettingsSyncActor alloc];
  ACSettingsSyncActor_initWithACModuleContext_(self, modules);
  return self;
}


#line 70
void ACSettingsSyncActor_performSyncWithACSettingsSyncAction_(ACSettingsSyncActor *self, ACSettingsSyncAction *action) {
  [self requestWithACRequest:new_ARRequestEditParameter_initWithNSString_withNSString_([((ACSettingsSyncAction *) nil_chk(action)) getKey], [action getValue]) withACRpcCallback:new_ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(self, action)];
}


#line 87
void ACSettingsSyncActor_saveState(ACSettingsSyncActor *self) {
  [((id<ARPreferencesStorage>) nil_chk([self preferences])) putBytesWithKey:ACSettingsSyncActor_SYNC_STATE_ withValue:[((ACSettingsSyncState *) nil_chk(self->syncState_)) toByteArray]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSettingsSyncActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/settings/SettingsSyncActor.java"


#line 105
@implementation ACSettingsSyncActor_ChangeSettings


#line 109
- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value {
  ACSettingsSyncActor_ChangeSettings_initWithNSString_withNSString_(self, key, value);
  return self;
}


#line 114
- (NSString *)getKey {
  return key_;
}

- (NSString *)getValue {
  return value_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:", "ChangeSettings", NULL, 0x1, NULL, NULL },
    { "getKey", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getValue", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "key_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACSettingsSyncActor_ChangeSettings = { 2, "ChangeSettings", "im.actor.core.modules.internal.settings", "SettingsSyncActor", 0x9, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSettingsSyncActor_ChangeSettings;
}

@end


#line 109
void ACSettingsSyncActor_ChangeSettings_initWithNSString_withNSString_(ACSettingsSyncActor_ChangeSettings *self, NSString *key, NSString *value) {
  (void) NSObject_init(self);
  
#line 110
  self->key_ = key;
  self->value_ = value;
}


#line 109
ACSettingsSyncActor_ChangeSettings *new_ACSettingsSyncActor_ChangeSettings_initWithNSString_withNSString_(NSString *key, NSString *value) {
  ACSettingsSyncActor_ChangeSettings *self = [ACSettingsSyncActor_ChangeSettings alloc];
  ACSettingsSyncActor_ChangeSettings_initWithNSString_withNSString_(self, key, value);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSettingsSyncActor_ChangeSettings)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/settings/SettingsSyncActor.java"

@implementation ACSettingsSyncActor_$1


#line 55
- (void)onResult:(ARResponseGetParameters *)response {
  for (ARApiParameter * __strong p in nil_chk([((ARResponseGetParameters *) nil_chk(response)) getParameters])) {
    [((ACSettingsModule *) nil_chk([((id<ACModuleContext>) nil_chk([this$0_ context])) getSettingsModule])) onUpdatedSettingWithNSString:[((ARApiParameter *) nil_chk(p)) getKey] withNSString:[p getValue]];
  }
  [((id<ARPreferencesStorage>) nil_chk([this$0_ preferences])) putBoolWithKey:ACSettingsSyncActor_SYNC_STATE_LOADED_ withValue:true];
}


#line 63
- (void)onError:(ACRpcException *)e {
}

- (instancetype)initWithACSettingsSyncActor:(ACSettingsSyncActor *)outer$ {
  ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithACSettingsSyncActor:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.settings.SettingsSyncActor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACSettingsSyncActor", "preStart" };
  static const J2ObjcClassInfo _ACSettingsSyncActor_$1 = { 2, "", "im.actor.core.modules.internal.settings", "SettingsSyncActor", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/core/network/RpcCallback<Lim/actor/core/api/rpc/ResponseGetParameters;>;" };
  return &_ACSettingsSyncActor_$1;
}

@end

void ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(ACSettingsSyncActor_$1 *self, ACSettingsSyncActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACSettingsSyncActor_$1 *new_ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(ACSettingsSyncActor *outer$) {
  ACSettingsSyncActor_$1 *self = [ACSettingsSyncActor_$1 alloc];
  ACSettingsSyncActor_$1_initWithACSettingsSyncActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSettingsSyncActor_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/settings/SettingsSyncActor.java"

@implementation ACSettingsSyncActor_$2


#line 73
- (void)onResult:(ARResponseSeq *)response {
  [((id<JavaUtilList>) nil_chk([((ACSettingsSyncState *) nil_chk(this$0_->syncState_)) getPendingActions])) removeWithId:val$action_];
  ACSettingsSyncActor_saveState(this$0_);
  [((ACUpdates *) nil_chk([this$0_ updates])) onUpdateReceivedWithId:new_ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_([((ARResponseSeq *) nil_chk(response)) getSeq], [response getState],
#line 77
  ARUpdateParameterChanged_HEADER, [new_ARUpdateParameterChanged_initWithNSString_withNSString_([((ACSettingsSyncAction *) nil_chk(val$action_)) getKey], [val$action_ getValue]) toByteArray])];
}

- (void)onError:(ACRpcException *)e {
}

- (instancetype)initWithACSettingsSyncActor:(ACSettingsSyncActor *)outer$
                   withACSettingsSyncAction:(ACSettingsSyncAction *)capture$0 {
  ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithACSettingsSyncActor:withACSettingsSyncAction:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.settings.SettingsSyncActor;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$action_", NULL, 0x1012, "Lim.actor.core.modules.internal.settings.entity.SettingsSyncAction;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACSettingsSyncActor", "performSyncWithACSettingsSyncAction:" };
  static const J2ObjcClassInfo _ACSettingsSyncActor_$2 = { 2, "", "im.actor.core.modules.internal.settings", "SettingsSyncActor", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/core/network/RpcCallback<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ACSettingsSyncActor_$2;
}

@end

void ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(ACSettingsSyncActor_$2 *self, ACSettingsSyncActor *outer$, ACSettingsSyncAction *capture$0) {
  self->this$0_ = outer$;
  self->val$action_ = capture$0;
  (void) NSObject_init(self);
}

ACSettingsSyncActor_$2 *new_ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(ACSettingsSyncActor *outer$, ACSettingsSyncAction *capture$0) {
  ACSettingsSyncActor_$2 *self = [ACSettingsSyncActor_$2 alloc];
  ACSettingsSyncActor_$2_initWithACSettingsSyncActor_withACSettingsSyncAction_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSettingsSyncActor_$2)

#pragma clang diagnostic pop

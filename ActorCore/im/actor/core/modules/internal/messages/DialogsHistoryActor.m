//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsHistoryActor.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestLoadDialogs.h"
#include "im/actor/core/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/Updates.h"
#include "im/actor/core/modules/internal/messages/DialogsHistoryActor.h"
#include "im/actor/core/modules/updates/internal/DialogHistoryLoaded.h"
#include "im/actor/core/modules/utils/ModuleActor.h"
#include "im/actor/core/network/RpcCallback.h"
#include "im/actor/core/network/RpcException.h"
#include "im/actor/runtime/Log.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/storage/PreferencesStorage.h"
#include <j2objc/java/lang/Long.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ACDialogsHistoryActor_LIMIT 20

@interface ACDialogsHistoryActor () {
 @public
  jlong historyMaxDate_;
  jboolean historyLoaded_;
  jboolean isLoading_;
}

- (void)onLoadMore;

- (void)onLoadedMoreWithInt:(jint)loaded
                   withLong:(jlong)maxLoadedDate;

@end

static NSString *ACDialogsHistoryActor_TAG_ = @"DialogsHistoryActor";
J2OBJC_STATIC_FIELD_GETTER(ACDialogsHistoryActor, TAG_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ACDialogsHistoryActor, LIMIT, jint)

static NSString *ACDialogsHistoryActor_KEY_LOADED_DATE_ = @"dialogs_history_date";
J2OBJC_STATIC_FIELD_GETTER(ACDialogsHistoryActor, KEY_LOADED_DATE_, NSString *)

static NSString *ACDialogsHistoryActor_KEY_LOADED_ = @"dialogs_history_loaded";
J2OBJC_STATIC_FIELD_GETTER(ACDialogsHistoryActor, KEY_LOADED_, NSString *)

static NSString *ACDialogsHistoryActor_KEY_LOADED_INIT_ = @"dialogs_history_inited";
J2OBJC_STATIC_FIELD_GETTER(ACDialogsHistoryActor, KEY_LOADED_INIT_, NSString *)

__attribute__((unused)) static void ACDialogsHistoryActor_onLoadMore(ACDialogsHistoryActor *self);

__attribute__((unused)) static void ACDialogsHistoryActor_onLoadedMoreWithInt_withLong_(ACDialogsHistoryActor *self, jint loaded, jlong maxLoadedDate);

@interface ACDialogsHistoryActor_LoadedMore () {
 @public
  jint loaded_;
  jlong maxLoadedDate_;
}

@end

@interface ACDialogsHistoryActor_$1 : NSObject < ACRpcCallback > {
 @public
  ACDialogsHistoryActor *this$0_;
}

- (void)onResult:(ARResponseLoadDialogs *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithACDialogsHistoryActor:(ACDialogsHistoryActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogsHistoryActor_$1)

J2OBJC_FIELD_SETTER(ACDialogsHistoryActor_$1, this$0_, ACDialogsHistoryActor *)

__attribute__((unused)) static void ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(ACDialogsHistoryActor_$1 *self, ACDialogsHistoryActor *outer$);

__attribute__((unused)) static ACDialogsHistoryActor_$1 *new_ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(ACDialogsHistoryActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogsHistoryActor_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsHistoryActor.java"


#line 16
@implementation ACDialogsHistoryActor


#line 31
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACDialogsHistoryActor_initWithACModuleContext_(self, context);
  return self;
}

- (void)preStart {
  historyMaxDate_ = [((id<ARPreferencesStorage>) nil_chk([self preferences])) getLongWithKey:ACDialogsHistoryActor_KEY_LOADED_DATE_ withDefault:JavaLangLong_MAX_VALUE];
  historyLoaded_ = [((id<ARPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:ACDialogsHistoryActor_KEY_LOADED_ withDefault:false];
  if (![((id<ARPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:ACDialogsHistoryActor_KEY_LOADED_INIT_ withDefault:false]) {
    [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:new_ACDialogsHistoryActor_LoadMore_init()];
  }
}

- (void)onLoadMore {
  ACDialogsHistoryActor_onLoadMore(self);
}


#line 72
- (void)onLoadedMoreWithInt:(jint)loaded
                   withLong:(jlong)maxLoadedDate {
  ACDialogsHistoryActor_onLoadedMoreWithInt_withLong_(self, loaded, maxLoadedDate);
}


#line 91
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ACDialogsHistoryActor_LoadMore class]]) {
    ACDialogsHistoryActor_onLoadMore(self);
  }
  else
#line 94
  if ([message isKindOfClass:[ACDialogsHistoryActor_LoadedMore class]]) {
    ACDialogsHistoryActor_LoadedMore *loaded = (ACDialogsHistoryActor_LoadedMore *) check_class_cast(message, [ACDialogsHistoryActor_LoadedMore class]);
    ACDialogsHistoryActor_onLoadedMoreWithInt_withLong_(self, ((ACDialogsHistoryActor_LoadedMore *) nil_chk(loaded))->loaded_, loaded->maxLoadedDate_);
  }
  else {
    
#line 98
    [self dropWithId:message];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "DialogsHistoryActor", NULL, 0x1, NULL, NULL },
    { "preStart", NULL, "V", 0x1, NULL, NULL },
    { "onLoadMore", NULL, "V", 0x2, NULL, NULL },
    { "onLoadedMoreWithInt:withLong:", "onLoadedMore", "V", 0x2, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &ACDialogsHistoryActor_TAG_, NULL, .constantValue.asLong = 0 },
    { "LIMIT", "LIMIT", 0x1a, "I", NULL, NULL, .constantValue.asInt = ACDialogsHistoryActor_LIMIT },
    { "KEY_LOADED_DATE_", NULL, 0x1a, "Ljava.lang.String;", &ACDialogsHistoryActor_KEY_LOADED_DATE_, NULL, .constantValue.asLong = 0 },
    { "KEY_LOADED_", NULL, 0x1a, "Ljava.lang.String;", &ACDialogsHistoryActor_KEY_LOADED_, NULL, .constantValue.asLong = 0 },
    { "KEY_LOADED_INIT_", NULL, 0x1a, "Ljava.lang.String;", &ACDialogsHistoryActor_KEY_LOADED_INIT_, NULL, .constantValue.asLong = 0 },
    { "historyMaxDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "historyLoaded_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "isLoading_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.internal.messages.DialogsHistoryActor$LoadMore;", "Lim.actor.core.modules.internal.messages.DialogsHistoryActor$LoadedMore;"};
  static const J2ObjcClassInfo _ACDialogsHistoryActor = { 2, "DialogsHistoryActor", "im.actor.core.modules.internal.messages", NULL, 0x1, 5, methods, 8, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_ACDialogsHistoryActor;
}

@end


#line 31
void ACDialogsHistoryActor_initWithACModuleContext_(ACDialogsHistoryActor *self, id<ACModuleContext> context) {
  (void) ACModuleActor_initWithACModuleContext_(self, context);
  self->isLoading_ =
#line 29
  false;
}


#line 31
ACDialogsHistoryActor *new_ACDialogsHistoryActor_initWithACModuleContext_(id<ACModuleContext> context) {
  ACDialogsHistoryActor *self = [ACDialogsHistoryActor alloc];
  ACDialogsHistoryActor_initWithACModuleContext_(self, context);
  return self;
}


#line 44
void ACDialogsHistoryActor_onLoadMore(ACDialogsHistoryActor *self) {
  if (self->historyLoaded_) {
    return;
  }
  if (self->isLoading_) {
    return;
  }
  self->isLoading_ = true;
  
#line 53
  ARLog_dWithNSString_withNSString_(ACDialogsHistoryActor_TAG_, JreStrcat("$J", @"Loading history... after ", self->historyMaxDate_));
  
#line 55
  [self requestWithACRequest:new_ARRequestLoadDialogs_initWithLong_withInt_(self->historyMaxDate_, ACDialogsHistoryActor_LIMIT) withACRpcCallback:new_ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(self)];
}


#line 72
void ACDialogsHistoryActor_onLoadedMoreWithInt_withLong_(ACDialogsHistoryActor *self, jint loaded, jlong maxLoadedDate) {
  self->isLoading_ = false;
  
#line 75
  if (loaded < ACDialogsHistoryActor_LIMIT) {
    self->historyLoaded_ = true;
  }
  else {
    
#line 78
    self->historyLoaded_ = false;
    self->historyMaxDate_ = maxLoadedDate;
  }
  [((id<ARPreferencesStorage>) nil_chk([self preferences])) putLongWithKey:ACDialogsHistoryActor_KEY_LOADED_DATE_ withValue:maxLoadedDate];
  [((id<ARPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:ACDialogsHistoryActor_KEY_LOADED_ withValue:self->historyLoaded_];
  [((id<ARPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:ACDialogsHistoryActor_KEY_LOADED_INIT_ withValue:true];
  
#line 85
  ARLog_dWithNSString_withNSString_(ACDialogsHistoryActor_TAG_, JreStrcat("$J", @"History loaded, time = ", maxLoadedDate));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogsHistoryActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsHistoryActor.java"


#line 102
@implementation ACDialogsHistoryActor_LoadMore

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACDialogsHistoryActor_LoadMore_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACDialogsHistoryActor_LoadMore = { 2, "LoadMore", "im.actor.core.modules.internal.messages", "DialogsHistoryActor", 0x9, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACDialogsHistoryActor_LoadMore;
}

@end

void ACDialogsHistoryActor_LoadMore_init(ACDialogsHistoryActor_LoadMore *self) {
  (void) NSObject_init(self);
}

ACDialogsHistoryActor_LoadMore *new_ACDialogsHistoryActor_LoadMore_init() {
  ACDialogsHistoryActor_LoadMore *self = [ACDialogsHistoryActor_LoadMore alloc];
  ACDialogsHistoryActor_LoadMore_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogsHistoryActor_LoadMore)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsHistoryActor.java"


#line 106
@implementation ACDialogsHistoryActor_LoadedMore


#line 110
- (instancetype)initWithInt:(jint)loaded
                   withLong:(jlong)maxLoadedDate {
  ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_(self, loaded, maxLoadedDate);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:", "LoadedMore", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "loaded_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxLoadedDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACDialogsHistoryActor_LoadedMore = { 2, "LoadedMore", "im.actor.core.modules.internal.messages", "DialogsHistoryActor", 0x9, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACDialogsHistoryActor_LoadedMore;
}

@end


#line 110
void ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_(ACDialogsHistoryActor_LoadedMore *self, jint loaded, jlong maxLoadedDate) {
  (void) NSObject_init(self);
  
#line 111
  self->loaded_ = loaded;
  self->maxLoadedDate_ = maxLoadedDate;
}


#line 110
ACDialogsHistoryActor_LoadedMore *new_ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_(jint loaded, jlong maxLoadedDate) {
  ACDialogsHistoryActor_LoadedMore *self = [ACDialogsHistoryActor_LoadedMore alloc];
  ACDialogsHistoryActor_LoadedMore_initWithInt_withLong_(self, loaded, maxLoadedDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogsHistoryActor_LoadedMore)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/DialogsHistoryActor.java"

@implementation ACDialogsHistoryActor_$1


#line 58
- (void)onResult:(ARResponseLoadDialogs *)response {
  
#line 61
  [((ACUpdates *) nil_chk([this$0_ updates])) onUpdateReceivedWithId:new_ACDialogHistoryLoaded_initWithARResponseLoadDialogs_(response)];
}


#line 65
- (void)onError:(ACRpcException *)e {
  [((ACRpcException *) nil_chk(e)) printStackTrace];
}

- (instancetype)initWithACDialogsHistoryActor:(ACDialogsHistoryActor *)outer$ {
  ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithACDialogsHistoryActor:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.internal.messages.DialogsHistoryActor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACDialogsHistoryActor", "onLoadMore" };
  static const J2ObjcClassInfo _ACDialogsHistoryActor_$1 = { 2, "", "im.actor.core.modules.internal.messages", "DialogsHistoryActor", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/core/network/RpcCallback<Lim/actor/core/api/rpc/ResponseLoadDialogs;>;" };
  return &_ACDialogsHistoryActor_$1;
}

@end

void ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(ACDialogsHistoryActor_$1 *self, ACDialogsHistoryActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACDialogsHistoryActor_$1 *new_ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(ACDialogsHistoryActor *outer$) {
  ACDialogsHistoryActor_$1 *self = [ACDialogsHistoryActor_$1 alloc];
  ACDialogsHistoryActor_$1_initWithACDialogsHistoryActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACDialogsHistoryActor_$1)

#pragma clang diagnostic pop

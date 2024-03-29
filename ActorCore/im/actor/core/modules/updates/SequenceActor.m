//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java
//

#include <j2objc/IOSObjectArray.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiDifferenceUpdate.h"
#include "im/actor/core/api/base/FatSeqUpdate.h"
#include "im/actor/core/api/base/SeqUpdate.h"
#include "im/actor/core/api/base/SeqUpdateTooLong.h"
#include "im/actor/core/api/base/WeakUpdate.h"
#include "im/actor/core/api/parser/UpdatesParser.h"
#include "im/actor/core/api/rpc/RequestGetDifference.h"
#include "im/actor/core/api/rpc/RequestGetState.h"
#include "im/actor/core/api/rpc/ResponseGetDifference.h"
#include "im/actor/core/api/rpc/ResponseSeq.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/internal/AppStateModule.h"
#include "im/actor/core/modules/updates/SequenceActor.h"
#include "im/actor/core/modules/updates/UpdateProcessor.h"
#include "im/actor/core/modules/updates/internal/ExecuteAfter.h"
#include "im/actor/core/modules/updates/internal/InternalUpdate.h"
#include "im/actor/core/modules/utils/ModuleActor.h"
#include "im/actor/core/network/RpcCallback.h"
#include "im/actor/core/network/RpcException.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/core/viewmodel/AppStateVM.h"
#include "im/actor/core/viewmodel/generics/BooleanValueModel.h"
#include "im/actor/runtime/Log.h"
#include "im/actor/runtime/Runtime.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/storage/PreferencesStorage.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Boolean.h>
#include <j2objc/java/lang/Integer.h>
#include <j2objc/java/lang/Runnable.h>
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/HashMap.h>
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ACSequenceActor_INVALIDATE_GAP 2000
#define ACSequenceActor_INVALIDATE_MAX_SEC_HOLE 10

@interface ACSequenceActor () {
 @public
  JavaUtilHashMap *further_;
  JavaUtilArrayList *pendingRunnables_;
  jboolean isValidated_;
  jboolean isTimerStarted_;
  jint seq_;
  IOSByteArray *state_;
  ACUpdateProcessor *processor_;
  ARUpdatesParser *parser_;
}

- (void)onUpdateReceivedWithId:(id)u;

- (jboolean)isValidSeqWithInt:(jint)seq;

- (void)invalidate;

- (void)onUpdateStarted;

- (void)onUpdateEnded;

- (void)checkFuture;

- (void)checkRunnables;

@end

J2OBJC_FIELD_SETTER(ACSequenceActor, further_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ACSequenceActor, pendingRunnables_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ACSequenceActor, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ACSequenceActor, processor_, ACUpdateProcessor *)
J2OBJC_FIELD_SETTER(ACSequenceActor, parser_, ARUpdatesParser *)

static NSString *ACSequenceActor_TAG_ = @"Updates";
J2OBJC_STATIC_FIELD_GETTER(ACSequenceActor, TAG_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ACSequenceActor, INVALIDATE_GAP, jint)

J2OBJC_STATIC_FIELD_GETTER(ACSequenceActor, INVALIDATE_MAX_SEC_HOLE, jint)

static NSString *ACSequenceActor_KEY_SEQ_ = @"updates_seq";
J2OBJC_STATIC_FIELD_GETTER(ACSequenceActor, KEY_SEQ_, NSString *)

static NSString *ACSequenceActor_KEY_STATE_ = @"updates_state";
J2OBJC_STATIC_FIELD_GETTER(ACSequenceActor, KEY_STATE_, NSString *)

__attribute__((unused)) static void ACSequenceActor_onUpdateReceivedWithId_(ACSequenceActor *self, id u);

__attribute__((unused)) static jboolean ACSequenceActor_isValidSeqWithInt_(ACSequenceActor *self, jint seq);

__attribute__((unused)) static void ACSequenceActor_invalidate(ACSequenceActor *self);

__attribute__((unused)) static void ACSequenceActor_onUpdateStarted(ACSequenceActor *self);

__attribute__((unused)) static void ACSequenceActor_onUpdateEnded(ACSequenceActor *self);

__attribute__((unused)) static void ACSequenceActor_checkFuture(ACSequenceActor *self);

__attribute__((unused)) static void ACSequenceActor_checkRunnables(ACSequenceActor *self);

@interface ACSequenceActor_PushSeq () {
 @public
  jint seq_;
}

@end

@interface ACSequenceActor_$1 : NSObject < ACRpcCallback > {
 @public
  ACSequenceActor *this$0_;
}

- (void)onResult:(ARResponseSeq *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithACSequenceActor:(ACSequenceActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSequenceActor_$1)

J2OBJC_FIELD_SETTER(ACSequenceActor_$1, this$0_, ACSequenceActor *)

__attribute__((unused)) static void ACSequenceActor_$1_initWithACSequenceActor_(ACSequenceActor_$1 *self, ACSequenceActor *outer$);

__attribute__((unused)) static ACSequenceActor_$1 *new_ACSequenceActor_$1_initWithACSequenceActor_(ACSequenceActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSequenceActor_$1)

@interface ACSequenceActor_$2 : NSObject < ACRpcCallback > {
 @public
  ACSequenceActor *this$0_;
  jlong val$loadStart_;
}

- (void)onResult:(ARResponseGetDifference *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithACSequenceActor:(ACSequenceActor *)outer$
                               withLong:(jlong)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ACSequenceActor_$2)

J2OBJC_FIELD_SETTER(ACSequenceActor_$2, this$0_, ACSequenceActor *)

__attribute__((unused)) static void ACSequenceActor_$2_initWithACSequenceActor_withLong_(ACSequenceActor_$2 *self, ACSequenceActor *outer$, jlong capture$0);

__attribute__((unused)) static ACSequenceActor_$2 *new_ACSequenceActor_$2_initWithACSequenceActor_withLong_(ACSequenceActor *outer$, jlong capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACSequenceActor_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java"


#line 31
@implementation ACSequenceActor


#line 53
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)modules {
  ACSequenceActor_initWithACModuleContext_(self, modules);
  return self;
}

- (void)preStart {
  seq_ = [((id<ARPreferencesStorage>) nil_chk([self preferences])) getIntWithKey:ACSequenceActor_KEY_SEQ_ withDefault:-1];
  state_ = [((id<ARPreferencesStorage>) nil_chk([self preferences])) getBytesWithKey:ACSequenceActor_KEY_STATE_];
  parser_ = new_ARUpdatesParser_init();
  processor_ = new_ACUpdateProcessor_initWithACModuleContext_([self context]);
  
#line 64
  [((ARActorRef *) nil_chk([self self__])) sendWithId:new_ACSequenceActor_Invalidate_init()];
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ACSequenceActor_Invalidate class]] || [message isKindOfClass:[ARSeqUpdateTooLong class]] ||
#line 70
  [message isKindOfClass:[ACSequenceActor_ForceInvalidate class]]) {
    ACSequenceActor_invalidate(self);
  }
  else
#line 72
  if ([message isKindOfClass:[ARSeqUpdate class]]) {
    ACSequenceActor_onUpdateReceivedWithId_(self, message);
  }
  else
#line 74
  if ([message isKindOfClass:[ARFatSeqUpdate class]]) {
    ACSequenceActor_onUpdateReceivedWithId_(self, message);
  }
  else
#line 76
  if ([message isKindOfClass:[ARWeakUpdate class]]) {
    ACSequenceActor_onUpdateReceivedWithId_(self, message);
  }
  else
#line 78
  if ([message isKindOfClass:[ACInternalUpdate class]]) {
    ACSequenceActor_onUpdateReceivedWithId_(self, message);
  }
  else
#line 80
  if ([message isKindOfClass:[ACExecuteAfter class]]) {
    ACSequenceActor_onUpdateReceivedWithId_(self, message);
  }
  else
#line 82
  if ([message isKindOfClass:[ACSequenceActor_PushSeq class]]) {
    ACSequenceActor_onUpdateReceivedWithId_(self, message);
  }
  else {
    
#line 85
    [self dropWithId:message];
  }
}


#line 89
- (void)onUpdateReceivedWithId:(id)u {
  ACSequenceActor_onUpdateReceivedWithId_(self, u);
}


#line 220
- (jboolean)isValidSeqWithInt:(jint)seq {
  return ACSequenceActor_isValidSeqWithInt_(self, seq);
}

- (void)invalidate {
  ACSequenceActor_invalidate(self);
}


#line 332
- (void)onUpdateStarted {
  ACSequenceActor_onUpdateStarted(self);
}

- (void)onUpdateEnded {
  ACSequenceActor_onUpdateEnded(self);
}

- (void)checkFuture {
  ACSequenceActor_checkFuture(self);
}


#line 351
- (void)checkRunnables {
  ACSequenceActor_checkRunnables(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "SequenceActor", NULL, 0x1, NULL, NULL },
    { "preStart", NULL, "V", 0x1, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
    { "onUpdateReceivedWithId:", "onUpdateReceived", "V", 0x2, NULL, NULL },
    { "isValidSeqWithInt:", "isValidSeq", "Z", 0x2, NULL, NULL },
    { "invalidate", NULL, "V", 0x2, NULL, NULL },
    { "onUpdateStarted", NULL, "V", 0x2, NULL, NULL },
    { "onUpdateEnded", NULL, "V", 0x2, NULL, NULL },
    { "checkFuture", NULL, "V", 0x2, NULL, NULL },
    { "checkRunnables", NULL, "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &ACSequenceActor_TAG_, NULL, .constantValue.asLong = 0 },
    { "INVALIDATE_GAP", "INVALIDATE_GAP", 0x1a, "I", NULL, NULL, .constantValue.asInt = ACSequenceActor_INVALIDATE_GAP },
    { "INVALIDATE_MAX_SEC_HOLE", "INVALIDATE_MAX_SEC_HOLE", 0x1a, "I", NULL, NULL, .constantValue.asInt = ACSequenceActor_INVALIDATE_MAX_SEC_HOLE },
    { "KEY_SEQ_", NULL, 0x1a, "Ljava.lang.String;", &ACSequenceActor_KEY_SEQ_, NULL, .constantValue.asLong = 0 },
    { "KEY_STATE_", NULL, 0x1a, "Ljava.lang.String;", &ACSequenceActor_KEY_STATE_, NULL, .constantValue.asLong = 0 },
    { "further_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;", .constantValue.asLong = 0 },
    { "pendingRunnables_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/core/modules/updates/internal/ExecuteAfter;>;", .constantValue.asLong = 0 },
    { "isValidated_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "isTimerStarted_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "processor_", NULL, 0x2, "Lim.actor.core.modules.updates.UpdateProcessor;", NULL, NULL, .constantValue.asLong = 0 },
    { "parser_", NULL, 0x2, "Lim.actor.core.api.parser.UpdatesParser;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.updates.SequenceActor$ForceInvalidate;", "Lim.actor.core.modules.updates.SequenceActor$Invalidate;", "Lim.actor.core.modules.updates.SequenceActor$PushSeq;"};
  static const J2ObjcClassInfo _ACSequenceActor = { 2, "SequenceActor", "im.actor.core.modules.updates", NULL, 0x1, 10, methods, 13, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_ACSequenceActor;
}

@end


#line 53
void ACSequenceActor_initWithACModuleContext_(ACSequenceActor *self, id<ACModuleContext> modules) {
  (void) ACModuleActor_initWithACModuleContext_(self, modules);
  self->further_ = new_JavaUtilHashMap_init();
  self->pendingRunnables_ = new_JavaUtilArrayList_init();
  self->isValidated_ =
#line 44
  true;
  self->isTimerStarted_ = false;
}


#line 53
ACSequenceActor *new_ACSequenceActor_initWithACModuleContext_(id<ACModuleContext> modules) {
  ACSequenceActor *self = [ACSequenceActor alloc];
  ACSequenceActor_initWithACModuleContext_(self, modules);
  return self;
}


#line 89
void ACSequenceActor_onUpdateReceivedWithId_(ACSequenceActor *self, id u) {
  
#line 91
  jint seq;
  IOSByteArray *state;
  jint type;
  IOSByteArray *body;
  if ([u isKindOfClass:[ARSeqUpdate class]]) {
    seq = [((ARSeqUpdate *) nil_chk(((ARSeqUpdate *) check_class_cast(u, [ARSeqUpdate class])))) getSeq];
    state = [((ARSeqUpdate *) nil_chk(((ARSeqUpdate *) check_class_cast(u, [ARSeqUpdate class])))) getState];
    type = [((ARSeqUpdate *) nil_chk(((ARSeqUpdate *) check_class_cast(u, [ARSeqUpdate class])))) getUpdateHeader];
    body = [((ARSeqUpdate *) nil_chk(((ARSeqUpdate *) check_class_cast(u, [ARSeqUpdate class])))) getUpdate];
  }
  else
#line 100
  if ([u isKindOfClass:[ARFatSeqUpdate class]]) {
    seq = [((ARFatSeqUpdate *) nil_chk(((ARFatSeqUpdate *) check_class_cast(u, [ARFatSeqUpdate class])))) getSeq];
    state = [((ARFatSeqUpdate *) nil_chk(((ARFatSeqUpdate *) check_class_cast(u, [ARFatSeqUpdate class])))) getState];
    type = [((ARFatSeqUpdate *) nil_chk(((ARFatSeqUpdate *) check_class_cast(u, [ARFatSeqUpdate class])))) getUpdateHeader];
    body = [((ARFatSeqUpdate *) nil_chk(((ARFatSeqUpdate *) check_class_cast(u, [ARFatSeqUpdate class])))) getUpdate];
  }
  else
#line 105
  if ([u isKindOfClass:[ARWeakUpdate class]]) {
    ARWeakUpdate *w = (ARWeakUpdate *) check_class_cast(u, [ARWeakUpdate class]);
    @try {
      ACUpdate *update = [((ARUpdatesParser *) nil_chk(self->parser_)) readWithInt:[((ARWeakUpdate *) nil_chk(w)) getUpdateHeader] withByteArray:[w getUpdate]];
      [((ACUpdateProcessor *) nil_chk(self->processor_)) processWeakUpdateWithACUpdate:update withLong:[w getDate]];
      ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$@", @"Weak Update: ", update));
    }
    @catch (
#line 111
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"Unable to parse update: ignoring");
    }
    return;
  }
  else
#line 116
  if ([u isKindOfClass:[ACInternalUpdate class]]) {
    ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, @"Received internal update");
    [((ACUpdateProcessor *) nil_chk(self->processor_)) processInternalUpdateWithACInternalUpdate:(ACInternalUpdate *) check_class_cast(u, [ACInternalUpdate class])];
    return;
  }
  else
#line 120
  if ([u isKindOfClass:[ACExecuteAfter class]]) {
    ACExecuteAfter *after = (ACExecuteAfter *) check_class_cast(u, [ACExecuteAfter class]);
    if ([((ACExecuteAfter *) nil_chk(after)) getSeq] <= self->seq_) {
      [((id<JavaLangRunnable>) nil_chk([after getRunnable])) run];
    }
    else {
      
#line 125
      [((JavaUtilArrayList *) nil_chk(self->pendingRunnables_)) addWithId:after];
    }
    return;
  }
  else
#line 128
  if ([u isKindOfClass:[ACSequenceActor_PushSeq class]]) {
    ACSequenceActor_PushSeq *pushSeq = (ACSequenceActor_PushSeq *) check_class_cast(u, [ACSequenceActor_PushSeq class]);
    if (((ACSequenceActor_PushSeq *) nil_chk(pushSeq))->seq_ <= self->seq_) {
      ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$IC", @"Ignored PushSeq {seq:", pushSeq->seq_, '}'));
    }
    else {
      
#line 133
      ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"External Out of sequence: starting timer for invalidation");
      [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:new_ACSequenceActor_ForceInvalidate_init() withLong:ACSequenceActor_INVALIDATE_GAP];
    }
    return;
  }
  else {
    
#line 138
    return;
  }
  
#line 142
  if (seq <= self->seq_) {
    ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$I$IC", @"Ignored SeqUpdate {seq:", seq, @", currentSeq: ", self->seq_, '}'));
    return;
  }
  ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$IC", @"SeqUpdate {seq:", seq, '}'));
  
#line 148
  if (!self->isValidated_) {
    ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, @"Caching in further map");
    (void) [((JavaUtilHashMap *) nil_chk(self->further_)) putWithId:JavaLangInteger_valueOfWithInt_(seq) withId:u];
    return;
  }
  
#line 154
  if (!ACSequenceActor_isValidSeqWithInt_(self, seq)) {
    (void) [((JavaUtilHashMap *) nil_chk(self->further_)) putWithId:JavaLangInteger_valueOfWithInt_(seq) withId:u];
    
#line 157
    if (seq - self->seq_ > ACSequenceActor_INVALIDATE_MAX_SEC_HOLE) {
      ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"Out of sequence: Too big hole. Force invalidate immediately");
      [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:new_ACSequenceActor_ForceInvalidate_init()];
      return;
    }
    
#line 163
    if (self->isTimerStarted_) {
      ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"Out of sequence: timer already started");
    }
    else {
      
#line 166
      ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"Out of sequence: starting timer for invalidation");
      [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:new_ACSequenceActor_ForceInvalidate_init() withLong:ACSequenceActor_INVALIDATE_GAP];
      self->isTimerStarted_ = true;
    }
    
#line 171
    return;
  }
  
#line 175
  ACUpdate *update = nil;
  @try {
    update = [new_ARUpdatesParser_init() readWithInt:type withByteArray:body];
  }
  @catch (
#line 178
  JavaIoIOException *e) {
    ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"Unable to parse update: ignoring");
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
  }
  
#line 183
  if (update != nil) {
    if ((!([u isKindOfClass:[ARFatSeqUpdate class]])) && [((ACUpdateProcessor *) nil_chk(self->processor_)) isCausesInvalidationWithACUpdate:update]) {
      ARLog_wWithNSString_withNSString_(ACSequenceActor_TAG_, @"Message causes invalidation");
      ACSequenceActor_invalidate(self);
      return;
    }
    
#line 191
    ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$@", @"Processing update: ", update));
    
#line 193
    if ([u isKindOfClass:[ARFatSeqUpdate class]]) {
      ARFatSeqUpdate *fatSeqUpdate = (ARFatSeqUpdate *) check_class_cast(u, [ARFatSeqUpdate class]);
      [((ACUpdateProcessor *) nil_chk(self->processor_)) applyRelatedWithJavaUtilList:[((ARFatSeqUpdate *) nil_chk(fatSeqUpdate)) getUsers] withJavaUtilList:[fatSeqUpdate getGroups] withBoolean:false];
    }
    
#line 198
    [((ACUpdateProcessor *) nil_chk(self->processor_)) processUpdateWithACUpdate:update];
    
#line 200
    if ([u isKindOfClass:[ARFatSeqUpdate class]]) {
      ARFatSeqUpdate *fatSeqUpdate = (ARFatSeqUpdate *) check_class_cast(u, [ARFatSeqUpdate class]);
      [self->processor_ applyRelatedWithJavaUtilList:[((ARFatSeqUpdate *) nil_chk(fatSeqUpdate)) getUsers] withJavaUtilList:[fatSeqUpdate getGroups] withBoolean:true];
    }
  }
  
#line 207
  self->seq_ = seq;
  self->state_ = state;
  [((id<ARPreferencesStorage>) nil_chk([self preferences])) putIntWithKey:ACSequenceActor_KEY_SEQ_ withValue:seq];
  [((id<ARPreferencesStorage>) nil_chk([self preferences])) putBytesWithKey:ACSequenceActor_KEY_STATE_ withValue:state];
  
#line 212
  ACSequenceActor_checkRunnables(self);
  ACSequenceActor_checkFuture(self);
  
#line 216
  self->isTimerStarted_ = false;
  [((ARActorRef *) nil_chk([self self__])) sendOnceWithId:new_ACSequenceActor_ForceInvalidate_init() withLong:24 * 60 * 60 * 1000LL];
}


#line 220
jboolean ACSequenceActor_isValidSeqWithInt_(ACSequenceActor *self, jint seq) {
  return self->seq_ <= 0 || seq == self->seq_ + 1;
}

void ACSequenceActor_invalidate(ACSequenceActor *self) {
  if (!self->isValidated_) {
    return;
  }
  self->isValidated_ = false;
  
#line 230
  if (self->seq_ < 0) {
    ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, @"Loading fresh state...");
    [self requestWithACRequest:new_ARRequestGetState_init() withACRpcCallback:new_ACSequenceActor_$1_initWithACSequenceActor_(self)];
  }
  else {
    
#line 268
    ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, @"Loading difference...");
    ACSequenceActor_onUpdateStarted(self);
    jlong loadStart = ARRuntime_getCurrentTime();
    [self requestWithACRequest:new_ARRequestGetDifference_initWithInt_withByteArray_(self->seq_, self->state_) withACRpcCallback:new_ACSequenceActor_$2_initWithACSequenceActor_withLong_(self, loadStart)];
  }
}


#line 332
void ACSequenceActor_onUpdateStarted(ACSequenceActor *self) {
  [((ACBooleanValueModel *) nil_chk([((ACAppStateVM *) nil_chk([((ACAppStateModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getAppStateModule])) getAppStateVM])) getIsSyncing])) changeWithValue:JavaLangBoolean_valueOfWithBoolean_(true)];
}

void ACSequenceActor_onUpdateEnded(ACSequenceActor *self) {
  [((ACBooleanValueModel *) nil_chk([((ACAppStateVM *) nil_chk([((ACAppStateModule *) nil_chk([((id<ACModuleContext>) nil_chk([self context])) getAppStateModule])) getAppStateVM])) getIsSyncing])) changeWithValue:JavaLangBoolean_valueOfWithBoolean_(false)];
}

void ACSequenceActor_checkFuture(ACSequenceActor *self) {
  for (jint i = self->seq_ + 1; ; i++) {
    if ([((JavaUtilHashMap *) nil_chk(self->further_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(i)]) {
      [self onReceiveWithId:[self->further_ removeWithId:JavaLangInteger_valueOfWithInt_(i)]];
    }
    else {
      
#line 345
      break;
    }
  }
  [((JavaUtilHashMap *) nil_chk(self->further_)) clear];
}


#line 351
void ACSequenceActor_checkRunnables(ACSequenceActor *self) {
  if ([((JavaUtilArrayList *) nil_chk(self->pendingRunnables_)) size] > 0) {
    {
      IOSObjectArray *a__ =
#line 353
      [self->pendingRunnables_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[self->pendingRunnables_ size] type:ACExecuteAfter_class_()]];
      ACExecuteAfter * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      ACExecuteAfter * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        ACExecuteAfter *e = *b__++;
        
#line 354
        if ([((ACExecuteAfter *) nil_chk(e)) getSeq] <= self->seq_) {
          [((id<JavaLangRunnable>) nil_chk([e getRunnable])) run];
          [self->pendingRunnables_ removeWithId:e];
        }
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSequenceActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java"


#line 362
@implementation ACSequenceActor_ForceInvalidate

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACSequenceActor_ForceInvalidate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACSequenceActor_ForceInvalidate = { 2, "ForceInvalidate", "im.actor.core.modules.updates", "SequenceActor", 0x9, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSequenceActor_ForceInvalidate;
}

@end

void ACSequenceActor_ForceInvalidate_init(ACSequenceActor_ForceInvalidate *self) {
  (void) NSObject_init(self);
}

ACSequenceActor_ForceInvalidate *new_ACSequenceActor_ForceInvalidate_init() {
  ACSequenceActor_ForceInvalidate *self = [ACSequenceActor_ForceInvalidate alloc];
  ACSequenceActor_ForceInvalidate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSequenceActor_ForceInvalidate)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java"


#line 366
@implementation ACSequenceActor_Invalidate

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACSequenceActor_Invalidate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACSequenceActor_Invalidate = { 2, "Invalidate", "im.actor.core.modules.updates", "SequenceActor", 0x9, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSequenceActor_Invalidate;
}

@end

void ACSequenceActor_Invalidate_init(ACSequenceActor_Invalidate *self) {
  (void) NSObject_init(self);
}

ACSequenceActor_Invalidate *new_ACSequenceActor_Invalidate_init() {
  ACSequenceActor_Invalidate *self = [ACSequenceActor_Invalidate alloc];
  ACSequenceActor_Invalidate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSequenceActor_Invalidate)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java"


#line 370
@implementation ACSequenceActor_PushSeq


#line 373
- (instancetype)initWithInt:(jint)seq {
  ACSequenceActor_PushSeq_initWithInt_(self, seq);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "PushSeq", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACSequenceActor_PushSeq = { 2, "PushSeq", "im.actor.core.modules.updates", "SequenceActor", 0x9, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACSequenceActor_PushSeq;
}

@end


#line 373
void ACSequenceActor_PushSeq_initWithInt_(ACSequenceActor_PushSeq *self, jint seq) {
  (void) NSObject_init(self);
  
#line 374
  self->seq_ = seq;
}


#line 373
ACSequenceActor_PushSeq *new_ACSequenceActor_PushSeq_initWithInt_(jint seq) {
  ACSequenceActor_PushSeq *self = [ACSequenceActor_PushSeq alloc];
  ACSequenceActor_PushSeq_initWithInt_(self, seq);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSequenceActor_PushSeq)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java"

@implementation ACSequenceActor_$1


#line 234
- (void)onResult:(ARResponseSeq *)response {
  if (this$0_->isValidated_) {
    return;
  }
  
#line 239
  this$0_->seq_ = [((ARResponseSeq *) nil_chk(response)) getSeq];
  this$0_->state_ = [response getState];
  
#line 242
  this$0_->isValidated_ = true;
  
#line 244
  [((id<ARPreferencesStorage>) nil_chk([this$0_ preferences])) putIntWithKey:ACSequenceActor_KEY_SEQ_ withValue:this$0_->seq_];
  [((id<ARPreferencesStorage>) nil_chk([this$0_ preferences])) putBytesWithKey:ACSequenceActor_KEY_STATE_ withValue:this$0_->state_];
  
#line 247
  ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$IC", @"State loaded {seq=", this$0_->seq_, '}'));
  
#line 249
  ACSequenceActor_checkRunnables(this$0_);
  ACSequenceActor_checkFuture(this$0_);
  
#line 253
  this$0_->isTimerStarted_ = false;
  [((ARActorRef *) nil_chk([this$0_ self__])) sendOnceWithId:new_ACSequenceActor_ForceInvalidate_init() withLong:24 * 60 * 60 * 1000LL];
}


#line 258
- (void)onError:(ACRpcException *)e {
  if (this$0_->isValidated_) {
    return;
  }
  this$0_->isValidated_ = true;
  
#line 264
  ACSequenceActor_invalidate(this$0_);
}

- (instancetype)initWithACSequenceActor:(ACSequenceActor *)outer$ {
  ACSequenceActor_$1_initWithACSequenceActor_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithACSequenceActor:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.updates.SequenceActor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACSequenceActor", "invalidate" };
  static const J2ObjcClassInfo _ACSequenceActor_$1 = { 2, "", "im.actor.core.modules.updates", "SequenceActor", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/core/network/RpcCallback<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ACSequenceActor_$1;
}

@end

void ACSequenceActor_$1_initWithACSequenceActor_(ACSequenceActor_$1 *self, ACSequenceActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ACSequenceActor_$1 *new_ACSequenceActor_$1_initWithACSequenceActor_(ACSequenceActor *outer$) {
  ACSequenceActor_$1 *self = [ACSequenceActor_$1 alloc];
  ACSequenceActor_$1_initWithACSequenceActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSequenceActor_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/SequenceActor.java"

@implementation ACSequenceActor_$2


#line 273
- (void)onResult:(ARResponseGetDifference *)response {
  if (this$0_->isValidated_) {
    return;
  }
  
#line 278
  ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$I$J$", @"Difference loaded {seq=", [((ARResponseGetDifference *) nil_chk(response)) getSeq], @"} in ",
#line 279
  (ARRuntime_getCurrentTime() - val$loadStart_), @" ms"));
  
#line 281
  jlong parseStart = ARRuntime_getCurrentTime();
  JavaUtilArrayList *updates = new_JavaUtilArrayList_init();
  for (ARApiDifferenceUpdate * __strong u in nil_chk([response getUpdates])) {
    @try {
      [updates addWithId:[((ARUpdatesParser *) nil_chk(this$0_->parser_)) readWithInt:[((ARApiDifferenceUpdate *) nil_chk(u)) getUpdateHeader] withByteArray:[u getUpdate]]];
    }
    @catch (
#line 286
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$I$", @"Broken update #", [((ARApiDifferenceUpdate *) nil_chk(u)) getUpdateHeader], @": ignoring"));
    }
  }
  ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$J$", @"Difference parsed  in ", (ARRuntime_getCurrentTime() - parseStart), @" ms"));
  
#line 293
  jlong applyStart = ARRuntime_getCurrentTime();
  [((ACUpdateProcessor *) nil_chk(this$0_->processor_)) applyDifferenceUpdateWithJavaUtilList:[response getUsers] withJavaUtilList:[response getGroups] withJavaUtilList:updates];
  ARLog_dWithNSString_withNSString_(ACSequenceActor_TAG_, JreStrcat("$J$", @"Difference applied in ", (ARRuntime_getCurrentTime() - applyStart), @" ms"));
  
#line 297
  this$0_->seq_ = [response getSeq];
  this$0_->state_ = [response getState];
  
#line 300
  this$0_->isValidated_ = true;
  
#line 302
  [((id<ARPreferencesStorage>) nil_chk([this$0_ preferences])) putIntWithKey:ACSequenceActor_KEY_SEQ_ withValue:this$0_->seq_];
  [((id<ARPreferencesStorage>) nil_chk([this$0_ preferences])) putBytesWithKey:ACSequenceActor_KEY_STATE_ withValue:this$0_->state_];
  
#line 305
  ACSequenceActor_checkRunnables(this$0_);
  ACSequenceActor_checkFuture(this$0_);
  
#line 309
  this$0_->isTimerStarted_ = false;
  [((ARActorRef *) nil_chk([this$0_ self__])) sendOnceWithId:new_ACSequenceActor_ForceInvalidate_init() withLong:24 * 60 * 60 * 1000LL];
  
#line 312
  if ([response needMore]) {
    ACSequenceActor_invalidate(this$0_);
  }
  else {
    
#line 315
    ACSequenceActor_onUpdateEnded(this$0_);
  }
}


#line 320
- (void)onError:(ACRpcException *)e {
  if (this$0_->isValidated_) {
    return;
  }
  this$0_->isValidated_ = true;
  
#line 326
  ACSequenceActor_invalidate(this$0_);
}

- (instancetype)initWithACSequenceActor:(ACSequenceActor *)outer$
                               withLong:(jlong)capture$0 {
  ACSequenceActor_$2_initWithACSequenceActor_withLong_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithACSequenceActor:withLong:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.updates.SequenceActor;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$loadStart_", NULL, 0x1012, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACSequenceActor", "invalidate" };
  static const J2ObjcClassInfo _ACSequenceActor_$2 = { 2, "", "im.actor.core.modules.updates", "SequenceActor", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/core/network/RpcCallback<Lim/actor/core/api/rpc/ResponseGetDifference;>;" };
  return &_ACSequenceActor_$2;
}

@end

void ACSequenceActor_$2_initWithACSequenceActor_withLong_(ACSequenceActor_$2 *self, ACSequenceActor *outer$, jlong capture$0) {
  self->this$0_ = outer$;
  self->val$loadStart_ = capture$0;
  (void) NSObject_init(self);
}

ACSequenceActor_$2 *new_ACSequenceActor_$2_initWithACSequenceActor_withLong_(ACSequenceActor *outer$, jlong capture$0) {
  ACSequenceActor_$2 *self = [ACSequenceActor_$2 alloc];
  ACSequenceActor_$2_initWithACSequenceActor_withLong_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACSequenceActor_$2)

#pragma clang diagnostic pop

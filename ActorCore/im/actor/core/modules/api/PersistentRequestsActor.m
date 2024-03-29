//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/PersistentRequestsActor.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/modules/ModuleContext.h"
#include "im/actor/core/modules/api/PersistentRequestsActor.h"
#include "im/actor/core/modules/api/entity/CursorStoredRequest.h"
#include "im/actor/core/modules/api/entity/PersistentStorage.h"
#include "im/actor/core/modules/api/entity/StoredRequest.h"
#include "im/actor/core/modules/utils/ModuleActor.h"
#include "im/actor/core/network/RpcCallback.h"
#include "im/actor/core/network/RpcException.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/Storage.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/storage/KeyValueStorage.h"
#include <j2objc/java/lang/Throwable.h>
#include <j2objc/java/util/ArrayList.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ImActorCoreModulesApiPersistentRequestsActor () {
 @public
  id<ARKeyValueStorage> storage_;
  ImActorCoreModulesApiEntityPersistentStorage *requestsStorage_;
}

- (void)onNewRequestWithACRequest:(ACRequest *)request;

- (void)onNewCursorRequestWithNSString:(NSString *)name
                              withLong:(jlong)key
                         withACRequest:(ACRequest *)request;

- (void)performCursorRequestWithACRequest:(ACRequest *)request
                             withNSString:(NSString *)name
                                 withLong:(jlong)key;

- (void)requestCompletedWithNSString:(NSString *)name
                            withLong:(jlong)key;

- (void)performRequestWithImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)request;

- (void)requestCompletedWithImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)request;

- (void)saveStorage;

@end

J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor, storage_, id<ARKeyValueStorage>)
J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor, requestsStorage_, ImActorCoreModulesApiEntityPersistentStorage *)

static NSString *ImActorCoreModulesApiPersistentRequestsActor_STORAGE_ = @"persistent_requests";
J2OBJC_STATIC_FIELD_GETTER(ImActorCoreModulesApiPersistentRequestsActor, STORAGE_, NSString *)

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_onNewRequestWithACRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, ACRequest *request);

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_onNewCursorRequestWithNSString_withLong_withACRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, NSString *name, jlong key, ACRequest *request);

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_performCursorRequestWithACRequest_withNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor *self, ACRequest *request, NSString *name, jlong key);

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor *self, NSString *name, jlong key);

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_performRequestWithImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, ImActorCoreModulesApiEntityStoredRequest *request);

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, ImActorCoreModulesApiEntityStoredRequest *request);

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_saveStorage(ImActorCoreModulesApiPersistentRequestsActor *self);

@interface ImActorCoreModulesApiPersistentRequestsActor_PerformRequest () {
 @public
  ACRequest *request_;
}

@end

J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_PerformRequest, request_, ACRequest *)

@interface ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest () {
 @public
  NSString *name_;
  jlong key_;
  ACRequest *request_;
}

@end

J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest, request_, ACRequest *)

@interface ImActorCoreModulesApiPersistentRequestsActor_$1 : NSObject < ACRpcCallback > {
 @public
  ImActorCoreModulesApiPersistentRequestsActor *this$0_;
  NSString *val$name_;
  jlong val$key_;
}

- (void)onResult:(ACResponse *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithImActorCoreModulesApiPersistentRequestsActor:(ImActorCoreModulesApiPersistentRequestsActor *)outer$
                                                        withNSString:(NSString *)capture$0
                                                            withLong:(jlong)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorCoreModulesApiPersistentRequestsActor_$1)

J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_$1, this$0_, ImActorCoreModulesApiPersistentRequestsActor *)
J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_$1, val$name_, NSString *)

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor_$1 *self, ImActorCoreModulesApiPersistentRequestsActor *outer$, NSString *capture$0, jlong capture$1);

__attribute__((unused)) static ImActorCoreModulesApiPersistentRequestsActor_$1 *new_ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor *outer$, NSString *capture$0, jlong capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorCoreModulesApiPersistentRequestsActor_$1)

@interface ImActorCoreModulesApiPersistentRequestsActor_$2 : NSObject < ACRpcCallback > {
 @public
  ImActorCoreModulesApiPersistentRequestsActor *this$0_;
  ImActorCoreModulesApiEntityStoredRequest *val$request_;
}

- (void)onResult:(ACResponse *)response;

- (void)onError:(ACRpcException *)e;

- (instancetype)initWithImActorCoreModulesApiPersistentRequestsActor:(ImActorCoreModulesApiPersistentRequestsActor *)outer$
                        withImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorCoreModulesApiPersistentRequestsActor_$2)

J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_$2, this$0_, ImActorCoreModulesApiPersistentRequestsActor *)
J2OBJC_FIELD_SETTER(ImActorCoreModulesApiPersistentRequestsActor_$2, val$request_, ImActorCoreModulesApiEntityStoredRequest *)

__attribute__((unused)) static void ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor_$2 *self, ImActorCoreModulesApiPersistentRequestsActor *outer$, ImActorCoreModulesApiEntityStoredRequest *capture$0);

__attribute__((unused)) static ImActorCoreModulesApiPersistentRequestsActor_$2 *new_ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor *outer$, ImActorCoreModulesApiEntityStoredRequest *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorCoreModulesApiPersistentRequestsActor_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/PersistentRequestsActor.java"


#line 15
@implementation ImActorCoreModulesApiPersistentRequestsActor


#line 22
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ImActorCoreModulesApiPersistentRequestsActor_initWithACModuleContext_(self, context);
  return self;
}

- (void)preStart {
  [super preStart];
  
#line 30
  storage_ = ARStorage_createKeyValueWithNSString_(ImActorCoreModulesApiPersistentRequestsActor_STORAGE_);
  
#line 32
  requestsStorage_ = new_ImActorCoreModulesApiEntityPersistentStorage_init();
  IOSByteArray *data = [((id<ARKeyValueStorage>) nil_chk(storage_)) loadItemWithKey:0];
  if (data != nil) {
    @try {
      requestsStorage_ = ImActorCoreModulesApiEntityPersistentStorage_fromBytesWithByteArray_(data);
    }
    @catch (
#line 37
    JavaLangThrowable *t) {
      [((JavaLangThrowable *) nil_chk(t)) printStackTrace];
    }
  }
  
#line 44
  for (ImActorCoreModulesApiEntityStoredRequest * __strong r in nil_chk([((ImActorCoreModulesApiEntityPersistentStorage *) nil_chk(requestsStorage_)) getRequests])) {
    ImActorCoreModulesApiPersistentRequestsActor_performRequestWithImActorCoreModulesApiEntityStoredRequest_(self, r);
  }
  
#line 48
  for (ImActorCoreModulesApiEntityCursorStoredRequest * __strong r in nil_chk([requestsStorage_ getCursorRequests])) {
    if ([((ImActorCoreModulesApiEntityCursorStoredRequest *) nil_chk(r)) getRequest] != nil) {
      ImActorCoreModulesApiPersistentRequestsActor_performCursorRequestWithACRequest_withNSString_withLong_(self, [((ImActorCoreModulesApiEntityStoredRequest *) nil_chk([r getRequest])) getRequest], [r getName], [r getCurrentKey]);
    }
  }
}


#line 55
- (void)onNewRequestWithACRequest:(ACRequest *)request {
  ImActorCoreModulesApiPersistentRequestsActor_onNewRequestWithACRequest_(self, request);
}


#line 64
- (void)onNewCursorRequestWithNSString:(NSString *)name
                              withLong:(jlong)key
                         withACRequest:(ACRequest *)request {
  ImActorCoreModulesApiPersistentRequestsActor_onNewCursorRequestWithNSString_withLong_withACRequest_(self, name, key, request);
}


#line 84
- (void)performCursorRequestWithACRequest:(ACRequest *)request
                             withNSString:(NSString *)name
                                 withLong:(jlong)key {
  ImActorCoreModulesApiPersistentRequestsActor_performCursorRequestWithACRequest_withNSString_withLong_(self, request, name, key);
}


#line 99
- (void)requestCompletedWithNSString:(NSString *)name
                            withLong:(jlong)key {
  ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithNSString_withLong_(self, name, key);
}


#line 108
- (void)performRequestWithImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)request {
  ImActorCoreModulesApiPersistentRequestsActor_performRequestWithImActorCoreModulesApiEntityStoredRequest_(self, request);
}


#line 124
- (void)requestCompletedWithImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)request {
  ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithImActorCoreModulesApiEntityStoredRequest_(self, request);
}


#line 129
- (void)saveStorage {
  ImActorCoreModulesApiPersistentRequestsActor_saveStorage(self);
}


#line 134
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorCoreModulesApiPersistentRequestsActor_PerformRequest class]]) {
    ImActorCoreModulesApiPersistentRequestsActor_onNewRequestWithACRequest_(self, [((ImActorCoreModulesApiPersistentRequestsActor_PerformRequest *) nil_chk(((ImActorCoreModulesApiPersistentRequestsActor_PerformRequest *) check_class_cast(message, [ImActorCoreModulesApiPersistentRequestsActor_PerformRequest class])))) getRequest]);
  }
  else
#line 137
  if ([message isKindOfClass:[ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest class]]) {
    ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest *cursorRequest = (ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest *) check_class_cast(message, [ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest class]);
    ImActorCoreModulesApiPersistentRequestsActor_onNewCursorRequestWithNSString_withLong_withACRequest_(self, [((ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest *) nil_chk(cursorRequest)) getName], [cursorRequest getKey],
#line 140
    [cursorRequest getRequest]);
  }
  else {
    
#line 142
    [self dropWithId:message];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "PersistentRequestsActor", NULL, 0x1, NULL, NULL },
    { "preStart", NULL, "V", 0x1, NULL, NULL },
    { "onNewRequestWithACRequest:", "onNewRequest", "V", 0x2, NULL, NULL },
    { "onNewCursorRequestWithNSString:withLong:withACRequest:", "onNewCursorRequest", "V", 0x2, NULL, NULL },
    { "performCursorRequestWithACRequest:withNSString:withLong:", "performCursorRequest", "V", 0x2, NULL, NULL },
    { "requestCompletedWithNSString:withLong:", "requestCompleted", "V", 0x2, NULL, NULL },
    { "performRequestWithImActorCoreModulesApiEntityStoredRequest:", "performRequest", "V", 0x2, NULL, NULL },
    { "requestCompletedWithImActorCoreModulesApiEntityStoredRequest:", "requestCompleted", "V", 0x2, NULL, NULL },
    { "saveStorage", NULL, "V", 0x2, NULL, NULL },
    { "onReceiveWithId:", "onReceive", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "STORAGE_", NULL, 0x1a, "Ljava.lang.String;", &ImActorCoreModulesApiPersistentRequestsActor_STORAGE_, NULL, .constantValue.asLong = 0 },
    { "storage_", NULL, 0x2, "Lim.actor.runtime.storage.KeyValueStorage;", NULL, NULL, .constantValue.asLong = 0 },
    { "requestsStorage_", NULL, 0x2, "Lim.actor.core.modules.api.entity.PersistentStorage;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.api.PersistentRequestsActor$PerformRequest;", "Lim.actor.core.modules.api.PersistentRequestsActor$PerformCursorRequest;"};
  static const J2ObjcClassInfo _ImActorCoreModulesApiPersistentRequestsActor = { 2, "PersistentRequestsActor", "im.actor.core.modules.api", NULL, 0x1, 10, methods, 3, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_ImActorCoreModulesApiPersistentRequestsActor;
}

@end


#line 22
void ImActorCoreModulesApiPersistentRequestsActor_initWithACModuleContext_(ImActorCoreModulesApiPersistentRequestsActor *self, id<ACModuleContext> context) {
  (void) ACModuleActor_initWithACModuleContext_(self, context);
}


#line 22
ImActorCoreModulesApiPersistentRequestsActor *new_ImActorCoreModulesApiPersistentRequestsActor_initWithACModuleContext_(id<ACModuleContext> context) {
  ImActorCoreModulesApiPersistentRequestsActor *self = [ImActorCoreModulesApiPersistentRequestsActor alloc];
  ImActorCoreModulesApiPersistentRequestsActor_initWithACModuleContext_(self, context);
  return self;
}


#line 55
void ImActorCoreModulesApiPersistentRequestsActor_onNewRequestWithACRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, ACRequest *request) {
  ImActorCoreModulesApiEntityStoredRequest *storedRequest = new_ImActorCoreModulesApiEntityStoredRequest_initWithACRequest_(request);
  [((JavaUtilArrayList *) nil_chk([((ImActorCoreModulesApiEntityPersistentStorage *) nil_chk(self->requestsStorage_)) getRequests])) addWithId:storedRequest];
  ImActorCoreModulesApiPersistentRequestsActor_performRequestWithImActorCoreModulesApiEntityStoredRequest_(self, storedRequest);
  
#line 61
  ImActorCoreModulesApiPersistentRequestsActor_saveStorage(self);
}

void ImActorCoreModulesApiPersistentRequestsActor_onNewCursorRequestWithNSString_withLong_withACRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, NSString *name, jlong key, ACRequest *request) {
  
#line 67
  ImActorCoreModulesApiEntityCursorStoredRequest *cursorStoredRequest = [((ImActorCoreModulesApiEntityPersistentStorage *) nil_chk(self->requestsStorage_)) findCursorRequestWithNSString:name];
  if (cursorStoredRequest != nil) {
    if ([cursorStoredRequest getCurrentKey] >= key) {
      return;
    }
    [((JavaUtilArrayList *) nil_chk([self->requestsStorage_ getCursorRequests])) removeWithId:cursorStoredRequest];
  }
  
#line 75
  cursorStoredRequest = new_ImActorCoreModulesApiEntityCursorStoredRequest_initWithNSString_withLong_withImActorCoreModulesApiEntityStoredRequest_(name, key, new_ImActorCoreModulesApiEntityStoredRequest_initWithACRequest_(request));
  [((JavaUtilArrayList *) nil_chk([self->requestsStorage_ getCursorRequests])) addWithId:cursorStoredRequest];
  
#line 78
  ImActorCoreModulesApiPersistentRequestsActor_performCursorRequestWithACRequest_withNSString_withLong_(self, request, name, key);
  
#line 81
  ImActorCoreModulesApiPersistentRequestsActor_saveStorage(self);
}


#line 84
void ImActorCoreModulesApiPersistentRequestsActor_performCursorRequestWithACRequest_withNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor *self, ACRequest *request, NSString *name, jlong key) {
  [self requestWithACRequest:request withACRpcCallback:new_ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(self, name, key)];
}


#line 99
void ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor *self, NSString *name, jlong key) {
  ImActorCoreModulesApiEntityCursorStoredRequest *s = [((ImActorCoreModulesApiEntityPersistentStorage *) nil_chk(self->requestsStorage_)) findCursorRequestWithNSString:name];
  if ([((ImActorCoreModulesApiEntityCursorStoredRequest *) nil_chk(s)) getCurrentKey] == key) {
    [((JavaUtilArrayList *) nil_chk([self->requestsStorage_ getCursorRequests])) removeWithId:s];
    [((JavaUtilArrayList *) nil_chk([self->requestsStorage_ getCursorRequests])) addWithId:new_ImActorCoreModulesApiEntityCursorStoredRequest_initWithNSString_withLong_withImActorCoreModulesApiEntityStoredRequest_(name, key, nil)];
    ImActorCoreModulesApiPersistentRequestsActor_saveStorage(self);
  }
}

void ImActorCoreModulesApiPersistentRequestsActor_performRequestWithImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, ImActorCoreModulesApiEntityStoredRequest *request) {
  
#line 110
  [self requestWithACRequest:[((ImActorCoreModulesApiEntityStoredRequest *) nil_chk(request)) getRequest] withACRpcCallback:new_ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(self, request)];
}


#line 124
void ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor *self, ImActorCoreModulesApiEntityStoredRequest *request) {
  [((JavaUtilArrayList *) nil_chk([((ImActorCoreModulesApiEntityPersistentStorage *) nil_chk(self->requestsStorage_)) getRequests])) removeWithId:request];
  ImActorCoreModulesApiPersistentRequestsActor_saveStorage(self);
}

void ImActorCoreModulesApiPersistentRequestsActor_saveStorage(ImActorCoreModulesApiPersistentRequestsActor *self) {
  [((id<ARKeyValueStorage>) nil_chk(self->storage_)) addOrUpdateItemWithKey:0 withData:[((ImActorCoreModulesApiEntityPersistentStorage *) nil_chk(self->requestsStorage_)) toByteArray]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesApiPersistentRequestsActor)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/PersistentRequestsActor.java"


#line 146
@implementation ImActorCoreModulesApiPersistentRequestsActor_PerformRequest


#line 150
- (instancetype)initWithACRequest:(ACRequest *)request {
  ImActorCoreModulesApiPersistentRequestsActor_PerformRequest_initWithACRequest_(self, request);
  return self;
}


#line 154
- (ACRequest *)getRequest {
  return request_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACRequest:", "PerformRequest", NULL, 0x1, NULL, NULL },
    { "getRequest", NULL, "Lim.actor.core.network.parser.Request;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "request_", NULL, 0x2, "Lim.actor.core.network.parser.Request;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorCoreModulesApiPersistentRequestsActor_PerformRequest = { 2, "PerformRequest", "im.actor.core.modules.api", "PersistentRequestsActor", 0x9, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorCoreModulesApiPersistentRequestsActor_PerformRequest;
}

@end


#line 150
void ImActorCoreModulesApiPersistentRequestsActor_PerformRequest_initWithACRequest_(ImActorCoreModulesApiPersistentRequestsActor_PerformRequest *self, ACRequest *request) {
  (void) NSObject_init(self);
  
#line 151
  self->request_ = request;
}


#line 150
ImActorCoreModulesApiPersistentRequestsActor_PerformRequest *new_ImActorCoreModulesApiPersistentRequestsActor_PerformRequest_initWithACRequest_(ACRequest *request) {
  ImActorCoreModulesApiPersistentRequestsActor_PerformRequest *self = [ImActorCoreModulesApiPersistentRequestsActor_PerformRequest alloc];
  ImActorCoreModulesApiPersistentRequestsActor_PerformRequest_initWithACRequest_(self, request);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesApiPersistentRequestsActor_PerformRequest)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/PersistentRequestsActor.java"


#line 159
@implementation ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest


#line 164
- (instancetype)initWithNSString:(NSString *)name
                        withLong:(jlong)key
                   withACRequest:(ACRequest *)request {
  ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest_initWithNSString_withLong_withACRequest_(self, name, key, request);
  return self;
}


#line 170
- (NSString *)getName {
  return name_;
}

- (jlong)getKey {
  return key_;
}

- (ACRequest *)getRequest {
  return request_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withLong:withACRequest:", "PerformCursorRequest", NULL, 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getKey", NULL, "J", 0x1, NULL, NULL },
    { "getRequest", NULL, "Lim.actor.core.network.parser.Request;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "key_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "request_", NULL, 0x2, "Lim.actor.core.network.parser.Request;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest = { 2, "PerformCursorRequest", "im.actor.core.modules.api", "PersistentRequestsActor", 0x9, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest;
}

@end


#line 164
void ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest_initWithNSString_withLong_withACRequest_(ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest *self, NSString *name, jlong key, ACRequest *request) {
  (void) NSObject_init(self);
  
#line 165
  self->name_ = name;
  self->key_ = key;
  self->request_ = request;
}


#line 164
ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest *new_ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest_initWithNSString_withLong_withACRequest_(NSString *name, jlong key, ACRequest *request) {
  ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest *self = [ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest alloc];
  ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest_initWithNSString_withLong_withACRequest_(self, name, key, request);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesApiPersistentRequestsActor_PerformCursorRequest)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/PersistentRequestsActor.java"

@implementation ImActorCoreModulesApiPersistentRequestsActor_$1


#line 87
- (void)onResult:(ACResponse *)response {
  ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithNSString_withLong_(this$0_, val$name_, val$key_);
}


#line 92
- (void)onError:(ACRpcException *)e {
  
#line 94
  ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithNSString_withLong_(this$0_, val$name_, val$key_);
}

- (instancetype)initWithImActorCoreModulesApiPersistentRequestsActor:(ImActorCoreModulesApiPersistentRequestsActor *)outer$
                                                        withNSString:(NSString *)capture$0
                                                            withLong:(jlong)capture$1 {
  ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithImActorCoreModulesApiPersistentRequestsActor:withNSString:withLong:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.api.PersistentRequestsActor;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$name_", NULL, 0x1012, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$key_", NULL, 0x1012, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ImActorCoreModulesApiPersistentRequestsActor", "performCursorRequestWithACRequest:withNSString:withLong:" };
  static const J2ObjcClassInfo _ImActorCoreModulesApiPersistentRequestsActor_$1 = { 2, "", "im.actor.core.modules.api", "PersistentRequestsActor", 0x8008, 3, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ImActorCoreModulesApiPersistentRequestsActor_$1;
}

@end

void ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor_$1 *self, ImActorCoreModulesApiPersistentRequestsActor *outer$, NSString *capture$0, jlong capture$1) {
  self->this$0_ = outer$;
  self->val$name_ = capture$0;
  self->val$key_ = capture$1;
  (void) NSObject_init(self);
}

ImActorCoreModulesApiPersistentRequestsActor_$1 *new_ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(ImActorCoreModulesApiPersistentRequestsActor *outer$, NSString *capture$0, jlong capture$1) {
  ImActorCoreModulesApiPersistentRequestsActor_$1 *self = [ImActorCoreModulesApiPersistentRequestsActor_$1 alloc];
  ImActorCoreModulesApiPersistentRequestsActor_$1_initWithImActorCoreModulesApiPersistentRequestsActor_withNSString_withLong_(self, outer$, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesApiPersistentRequestsActor_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/PersistentRequestsActor.java"

@implementation ImActorCoreModulesApiPersistentRequestsActor_$2


#line 112
- (void)onResult:(ACResponse *)response {
  ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithImActorCoreModulesApiEntityStoredRequest_(this$0_, val$request_);
}


#line 117
- (void)onError:(ACRpcException *)e {
  
#line 119
  ImActorCoreModulesApiPersistentRequestsActor_requestCompletedWithImActorCoreModulesApiEntityStoredRequest_(this$0_, val$request_);
}

- (instancetype)initWithImActorCoreModulesApiPersistentRequestsActor:(ImActorCoreModulesApiPersistentRequestsActor *)outer$
                        withImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)capture$0 {
  ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onResult:", "onResult", "V", 0x1, NULL, NULL },
    { "onError:", "onError", "V", 0x1, NULL, NULL },
    { "initWithImActorCoreModulesApiPersistentRequestsActor:withImActorCoreModulesApiEntityStoredRequest:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.core.modules.api.PersistentRequestsActor;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$request_", NULL, 0x1012, "Lim.actor.core.modules.api.entity.StoredRequest;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ImActorCoreModulesApiPersistentRequestsActor", "performRequestWithImActorCoreModulesApiEntityStoredRequest:" };
  static const J2ObjcClassInfo _ImActorCoreModulesApiPersistentRequestsActor_$2 = { 2, "", "im.actor.core.modules.api", "PersistentRequestsActor", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ImActorCoreModulesApiPersistentRequestsActor_$2;
}

@end

void ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor_$2 *self, ImActorCoreModulesApiPersistentRequestsActor *outer$, ImActorCoreModulesApiEntityStoredRequest *capture$0) {
  self->this$0_ = outer$;
  self->val$request_ = capture$0;
  (void) NSObject_init(self);
}

ImActorCoreModulesApiPersistentRequestsActor_$2 *new_ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiPersistentRequestsActor *outer$, ImActorCoreModulesApiEntityStoredRequest *capture$0) {
  ImActorCoreModulesApiPersistentRequestsActor_$2 *self = [ImActorCoreModulesApiPersistentRequestsActor_$2 alloc];
  ImActorCoreModulesApiPersistentRequestsActor_$2_initWithImActorCoreModulesApiPersistentRequestsActor_withImActorCoreModulesApiEntityStoredRequest_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesApiPersistentRequestsActor_$2)

#pragma clang diagnostic pop

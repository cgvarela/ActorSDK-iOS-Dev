//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/ActorApi.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiVersion.h"
#include "im/actor/core/network/ActorApi.h"
#include "im/actor/core/network/ActorApiCallback.h"
#include "im/actor/core/network/AuthKeyStorage.h"
#include "im/actor/core/network/Endpoints.h"
#include "im/actor/core/network/NetworkState.h"
#include "im/actor/core/network/RpcCallback.h"
#include "im/actor/core/network/api/ApiBroker.h"
#include "im/actor/core/network/parser/ApiParserConfig.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/Runtime.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/threading/AtomicIntegerCompat.h"
#include <j2objc/java/lang/RuntimeException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACActorApi () {
 @public
  ACEndpoints *endpoints_;
  id<ACAuthKeyStorage> keyStorage_;
  id<ACActorApiCallback> callback_;
  jboolean isEnableLog_;
  jint minDelay_;
  jint maxDelay_;
  jint maxFailureCount_;
  ARActorRef *apiBroker_;
}

@end

J2OBJC_FIELD_SETTER(ACActorApi, endpoints_, ACEndpoints *)
J2OBJC_FIELD_SETTER(ACActorApi, keyStorage_, id<ACAuthKeyStorage>)
J2OBJC_FIELD_SETTER(ACActorApi, callback_, id<ACActorApiCallback>)
J2OBJC_FIELD_SETTER(ACActorApi, apiBroker_, ARActorRef *)

static ARAtomicIntegerCompat *ACActorApi_NEXT_ID_;
J2OBJC_STATIC_FIELD_GETTER(ACActorApi, NEXT_ID_, ARAtomicIntegerCompat *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/ActorApi.java"

J2OBJC_INITIALIZED_DEFN(ACActorApi)


#line 18
@implementation ACActorApi

+ (jint)MTPROTO_VERSION {
  return ACActorApi_MTPROTO_VERSION;
}

+ (jint)API_MAJOR_VERSION {
  return ACActorApi_API_MAJOR_VERSION;
}

+ (jint)API_MINOR_VERSION {
  return ACActorApi_API_MINOR_VERSION;
}


#line 43
- (instancetype)initWithACEndpoints:(ACEndpoints *)endpoints
               withACAuthKeyStorage:(id<ACAuthKeyStorage>)keyStorage
             withACActorApiCallback:(id<ACActorApiCallback>)callback
                        withBoolean:(jboolean)isEnableLog
                            withInt:(jint)minDelay
                            withInt:(jint)maxDelay
                            withInt:(jint)maxFailureCount
              withACApiParserConfig:(ACApiParserConfig *)parserConfig {
  ACActorApi_initWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withACApiParserConfig_(self, endpoints, keyStorage, callback, isEnableLog, minDelay, maxDelay, maxFailureCount, parserConfig);
  return self;
}


#line 66
- (void)requestWithACRequest:(ACRequest *)request
           withACRpcCallback:(id<ACRpcCallback>)callback {
  @synchronized(self) {
    
#line 67
    if (request == nil) {
      @throw new_JavaLangRuntimeException_initWithNSString_(@"Request can't be null");
    }
    
#line 71
    [((ARActorRef *) nil_chk(self->apiBroker_)) sendWithId:new_ACApiBroker_PerformRequest_initWithACRequest_withACRpcCallback_(request, callback)];
  }
}


#line 79
- (void)onNetworkChangedWithACNetworkStateEnum:(ACNetworkStateEnum *)state {
  @synchronized(self) {
    
#line 80
    [((ARActorRef *) nil_chk(self->apiBroker_)) sendWithId:new_ACApiBroker_NetworkChanged_initWithACNetworkStateEnum_(state)];
  }
}


#line 86
- (void)forceNetworkCheck {
  @synchronized(self) {
    
#line 87
    [((ARActorRef *) nil_chk(self->apiBroker_)) sendWithId:new_ACApiBroker_ForceNetworkCheck_init()];
  }
}

+ (void)initialize {
  if (self == [ACActorApi class]) {
    ACActorApi_NEXT_ID_ = ARRuntime_createAtomicIntWithInt_(
#line 24
    1);
    J2OBJC_SET_INITIALIZED(ACActorApi)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACEndpoints:withACAuthKeyStorage:withACActorApiCallback:withBoolean:withInt:withInt:withInt:withACApiParserConfig:", "ActorApi", NULL, 0x1, NULL, NULL },
    { "requestWithACRequest:withACRpcCallback:", "request", "V", 0x21, NULL, "<T:Lim/actor/core/network/parser/Response;>(Lim/actor/core/network/parser/Request<TT;>;Lim/actor/core/network/RpcCallback<TT;>;)V" },
    { "onNetworkChangedWithACNetworkStateEnum:", "onNetworkChanged", "V", 0x21, NULL, NULL },
    { "forceNetworkCheck", NULL, "V", 0x21, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MTPROTO_VERSION", "MTPROTO_VERSION", 0x19, "I", NULL, NULL, .constantValue.asInt = ACActorApi_MTPROTO_VERSION },
    { "API_MAJOR_VERSION", "API_MAJOR_VERSION", 0x19, "I", NULL, NULL, .constantValue.asInt = ACActorApi_API_MAJOR_VERSION },
    { "API_MINOR_VERSION", "API_MINOR_VERSION", 0x19, "I", NULL, NULL, .constantValue.asInt = ACActorApi_API_MINOR_VERSION },
    { "NEXT_ID_", NULL, 0x1a, "Lim.actor.runtime.threading.AtomicIntegerCompat;", &ACActorApi_NEXT_ID_, NULL, .constantValue.asLong = 0 },
    { "endpoints_", NULL, 0x12, "Lim.actor.core.network.Endpoints;", NULL, NULL, .constantValue.asLong = 0 },
    { "keyStorage_", NULL, 0x12, "Lim.actor.core.network.AuthKeyStorage;", NULL, NULL, .constantValue.asLong = 0 },
    { "callback_", NULL, 0x12, "Lim.actor.core.network.ActorApiCallback;", NULL, NULL, .constantValue.asLong = 0 },
    { "isEnableLog_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "minDelay_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDelay_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxFailureCount_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "apiBroker_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACActorApi = { 2, "ActorApi", "im.actor.core.network", NULL, 0x1, 4, methods, 12, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACActorApi;
}

@end


#line 43
void ACActorApi_initWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withACApiParserConfig_(ACActorApi *self, ACEndpoints *endpoints, id<ACAuthKeyStorage> keyStorage, id<ACActorApiCallback> callback, jboolean isEnableLog, jint minDelay, jint maxDelay, jint maxFailureCount, ACApiParserConfig *parserConfig) {
  (void) NSObject_init(self);
  
#line 48
  self->endpoints_ = endpoints;
  self->keyStorage_ = keyStorage;
  self->callback_ = callback;
  self->isEnableLog_ = isEnableLog;
  self->minDelay_ = minDelay;
  self->maxDelay_ = maxDelay;
  self->maxFailureCount_ = maxFailureCount;
  self->apiBroker_ = ACApiBroker_getWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withInt_withACApiParserConfig_(endpoints, keyStorage, callback, isEnableLog,
#line 56
  [((ARAtomicIntegerCompat *) nil_chk(ACActorApi_NEXT_ID_)) get], minDelay, maxDelay, maxFailureCount, parserConfig);
}


#line 43
ACActorApi *new_ACActorApi_initWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withACApiParserConfig_(ACEndpoints *endpoints, id<ACAuthKeyStorage> keyStorage, id<ACActorApiCallback> callback, jboolean isEnableLog, jint minDelay, jint maxDelay, jint maxFailureCount, ACApiParserConfig *parserConfig) {
  ACActorApi *self = [ACActorApi alloc];
  ACActorApi_initWithACEndpoints_withACAuthKeyStorage_withACActorApiCallback_withBoolean_withInt_withInt_withInt_withACApiParserConfig_(self, endpoints, keyStorage, callback, isEnableLog, minDelay, maxDelay, maxFailureCount, parserConfig);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACActorApi)

#pragma clang diagnostic pop

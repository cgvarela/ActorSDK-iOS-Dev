//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/AuthIdRetriever.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/ActorApi.h"
#include "im/actor/core/network/Endpoints.h"
#include "im/actor/core/network/mtp/AuthIdRetriever.h"
#include "im/actor/core/util/ExponentialBackoff.h"
#include "im/actor/runtime/Log.h"
#include "im/actor/runtime/Network.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "im/actor/runtime/mtproto/Connection.h"
#include "im/actor/runtime/mtproto/ConnectionCallback.h"
#include "im/actor/runtime/mtproto/ConnectionEndpoint.h"
#include "im/actor/runtime/mtproto/CreateConnectionCallback.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static NSString *ACAuthIdRetriever_TAG_ = @"AuthId";
J2OBJC_STATIC_FIELD_GETTER(ACAuthIdRetriever, TAG_, NSString *)

@interface ACAuthIdRetriever_AuthIdCallback : NSObject

@end

@interface ACAuthIdRetriever_$1 : NSObject < ARConnectionCallback > {
 @public
  IOSBooleanArray *val$isFinished_;
  id<ACAuthIdRetriever_AuthIdCallback> val$callback_;
}

- (void)onConnectionRedirectWithHost:(NSString *)host
                            withPort:(jint)port
                         withTimeout:(jint)timeout;

- (void)onMessageWithData:(IOSByteArray *)data
               withOffset:(jint)offset
               withLength:(jint)len;

- (void)onConnectionDie;

- (instancetype)initWithBooleanArray:(IOSBooleanArray *)capture$0
withACAuthIdRetriever_AuthIdCallback:(id<ACAuthIdRetriever_AuthIdCallback>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAuthIdRetriever_$1)

J2OBJC_FIELD_SETTER(ACAuthIdRetriever_$1, val$isFinished_, IOSBooleanArray *)
J2OBJC_FIELD_SETTER(ACAuthIdRetriever_$1, val$callback_, id<ACAuthIdRetriever_AuthIdCallback>)

__attribute__((unused)) static void ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(ACAuthIdRetriever_$1 *self, IOSBooleanArray *capture$0, id<ACAuthIdRetriever_AuthIdCallback> capture$1);

__attribute__((unused)) static ACAuthIdRetriever_$1 *new_ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(IOSBooleanArray *capture$0, id<ACAuthIdRetriever_AuthIdCallback> capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAuthIdRetriever_$1)

@interface ACAuthIdRetriever_$2 : NSObject < ARCreateConnectionCallback > {
 @public
  IOSBooleanArray *val$isFinished_;
  ACExponentialBackoff *val$backoff_;
  id<ACAuthIdRetriever_AuthIdCallback> val$callback_;
}

- (void)onConnectionCreatedWithConnection:(id<ARConnection>)connection;

- (void)onConnectionCreateError;

- (instancetype)initWithBooleanArray:(IOSBooleanArray *)capture$0
            withACExponentialBackoff:(ACExponentialBackoff *)capture$1
withACAuthIdRetriever_AuthIdCallback:(id<ACAuthIdRetriever_AuthIdCallback>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAuthIdRetriever_$2)

J2OBJC_FIELD_SETTER(ACAuthIdRetriever_$2, val$isFinished_, IOSBooleanArray *)
J2OBJC_FIELD_SETTER(ACAuthIdRetriever_$2, val$backoff_, ACExponentialBackoff *)
J2OBJC_FIELD_SETTER(ACAuthIdRetriever_$2, val$callback_, id<ACAuthIdRetriever_AuthIdCallback>)

__attribute__((unused)) static void ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(ACAuthIdRetriever_$2 *self, IOSBooleanArray *capture$0, ACExponentialBackoff *capture$1, id<ACAuthIdRetriever_AuthIdCallback> capture$2);

__attribute__((unused)) static ACAuthIdRetriever_$2 *new_ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(IOSBooleanArray *capture$0, ACExponentialBackoff *capture$1, id<ACAuthIdRetriever_AuthIdCallback> capture$2) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAuthIdRetriever_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/AuthIdRetriever.java"


#line 18
@implementation ACAuthIdRetriever


#line 22
+ (void)requestAuthIdWithACEndpoints:(ACEndpoints *)endpoints
                             withInt:(jint)minDelay
                             withInt:(jint)maxDelay
                             withInt:(jint)maxFailureCount
withACAuthIdRetriever_AuthIdCallback:(id<ACAuthIdRetriever_AuthIdCallback>)callback {
  ACAuthIdRetriever_requestAuthIdWithACEndpoints_withInt_withInt_withInt_withACAuthIdRetriever_AuthIdCallback_(endpoints, minDelay, maxDelay, maxFailureCount, callback);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACAuthIdRetriever_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestAuthIdWithACEndpoints:withInt:withInt:withInt:withACAuthIdRetriever_AuthIdCallback:", "requestAuthId", "V", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &ACAuthIdRetriever_TAG_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.network.mtp.AuthIdRetriever$AuthIdCallback;"};
  static const J2ObjcClassInfo _ACAuthIdRetriever = { 2, "AuthIdRetriever", "im.actor.core.network.mtp", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ACAuthIdRetriever;
}

@end


#line 22
void ACAuthIdRetriever_requestAuthIdWithACEndpoints_withInt_withInt_withInt_withACAuthIdRetriever_AuthIdCallback_(ACEndpoints *endpoints, jint minDelay, jint maxDelay, jint maxFailureCount, id<ACAuthIdRetriever_AuthIdCallback> callback) {
  ACAuthIdRetriever_initialize();
  ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Requesting AuthId");
  
#line 26
  IOSBooleanArray *isFinished = [IOSBooleanArray newArrayWithLength:1];
  ACExponentialBackoff *backoff = new_ACExponentialBackoff_initWithInt_withInt_withInt_(maxDelay, minDelay, maxFailureCount);
  *IOSBooleanArray_GetRef(isFinished, 0) = false;
  
#line 30
  ARNetwork_createConnectionWithInt_withInt_withInt_withInt_withARConnectionEndpoint_withARConnectionCallback_withARCreateConnectionCallback_(0,
#line 31
  ACActorApi_MTPROTO_VERSION,
#line 32
  ACActorApi_API_MAJOR_VERSION,
#line 33
  ACActorApi_API_MINOR_VERSION,
#line 34
  [((ACEndpoints *) nil_chk(endpoints)) fetchEndpoint], new_ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(isFinished, callback), new_ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(isFinished, backoff, callback));
}

void ACAuthIdRetriever_init(ACAuthIdRetriever *self) {
  (void) NSObject_init(self);
}

ACAuthIdRetriever *new_ACAuthIdRetriever_init() {
  ACAuthIdRetriever *self = [ACAuthIdRetriever alloc];
  ACAuthIdRetriever_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAuthIdRetriever)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/AuthIdRetriever.java"


#line 128
@implementation ACAuthIdRetriever_AuthIdCallback

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onSuccessWithLong:", "onSuccess", "V", 0x401, NULL, NULL },
    { "onFailure", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACAuthIdRetriever_AuthIdCallback = { 2, "AuthIdCallback", "im.actor.core.network.mtp", "AuthIdRetriever", 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACAuthIdRetriever_AuthIdCallback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ACAuthIdRetriever_AuthIdCallback)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/AuthIdRetriever.java"

@implementation ACAuthIdRetriever_$1


#line 37
- (void)onConnectionRedirectWithHost:(NSString *)host
                            withPort:(jint)port
                         withTimeout:(jint)timeout {
  if (!IOSBooleanArray_Get(nil_chk(val$isFinished_), 0)) {
    *IOSBooleanArray_GetRef(val$isFinished_, 0) = true;
    [((id<ACAuthIdRetriever_AuthIdCallback>) nil_chk(val$callback_)) onFailure];
    ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Unable to create connection");
  }
}


#line 46
- (void)onMessageWithData:(IOSByteArray *)data
               withOffset:(jint)offset
               withLength:(jint)len {
  if (IOSBooleanArray_Get(nil_chk(val$isFinished_), 0)) {
    return;
  }
  
#line 51
  @try {
    ARDataInput *dataInput = new_ARDataInput_initWithByteArray_withInt_withInt_(data, offset, len);
    jlong pAuthId = [dataInput readLong];
    jlong pSessionId = [dataInput readLong];
    jlong messageId = [dataInput readLong];
    IOSByteArray *payload = [dataInput readProtoBytes];
    
#line 58
    ARDataInput *msg = new_ARDataInput_initWithByteArray_withInt_withInt_(payload, 0, ((IOSByteArray *) nil_chk(payload))->size_);
    jint header = [msg readByte];
    jlong authId = [msg readLong];
    
#line 62
    if (!IOSBooleanArray_Get(val$isFinished_, 0)) {
      *IOSBooleanArray_GetRef(val$isFinished_, 0) = true;
      [((id<ACAuthIdRetriever_AuthIdCallback>) nil_chk(val$callback_)) onSuccessWithLong:authId];
      
#line 66
      ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, JreStrcat("$J", @"Auth Id loaded: ", authId));
      
#line 68
      return;
    }
  }
  @catch (
#line 70
  JavaLangException *e) {
    ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Error during parsing auth id response");
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
  
#line 76
  @throw new_JavaLangRuntimeException_init();
}


#line 80
- (void)onConnectionDie {
  if (!IOSBooleanArray_Get(nil_chk(val$isFinished_), 0)) {
    *IOSBooleanArray_GetRef(val$isFinished_, 0) = true;
    [((id<ACAuthIdRetriever_AuthIdCallback>) nil_chk(val$callback_)) onFailure];
    
#line 85
    ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Connection dies");
  }
}

- (instancetype)initWithBooleanArray:(IOSBooleanArray *)capture$0
withACAuthIdRetriever_AuthIdCallback:(id<ACAuthIdRetriever_AuthIdCallback>)capture$1 {
  ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onConnectionRedirectWithHost:withPort:withTimeout:", "onConnectionRedirect", "V", 0x1, NULL, NULL },
    { "onMessageWithData:withOffset:withLength:", "onMessage", "V", 0x1, NULL, NULL },
    { "onConnectionDie", NULL, "V", 0x1, NULL, NULL },
    { "initWithBooleanArray:withACAuthIdRetriever_AuthIdCallback:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$isFinished_", NULL, 0x1012, "[Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$callback_", NULL, 0x1012, "Lim.actor.core.network.mtp.AuthIdRetriever$AuthIdCallback;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACAuthIdRetriever", "requestAuthIdWithACEndpoints:withInt:withInt:withInt:withACAuthIdRetriever_AuthIdCallback:" };
  static const J2ObjcClassInfo _ACAuthIdRetriever_$1 = { 2, "", "im.actor.core.network.mtp", "AuthIdRetriever", 0x8008, 4, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACAuthIdRetriever_$1;
}

@end

void ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(ACAuthIdRetriever_$1 *self, IOSBooleanArray *capture$0, id<ACAuthIdRetriever_AuthIdCallback> capture$1) {
  self->val$isFinished_ = capture$0;
  self->val$callback_ = capture$1;
  (void) NSObject_init(self);
}

ACAuthIdRetriever_$1 *new_ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(IOSBooleanArray *capture$0, id<ACAuthIdRetriever_AuthIdCallback> capture$1) {
  ACAuthIdRetriever_$1 *self = [ACAuthIdRetriever_$1 alloc];
  ACAuthIdRetriever_$1_initWithBooleanArray_withACAuthIdRetriever_AuthIdCallback_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAuthIdRetriever_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/AuthIdRetriever.java"

@implementation ACAuthIdRetriever_$2


#line 90
- (void)onConnectionCreatedWithConnection:(id<ARConnection>)connection {
  if (IOSBooleanArray_Get(nil_chk(val$isFinished_), 0)) {
    return;
  }
  
#line 95
  ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Connection created");
  [((ACExponentialBackoff *) nil_chk(val$backoff_)) onSuccess];
  
#line 98
  @try {
    ARDataOutput *output = new_ARDataOutput_init();
    [output writeLongWithLong:0];
    [output writeLongWithLong:0];
    [output writeLongWithLong:0];
    [output writeVarIntWithLong:1];
    [output writeByteWithInt:(jint) 0xF0];
    IOSByteArray *data = [output toByteArray];
    [((id<ARConnection>) nil_chk(connection)) postWithData:data withOffset:0 withLength:((IOSByteArray *) nil_chk(data))->size_];
  }
  @catch (
#line 107
  JavaLangException *e) {
    ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Error during requesting auth id");
    [((JavaLangException *) nil_chk(e)) printStackTrace];
    if (!IOSBooleanArray_Get(val$isFinished_, 0)) {
      *IOSBooleanArray_GetRef(val$isFinished_, 0) = true;
      [((id<ACAuthIdRetriever_AuthIdCallback>) nil_chk(val$callback_)) onFailure];
    }
  }
}


#line 118
- (void)onConnectionCreateError {
  if (!IOSBooleanArray_Get(nil_chk(val$isFinished_), 0)) {
    *IOSBooleanArray_GetRef(val$isFinished_, 0) = true;
    [((id<ACAuthIdRetriever_AuthIdCallback>) nil_chk(val$callback_)) onFailure];
    ARLog_dWithNSString_withNSString_(ACAuthIdRetriever_TAG_, @"Unable to create connection");
  }
}

- (instancetype)initWithBooleanArray:(IOSBooleanArray *)capture$0
            withACExponentialBackoff:(ACExponentialBackoff *)capture$1
withACAuthIdRetriever_AuthIdCallback:(id<ACAuthIdRetriever_AuthIdCallback>)capture$2 {
  ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(self, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onConnectionCreatedWithConnection:", "onConnectionCreated", "V", 0x1, NULL, NULL },
    { "onConnectionCreateError", NULL, "V", 0x1, NULL, NULL },
    { "initWithBooleanArray:withACExponentialBackoff:withACAuthIdRetriever_AuthIdCallback:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$isFinished_", NULL, 0x1012, "[Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$backoff_", NULL, 0x1012, "Lim.actor.core.util.ExponentialBackoff;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$callback_", NULL, 0x1012, "Lim.actor.core.network.mtp.AuthIdRetriever$AuthIdCallback;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ACAuthIdRetriever", "requestAuthIdWithACEndpoints:withInt:withInt:withInt:withACAuthIdRetriever_AuthIdCallback:" };
  static const J2ObjcClassInfo _ACAuthIdRetriever_$2 = { 2, "", "im.actor.core.network.mtp", "AuthIdRetriever", 0x8008, 3, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ACAuthIdRetriever_$2;
}

@end

void ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(ACAuthIdRetriever_$2 *self, IOSBooleanArray *capture$0, ACExponentialBackoff *capture$1, id<ACAuthIdRetriever_AuthIdCallback> capture$2) {
  self->val$isFinished_ = capture$0;
  self->val$backoff_ = capture$1;
  self->val$callback_ = capture$2;
  (void) NSObject_init(self);
}

ACAuthIdRetriever_$2 *new_ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(IOSBooleanArray *capture$0, ACExponentialBackoff *capture$1, id<ACAuthIdRetriever_AuthIdCallback> capture$2) {
  ACAuthIdRetriever_$2 *self = [ACAuthIdRetriever_$2 alloc];
  ACAuthIdRetriever_$2_initWithBooleanArray_withACExponentialBackoff_withACAuthIdRetriever_AuthIdCallback_(self, capture$0, capture$1, capture$2);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAuthIdRetriever_$2)

#pragma clang diagnostic pop

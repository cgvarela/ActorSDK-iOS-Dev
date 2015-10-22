//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Network.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/Network.h"
#include "im/actor/runtime/NetworkRuntime.h"
#include "im/actor/runtime/NetworkRuntimeProvider.h"
#include "im/actor/runtime/mtproto/ConnectionCallback.h"
#include "im/actor/runtime/mtproto/ConnectionEndpoint.h"
#include "im/actor/runtime/mtproto/CreateConnectionCallback.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static id<ARNetworkRuntime> ARNetwork_runtime_;
J2OBJC_STATIC_FIELD_GETTER(ARNetwork, runtime_, id<ARNetworkRuntime>)
J2OBJC_STATIC_FIELD_SETTER(ARNetwork, runtime_, id<ARNetworkRuntime>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Network.java"

J2OBJC_INITIALIZED_DEFN(ARNetwork)


#line 10
@implementation ARNetwork


#line 13
+ (void)createConnectionWithInt:(jint)connectionId
                        withInt:(jint)mtprotoVersion
                        withInt:(jint)apiMajorVersion
                        withInt:(jint)apiMinorVersion
       withARConnectionEndpoint:(ARConnectionEndpoint *)endpoint
       withARConnectionCallback:(id<ARConnectionCallback>)callback
 withARCreateConnectionCallback:(id<ARCreateConnectionCallback>)createCallback {
  ARNetwork_createConnectionWithInt_withInt_withInt_withInt_withARConnectionEndpoint_withARConnectionCallback_withARCreateConnectionCallback_(connectionId, mtprotoVersion, apiMajorVersion, apiMinorVersion, endpoint, callback, createCallback);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARNetwork_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [ARNetwork class]) {
    ARNetwork_runtime_ = new_ARNetworkRuntimeProvider_init();
    J2OBJC_SET_INITIALIZED(ARNetwork)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createConnectionWithInt:withInt:withInt:withInt:withARConnectionEndpoint:withARConnectionCallback:withARCreateConnectionCallback:", "createConnection", "V", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "runtime_", NULL, 0xa, "Lim.actor.runtime.NetworkRuntime;", &ARNetwork_runtime_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARNetwork = { 2, "Network", "im.actor.runtime", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARNetwork;
}

@end


#line 13
void ARNetwork_createConnectionWithInt_withInt_withInt_withInt_withARConnectionEndpoint_withARConnectionCallback_withARCreateConnectionCallback_(jint connectionId, jint mtprotoVersion, jint apiMajorVersion, jint apiMinorVersion, ARConnectionEndpoint *endpoint, id<ARConnectionCallback> callback, id<ARCreateConnectionCallback> createCallback) {
  ARNetwork_initialize();
  
#line 16
  [((id<ARNetworkRuntime>) nil_chk(ARNetwork_runtime_)) createConnectionWithId:connectionId withMTVersion:mtprotoVersion withApiMajor:apiMajorVersion withApiMinor:apiMinorVersion withEndpoint:
#line 17
  endpoint withCallback:callback withCreateCallback:createCallback];
}

void ARNetwork_init(ARNetwork *self) {
  (void) NSObject_init(self);
}

ARNetwork *new_ARNetwork_init() {
  ARNetwork *self = [ARNetwork alloc];
  ARNetwork_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARNetwork)

#pragma clang diagnostic pop

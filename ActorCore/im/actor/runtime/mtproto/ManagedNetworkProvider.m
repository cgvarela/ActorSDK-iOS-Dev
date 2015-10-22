//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ManagedNetworkProvider.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/mtproto/AsyncConnectionFactory.h"
#include "im/actor/runtime/mtproto/ConnectionCallback.h"
#include "im/actor/runtime/mtproto/ConnectionEndpoint.h"
#include "im/actor/runtime/mtproto/CreateConnectionCallback.h"
#include "im/actor/runtime/mtproto/ManagedConnection.h"
#include "im/actor/runtime/mtproto/ManagedConnectionCreateCallback.h"
#include "im/actor/runtime/mtproto/ManagedNetworkProvider.h"
#include <j2objc/java/util/ArrayList.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARManagedNetworkProvider () {
 @public
  id<ARAsyncConnectionFactory> factory_;
  JavaUtilArrayList *pendingConnections_;
}

@end

J2OBJC_FIELD_SETTER(ARManagedNetworkProvider, factory_, id<ARAsyncConnectionFactory>)
J2OBJC_FIELD_SETTER(ARManagedNetworkProvider, pendingConnections_, JavaUtilArrayList *)

@interface ARManagedNetworkProvider_$1 : NSObject < ARManagedConnectionCreateCallback > {
 @public
  ARManagedNetworkProvider *this$0_;
  id<ARCreateConnectionCallback> val$createCallback_;
}

- (void)onConnectionCreated:(ARManagedConnection *)connection;

- (void)onConnectionCreateError:(ARManagedConnection *)connection;

- (instancetype)initWithARManagedNetworkProvider:(ARManagedNetworkProvider *)outer$
                  withARCreateConnectionCallback:(id<ARCreateConnectionCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ARManagedNetworkProvider_$1)

J2OBJC_FIELD_SETTER(ARManagedNetworkProvider_$1, this$0_, ARManagedNetworkProvider *)
J2OBJC_FIELD_SETTER(ARManagedNetworkProvider_$1, val$createCallback_, id<ARCreateConnectionCallback>)

__attribute__((unused)) static void ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(ARManagedNetworkProvider_$1 *self, ARManagedNetworkProvider *outer$, id<ARCreateConnectionCallback> capture$0);

__attribute__((unused)) static ARManagedNetworkProvider_$1 *new_ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(ARManagedNetworkProvider *outer$, id<ARCreateConnectionCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARManagedNetworkProvider_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ManagedNetworkProvider.java"


#line 13
@implementation ARManagedNetworkProvider


#line 21
- (instancetype)initWithFactory:(id<ARAsyncConnectionFactory>)factory {
  ARManagedNetworkProvider_initWithFactory_(self, factory);
  return self;
}

- (void)createConnectionWithId:(jint)connectionId
                 withMTVersion:(jint)mtprotoVersion
                  withApiMajor:(jint)apiMajorVersion
                  withApiMinor:(jint)apiMinorVersion
                  withEndpoint:(ARConnectionEndpoint *)endpoint
                  withCallback:(id<ARConnectionCallback>)callback
            withCreateCallback:(id<ARCreateConnectionCallback>)createCallback {
  ARManagedConnection *managedConnection = new_ARManagedConnection_initWithInt_withInt_withInt_withInt_withARConnectionEndpoint_withARConnectionCallback_withARManagedConnectionCreateCallback_withARAsyncConnectionFactory_(connectionId, mtprotoVersion,
#line 28
  apiMajorVersion, apiMinorVersion, endpoint, callback, new_ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(self, createCallback),
#line 44
  factory_);
  @synchronized(pendingConnections_) {
    [((JavaUtilArrayList *) nil_chk(pendingConnections_)) addWithId:managedConnection];
  }
}

+ (IOSObjectArray *)__annotations_initWithARAsyncConnectionFactory_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"initWithFactory:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFactory:", "ManagedNetworkProvider", NULL, 0x1, NULL, NULL },
    { "createConnectionWithId:withMTVersion:withApiMajor:withApiMinor:withEndpoint:withCallback:withCreateCallback:", "createConnection", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "factory_", NULL, 0x12, "Lim.actor.runtime.mtproto.AsyncConnectionFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "pendingConnections_", NULL, 0x12, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/runtime/mtproto/ManagedConnection;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARManagedNetworkProvider = { 2, "ManagedNetworkProvider", "im.actor.runtime.mtproto", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARManagedNetworkProvider;
}

@end


#line 21
void ARManagedNetworkProvider_initWithFactory_(ARManagedNetworkProvider *self, id<ARAsyncConnectionFactory> factory) {
  (void) NSObject_init(self);
  self->pendingConnections_ = new_JavaUtilArrayList_init();
  
#line 22
  self->factory_ = factory;
}


#line 21
ARManagedNetworkProvider *new_ARManagedNetworkProvider_initWithFactory_(id<ARAsyncConnectionFactory> factory) {
  ARManagedNetworkProvider *self = [ARManagedNetworkProvider alloc];
  ARManagedNetworkProvider_initWithFactory_(self, factory);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARManagedNetworkProvider)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ManagedNetworkProvider.java"

@implementation ARManagedNetworkProvider_$1


#line 30
- (void)onConnectionCreated:(ARManagedConnection *)connection {
  [((id<ARCreateConnectionCallback>) nil_chk(val$createCallback_)) onConnectionCreatedWithConnection:connection];
  @synchronized(this$0_->pendingConnections_) {
    [((JavaUtilArrayList *) nil_chk(this$0_->pendingConnections_)) removeWithId:connection];
  }
}


#line 38
- (void)onConnectionCreateError:(ARManagedConnection *)connection {
  [((id<ARCreateConnectionCallback>) nil_chk(val$createCallback_)) onConnectionCreateError];
  @synchronized(this$0_->pendingConnections_) {
    [((JavaUtilArrayList *) nil_chk(this$0_->pendingConnections_)) removeWithId:connection];
  }
}

- (instancetype)initWithARManagedNetworkProvider:(ARManagedNetworkProvider *)outer$
                  withARCreateConnectionCallback:(id<ARCreateConnectionCallback>)capture$0 {
  ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onConnectionCreated:", "onConnectionCreated", "V", 0x1, NULL, NULL },
    { "onConnectionCreateError:", "onConnectionCreateError", "V", 0x1, NULL, NULL },
    { "initWithARManagedNetworkProvider:withARCreateConnectionCallback:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.runtime.mtproto.ManagedNetworkProvider;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$createCallback_", NULL, 0x1012, "Lim.actor.runtime.mtproto.CreateConnectionCallback;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARManagedNetworkProvider", "createConnectionWithId:withMTVersion:withApiMajor:withApiMinor:withEndpoint:withCallback:withCreateCallback:" };
  static const J2ObjcClassInfo _ARManagedNetworkProvider_$1 = { 2, "", "im.actor.runtime.mtproto", "ManagedNetworkProvider", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ARManagedNetworkProvider_$1;
}

@end

void ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(ARManagedNetworkProvider_$1 *self, ARManagedNetworkProvider *outer$, id<ARCreateConnectionCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$createCallback_ = capture$0;
  (void) NSObject_init(self);
}

ARManagedNetworkProvider_$1 *new_ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(ARManagedNetworkProvider *outer$, id<ARCreateConnectionCallback> capture$0) {
  ARManagedNetworkProvider_$1 *self = [ARManagedNetworkProvider_$1 alloc];
  ARManagedNetworkProvider_$1_initWithARManagedNetworkProvider_withARCreateConnectionCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARManagedNetworkProvider_$1)

#pragma clang diagnostic pop

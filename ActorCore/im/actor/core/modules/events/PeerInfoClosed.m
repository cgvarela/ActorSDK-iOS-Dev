//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/PeerInfoClosed.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/modules/events/PeerInfoClosed.h"
#include "im/actor/runtime/eventbus/Event.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ImActorCoreModulesEventsPeerInfoClosed () {
 @public
  ACPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ImActorCoreModulesEventsPeerInfoClosed, peer_, ACPeer *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/PeerInfoClosed.java"

NSString *ImActorCoreModulesEventsPeerInfoClosed_EVENT_ = @"peer_info_closed";


#line 6
@implementation ImActorCoreModulesEventsPeerInfoClosed

+ (NSString *)EVENT {
  return ImActorCoreModulesEventsPeerInfoClosed_EVENT_;
}

- (instancetype)initWithACPeer:(ACPeer *)peer {
  ImActorCoreModulesEventsPeerInfoClosed_initWithACPeer_(self, peer);
  return self;
}


#line 16
- (ACPeer *)getPeer {
  return peer_;
}


#line 21
- (NSString *)getType {
  return ImActorCoreModulesEventsPeerInfoClosed_EVENT_;
}


#line 26
- (NSString *)description {
  return JreStrcat("$$$C", ImActorCoreModulesEventsPeerInfoClosed_EVENT_, @" {", [((ACPeer *) nil_chk(peer_)) toIdString], '}');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACPeer:", "PeerInfoClosed", NULL, 0x1, NULL, NULL },
    { "getPeer", NULL, "Lim.actor.core.entity.Peer;", 0x1, NULL, NULL },
    { "getType", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EVENT_", NULL, 0x19, "Ljava.lang.String;", &ImActorCoreModulesEventsPeerInfoClosed_EVENT_, NULL, .constantValue.asLong = 0 },
    { "peer_", NULL, 0x2, "Lim.actor.core.entity.Peer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorCoreModulesEventsPeerInfoClosed = { 2, "PeerInfoClosed", "im.actor.core.modules.events", NULL, 0x1, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorCoreModulesEventsPeerInfoClosed;
}

@end


#line 12
void ImActorCoreModulesEventsPeerInfoClosed_initWithACPeer_(ImActorCoreModulesEventsPeerInfoClosed *self, ACPeer *peer) {
  (void) ImActorRuntimeEventbusEvent_init(self);
  
#line 13
  self->peer_ = peer;
}


#line 12
ImActorCoreModulesEventsPeerInfoClosed *new_ImActorCoreModulesEventsPeerInfoClosed_initWithACPeer_(ACPeer *peer) {
  ImActorCoreModulesEventsPeerInfoClosed *self = [ImActorCoreModulesEventsPeerInfoClosed alloc];
  ImActorCoreModulesEventsPeerInfoClosed_initWithACPeer_(self, peer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesEventsPeerInfoClosed)

#pragma clang diagnostic pop

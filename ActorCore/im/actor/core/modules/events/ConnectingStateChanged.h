//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/ConnectingStateChanged.java
//

#ifndef _ImActorCoreModulesEventsConnectingStateChanged_H_
#define _ImActorCoreModulesEventsConnectingStateChanged_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/eventbus/Event.h"

@interface ImActorCoreModulesEventsConnectingStateChanged : ImActorRuntimeEventbusEvent

+ (NSString *)EVENT;

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)isConnecting;

- (NSString *)getType;

- (jboolean)isConnecting;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorCoreModulesEventsConnectingStateChanged)

FOUNDATION_EXPORT NSString *ImActorCoreModulesEventsConnectingStateChanged_EVENT_;
J2OBJC_STATIC_FIELD_GETTER(ImActorCoreModulesEventsConnectingStateChanged, EVENT_, NSString *)

FOUNDATION_EXPORT void ImActorCoreModulesEventsConnectingStateChanged_initWithBoolean_(ImActorCoreModulesEventsConnectingStateChanged *self, jboolean isConnecting);

FOUNDATION_EXPORT ImActorCoreModulesEventsConnectingStateChanged *new_ImActorCoreModulesEventsConnectingStateChanged_initWithBoolean_(jboolean isConnecting) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorCoreModulesEventsConnectingStateChanged)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesEventsConnectingStateChanged_H_

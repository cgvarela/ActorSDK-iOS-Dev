//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/events/DialogsClosed.java
//

#ifndef _ImActorCoreModulesEventsDialogsClosed_H_
#define _ImActorCoreModulesEventsDialogsClosed_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/eventbus/Event.h"

@interface ImActorCoreModulesEventsDialogsClosed : ImActorRuntimeEventbusEvent

+ (NSString *)EVENT;

#pragma mark Public

- (instancetype)init;

- (NSString *)getType;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorCoreModulesEventsDialogsClosed)

FOUNDATION_EXPORT NSString *ImActorCoreModulesEventsDialogsClosed_EVENT_;
J2OBJC_STATIC_FIELD_GETTER(ImActorCoreModulesEventsDialogsClosed, EVENT_, NSString *)

FOUNDATION_EXPORT void ImActorCoreModulesEventsDialogsClosed_init(ImActorCoreModulesEventsDialogsClosed *self);

FOUNDATION_EXPORT ImActorCoreModulesEventsDialogsClosed *new_ImActorCoreModulesEventsDialogsClosed_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorCoreModulesEventsDialogsClosed)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesEventsDialogsClosed_H_

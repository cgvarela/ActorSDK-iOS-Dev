//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/analytics/Event.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/analytics/Event.h"
#include "im/actor/core/api/ApiRawValue.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACEvent () {
 @public
  NSString *actionType_;
  NSString *actionId_;
  NSString *actionTitle_;
  ARApiRawValue *params_;
}

@end

J2OBJC_FIELD_SETTER(ACEvent, actionType_, NSString *)
J2OBJC_FIELD_SETTER(ACEvent, actionId_, NSString *)
J2OBJC_FIELD_SETTER(ACEvent, actionTitle_, NSString *)
J2OBJC_FIELD_SETTER(ACEvent, params_, ARApiRawValue *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/analytics/Event.java"


#line 5
@implementation ACEvent


#line 12
- (instancetype)initWithNSString:(NSString *)actionType
                    withNSString:(NSString *)actionId
                    withNSString:(NSString *)actionTitle
               withARApiRawValue:(ARApiRawValue *)params {
  ACEvent_initWithNSString_withNSString_withNSString_withARApiRawValue_(self, actionType, actionId, actionTitle, params);
  return self;
}


#line 19
- (NSString *)getActionType {
  return actionType_;
}

- (NSString *)getActionId {
  return actionId_;
}

- (NSString *)getActionTitle {
  return actionTitle_;
}

- (ARApiRawValue *)getParams {
  return params_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withNSString:withARApiRawValue:", "Event", NULL, 0x1, NULL, NULL },
    { "getActionType", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getActionId", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getActionTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getParams", NULL, "Lim.actor.core.api.ApiRawValue;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actionType_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "actionId_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "actionTitle_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "params_", NULL, 0x2, "Lim.actor.core.api.ApiRawValue;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACEvent = { 2, "Event", "im.actor.core.analytics", NULL, 0x1, 5, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACEvent;
}

@end


#line 12
void ACEvent_initWithNSString_withNSString_withNSString_withARApiRawValue_(ACEvent *self, NSString *actionType, NSString *actionId, NSString *actionTitle, ARApiRawValue *params) {
  (void) NSObject_init(self);
  
#line 13
  self->actionType_ = actionType;
  self->actionId_ = actionId;
  self->actionTitle_ = actionTitle;
  self->params_ = params;
}


#line 12
ACEvent *new_ACEvent_initWithNSString_withNSString_withNSString_withARApiRawValue_(NSString *actionType, NSString *actionId, NSString *actionTitle, ARApiRawValue *params) {
  ACEvent *self = [ACEvent alloc];
  ACEvent_initWithNSString_withNSString_withNSString_withARApiRawValue_(self, actionType, actionId, actionTitle, params);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACEvent)

#pragma clang diagnostic pop

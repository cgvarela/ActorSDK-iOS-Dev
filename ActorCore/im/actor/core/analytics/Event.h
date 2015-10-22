//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/analytics/Event.java
//

#ifndef _ImActorCoreAnalyticsEvent_H_
#define _ImActorCoreAnalyticsEvent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARApiRawValue;

@interface ACEvent : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)actionType
                    withNSString:(NSString *)actionId
                    withNSString:(NSString *)actionTitle
               withARApiRawValue:(ARApiRawValue *)params;

- (NSString *)getActionId;

- (NSString *)getActionTitle;

- (NSString *)getActionType;

- (ARApiRawValue *)getParams;

@end

J2OBJC_EMPTY_STATIC_INIT(ACEvent)

FOUNDATION_EXPORT void ACEvent_initWithNSString_withNSString_withNSString_withARApiRawValue_(ACEvent *self, NSString *actionType, NSString *actionId, NSString *actionTitle, ARApiRawValue *params);

FOUNDATION_EXPORT ACEvent *new_ACEvent_initWithNSString_withNSString_withNSString_withARApiRawValue_(NSString *actionType, NSString *actionId, NSString *actionTitle, ARApiRawValue *params) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACEvent)

@compatibility_alias ImActorCoreAnalyticsEvent ACEvent;


#pragma clang diagnostic pop
#endif // _ImActorCoreAnalyticsEvent_H_

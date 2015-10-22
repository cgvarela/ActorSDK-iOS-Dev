//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiUntypedEvent.java
//

#ifndef _ImActorCoreApiApiUntypedEvent_H_
#define _ImActorCoreApiApiUntypedEvent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/api/ApiEvent.h>

@class ARApiRawValue;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiUntypedEvent : ARApiEvent

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)eventType
               withARApiRawValue:(ARApiRawValue *)params;

- (NSString *)getEventType;

- (jint)getHeader;

- (ARApiRawValue *)getParams;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiUntypedEvent)

FOUNDATION_EXPORT void ARApiUntypedEvent_initWithNSString_withARApiRawValue_(ARApiUntypedEvent *self, NSString *eventType, ARApiRawValue *params);

FOUNDATION_EXPORT ARApiUntypedEvent *new_ARApiUntypedEvent_initWithNSString_withARApiRawValue_(NSString *eventType, ARApiRawValue *params) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiUntypedEvent_init(ARApiUntypedEvent *self);

FOUNDATION_EXPORT ARApiUntypedEvent *new_ARApiUntypedEvent_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiUntypedEvent)

@compatibility_alias ImActorCoreApiApiUntypedEvent ARApiUntypedEvent;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiUntypedEvent_H_
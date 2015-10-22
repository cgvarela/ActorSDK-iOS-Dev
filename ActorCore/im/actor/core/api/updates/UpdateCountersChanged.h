//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateCountersChanged.java
//

#ifndef _ImActorCoreApiUpdatesUpdateCountersChanged_H_
#define _ImActorCoreApiUpdatesUpdateCountersChanged_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Update.h>

@class ARApiAppCounters;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateCountersChanged_HEADER 215

@interface ARUpdateCountersChanged : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiAppCounters:(ARApiAppCounters *)counters;

+ (ARUpdateCountersChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (ARApiAppCounters *)getCounters;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateCountersChanged)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateCountersChanged, HEADER, jint)

FOUNDATION_EXPORT ARUpdateCountersChanged *ARUpdateCountersChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateCountersChanged_initWithARApiAppCounters_(ARUpdateCountersChanged *self, ARApiAppCounters *counters);

FOUNDATION_EXPORT ARUpdateCountersChanged *new_ARUpdateCountersChanged_initWithARApiAppCounters_(ARApiAppCounters *counters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateCountersChanged_init(ARUpdateCountersChanged *self);

FOUNDATION_EXPORT ARUpdateCountersChanged *new_ARUpdateCountersChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateCountersChanged)

@compatibility_alias ImActorCoreApiUpdatesUpdateCountersChanged ARUpdateCountersChanged;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateCountersChanged_H_

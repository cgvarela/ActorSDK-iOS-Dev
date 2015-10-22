//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiAppVisibleChanged.java
//

#ifndef _ImActorCoreApiApiAppVisibleChanged_H_
#define _ImActorCoreApiApiAppVisibleChanged_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/api/ApiEvent.h>

@class ARBserValues;
@class ARBserWriter;

@interface ARApiAppVisibleChanged : ARApiEvent

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)visible;

- (jint)getHeader;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

- (jboolean)visible;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiAppVisibleChanged)

FOUNDATION_EXPORT void ARApiAppVisibleChanged_initWithBoolean_(ARApiAppVisibleChanged *self, jboolean visible);

FOUNDATION_EXPORT ARApiAppVisibleChanged *new_ARApiAppVisibleChanged_initWithBoolean_(jboolean visible) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiAppVisibleChanged_init(ARApiAppVisibleChanged *self);

FOUNDATION_EXPORT ARApiAppVisibleChanged *new_ARApiAppVisibleChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiAppVisibleChanged)

@compatibility_alias ImActorCoreApiApiAppVisibleChanged ARApiAppVisibleChanged;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiAppVisibleChanged_H_

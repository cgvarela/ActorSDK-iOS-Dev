//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiEvent.java
//

#ifndef _ImActorCoreApiApiEvent_H_
#define _ImActorCoreApiApiEvent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class IOSByteArray;

@interface ARApiEvent : ARBserObject

#pragma mark Public

- (instancetype)init;

- (IOSByteArray *)buildContainer;

+ (ARApiEvent *)fromBytesWithByteArray:(IOSByteArray *)src;

- (jint)getHeader;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiEvent)

FOUNDATION_EXPORT ARApiEvent *ARApiEvent_fromBytesWithByteArray_(IOSByteArray *src);

FOUNDATION_EXPORT void ARApiEvent_init(ARApiEvent *self);

J2OBJC_TYPE_LITERAL_HEADER(ARApiEvent)

@compatibility_alias ImActorCoreApiApiEvent ARApiEvent;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiEvent_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceExUnsupported.java
//

#ifndef _ImActorCoreApiApiServiceExUnsupported_H_
#define _ImActorCoreApiApiServiceExUnsupported_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/api/ApiServiceEx.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ARApiServiceExUnsupported : ARApiServiceEx

#pragma mark Public

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiServiceExUnsupported)

FOUNDATION_EXPORT void ARApiServiceExUnsupported_initWithInt_withByteArray_(ARApiServiceExUnsupported *self, jint key, IOSByteArray *content);

FOUNDATION_EXPORT ARApiServiceExUnsupported *new_ARApiServiceExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiServiceExUnsupported)

@compatibility_alias ImActorCoreApiApiServiceExUnsupported ARApiServiceExUnsupported;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiServiceExUnsupported_H_
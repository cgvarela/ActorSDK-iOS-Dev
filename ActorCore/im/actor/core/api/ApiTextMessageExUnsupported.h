//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTextMessageExUnsupported.java
//

#ifndef _ImActorCoreApiApiTextMessageExUnsupported_H_
#define _ImActorCoreApiApiTextMessageExUnsupported_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/api/ApiTextMessageEx.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ARApiTextMessageExUnsupported : ARApiTextMessageEx

#pragma mark Public

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiTextMessageExUnsupported)

FOUNDATION_EXPORT void ARApiTextMessageExUnsupported_initWithInt_withByteArray_(ARApiTextMessageExUnsupported *self, jint key, IOSByteArray *content);

FOUNDATION_EXPORT ARApiTextMessageExUnsupported *new_ARApiTextMessageExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiTextMessageExUnsupported)

@compatibility_alias ImActorCoreApiApiTextMessageExUnsupported ARApiTextMessageExUnsupported;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiTextMessageExUnsupported_H_

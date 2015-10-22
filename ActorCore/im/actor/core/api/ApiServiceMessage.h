//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceMessage.java
//

#ifndef _ImActorCoreApiApiServiceMessage_H_
#define _ImActorCoreApiApiServiceMessage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/api/ApiMessage.h>

@class ARApiServiceEx;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiServiceMessage : ARApiMessage

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)text
              withARApiServiceEx:(ARApiServiceEx *)ext;

- (ARApiServiceEx *)getExt;

- (jint)getHeader;

- (NSString *)getText;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiServiceMessage)

FOUNDATION_EXPORT void ARApiServiceMessage_initWithNSString_withARApiServiceEx_(ARApiServiceMessage *self, NSString *text, ARApiServiceEx *ext);

FOUNDATION_EXPORT ARApiServiceMessage *new_ARApiServiceMessage_initWithNSString_withARApiServiceEx_(NSString *text, ARApiServiceEx *ext) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiServiceMessage_init(ARApiServiceMessage *self);

FOUNDATION_EXPORT ARApiServiceMessage *new_ARApiServiceMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiServiceMessage)

@compatibility_alias ImActorCoreApiApiServiceMessage ARApiServiceMessage;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiServiceMessage_H_

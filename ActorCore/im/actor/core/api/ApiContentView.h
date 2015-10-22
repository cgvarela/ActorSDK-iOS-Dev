//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContentView.java
//

#ifndef _ImActorCoreApiApiContentView_H_
#define _ImActorCoreApiApiContentView_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/api/ApiEvent.h>

@class ARApiRawValue;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiContentView : ARApiEvent

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)contentId
               withARApiRawValue:(ARApiRawValue *)params;

- (NSString *)getContentId;

- (jint)getHeader;

- (ARApiRawValue *)getParams;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiContentView)

FOUNDATION_EXPORT void ARApiContentView_initWithNSString_withARApiRawValue_(ARApiContentView *self, NSString *contentId, ARApiRawValue *params);

FOUNDATION_EXPORT ARApiContentView *new_ARApiContentView_initWithNSString_withARApiRawValue_(NSString *contentId, ARApiRawValue *params) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiContentView_init(ARApiContentView *self);

FOUNDATION_EXPORT ARApiContentView *new_ARApiContentView_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiContentView)

@compatibility_alias ImActorCoreApiApiContentView ARApiContentView;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiContentView_H_

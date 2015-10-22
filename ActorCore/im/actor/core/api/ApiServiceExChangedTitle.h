//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceExChangedTitle.java
//

#ifndef _ImActorCoreApiApiServiceExChangedTitle_H_
#define _ImActorCoreApiApiServiceExChangedTitle_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/api/ApiServiceEx.h"

@class ARBserValues;
@class ARBserWriter;

@interface ARApiServiceExChangedTitle : ARApiServiceEx

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)title;

- (jint)getHeader;

- (NSString *)getTitle;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiServiceExChangedTitle)

FOUNDATION_EXPORT void ARApiServiceExChangedTitle_initWithNSString_(ARApiServiceExChangedTitle *self, NSString *title);

FOUNDATION_EXPORT ARApiServiceExChangedTitle *new_ARApiServiceExChangedTitle_initWithNSString_(NSString *title) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiServiceExChangedTitle_init(ARApiServiceExChangedTitle *self);

FOUNDATION_EXPORT ARApiServiceExChangedTitle *new_ARApiServiceExChangedTitle_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiServiceExChangedTitle)

@compatibility_alias ImActorCoreApiApiServiceExChangedTitle ARApiServiceExChangedTitle;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiServiceExChangedTitle_H_

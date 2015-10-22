//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiEmailToImport.java
//

#ifndef _ImActorCoreApiApiEmailToImport_H_
#define _ImActorCoreApiApiEmailToImport_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARBserValues;
@class ARBserWriter;

@interface ARApiEmailToImport : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)email
                    withNSString:(NSString *)name;

- (NSString *)getEmail;

- (NSString *)getName;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiEmailToImport)

FOUNDATION_EXPORT void ARApiEmailToImport_initWithNSString_withNSString_(ARApiEmailToImport *self, NSString *email, NSString *name);

FOUNDATION_EXPORT ARApiEmailToImport *new_ARApiEmailToImport_initWithNSString_withNSString_(NSString *email, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiEmailToImport_init(ARApiEmailToImport *self);

FOUNDATION_EXPORT ARApiEmailToImport *new_ARApiEmailToImport_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiEmailToImport)

@compatibility_alias ImActorCoreApiApiEmailToImport ARApiEmailToImport;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiEmailToImport_H_
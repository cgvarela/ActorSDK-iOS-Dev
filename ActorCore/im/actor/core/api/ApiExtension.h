//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiExtension.java
//

#ifndef _ImActorCoreApiApiExtension_H_
#define _ImActorCoreApiApiExtension_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ARApiExtension : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
              withByteArray:(IOSByteArray *)data;

- (IOSByteArray *)getData;

- (jint)getId;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiExtension)

FOUNDATION_EXPORT void ARApiExtension_initWithInt_withByteArray_(ARApiExtension *self, jint id_, IOSByteArray *data);

FOUNDATION_EXPORT ARApiExtension *new_ARApiExtension_initWithInt_withByteArray_(jint id_, IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiExtension_init(ARApiExtension *self);

FOUNDATION_EXPORT ARApiExtension *new_ARApiExtension_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiExtension)

@compatibility_alias ImActorCoreApiApiExtension ARApiExtension;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiExtension_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestCompleteWebaction.java
//

#ifndef _ImActorCoreApiRpcRequestCompleteWebaction_H_
#define _ImActorCoreApiRpcRequestCompleteWebaction_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestCompleteWebaction_HEADER 123

@interface ARRequestCompleteWebaction : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)actionHash
                    withNSString:(NSString *)completeUri;

+ (ARRequestCompleteWebaction *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getActionHash;

- (NSString *)getCompleteUri;

- (jint)getHeaderKey;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestCompleteWebaction)

J2OBJC_STATIC_FIELD_GETTER(ARRequestCompleteWebaction, HEADER, jint)

FOUNDATION_EXPORT ARRequestCompleteWebaction *ARRequestCompleteWebaction_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestCompleteWebaction_initWithNSString_withNSString_(ARRequestCompleteWebaction *self, NSString *actionHash, NSString *completeUri);

FOUNDATION_EXPORT ARRequestCompleteWebaction *new_ARRequestCompleteWebaction_initWithNSString_withNSString_(NSString *actionHash, NSString *completeUri) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestCompleteWebaction_init(ARRequestCompleteWebaction *self);

FOUNDATION_EXPORT ARRequestCompleteWebaction *new_ARRequestCompleteWebaction_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestCompleteWebaction)

@compatibility_alias ImActorCoreApiRpcRequestCompleteWebaction ARRequestCompleteWebaction;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestCompleteWebaction_H_

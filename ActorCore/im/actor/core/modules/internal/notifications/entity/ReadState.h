//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/notifications/entity/ReadState.java
//

#ifndef _ImActorCoreModulesInternalNotificationsEntityReadState_H_
#define _ImActorCoreModulesInternalNotificationsEntityReadState_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ACReadState : ARBserObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)sortDate;

+ (ACReadState *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getSortDate;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACReadState)

FOUNDATION_EXPORT ACReadState *ACReadState_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ACReadState_initWithLong_(ACReadState *self, jlong sortDate);

FOUNDATION_EXPORT ACReadState *new_ACReadState_initWithLong_(jlong sortDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACReadState)

@compatibility_alias ImActorCoreModulesInternalNotificationsEntityReadState ACReadState;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalNotificationsEntityReadState_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/messages/entity/DeleteStorage.java
//

#ifndef _ImActorCoreModulesInternalMessagesEntityDeleteStorage_H_
#define _ImActorCoreModulesInternalMessagesEntityDeleteStorage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@class JavaUtilHashMap;

@interface ACDeleteStorage : ARBserObject

#pragma mark Public

- (instancetype)init;

+ (ACDeleteStorage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (JavaUtilHashMap *)getPendingDeletions;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDeleteStorage)

FOUNDATION_EXPORT ACDeleteStorage *ACDeleteStorage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ACDeleteStorage_init(ACDeleteStorage *self);

FOUNDATION_EXPORT ACDeleteStorage *new_ACDeleteStorage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDeleteStorage)

@compatibility_alias ImActorCoreModulesInternalMessagesEntityDeleteStorage ACDeleteStorage;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalMessagesEntityDeleteStorage_H_
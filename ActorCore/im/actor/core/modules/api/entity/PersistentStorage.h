//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/entity/PersistentStorage.java
//

#ifndef _ImActorCoreModulesApiEntityPersistentStorage_H_
#define _ImActorCoreModulesApiEntityPersistentStorage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@class ImActorCoreModulesApiEntityCursorStoredRequest;
@class JavaUtilArrayList;

@interface ImActorCoreModulesApiEntityPersistentStorage : ARBserObject

#pragma mark Public

- (instancetype)init;

- (ImActorCoreModulesApiEntityCursorStoredRequest *)findCursorRequestWithNSString:(NSString *)name;

+ (ImActorCoreModulesApiEntityPersistentStorage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (JavaUtilArrayList *)getCursorRequests;

- (JavaUtilArrayList *)getRequests;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorCoreModulesApiEntityPersistentStorage)

FOUNDATION_EXPORT ImActorCoreModulesApiEntityPersistentStorage *ImActorCoreModulesApiEntityPersistentStorage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorCoreModulesApiEntityPersistentStorage_init(ImActorCoreModulesApiEntityPersistentStorage *self);

FOUNDATION_EXPORT ImActorCoreModulesApiEntityPersistentStorage *new_ImActorCoreModulesApiEntityPersistentStorage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorCoreModulesApiEntityPersistentStorage)


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesApiEntityPersistentStorage_H_

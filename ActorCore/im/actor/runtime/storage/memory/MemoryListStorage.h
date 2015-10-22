//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/memory/MemoryListStorage.java
//

#ifndef _ImActorRuntimeStorageMemoryMemoryListStorage_H_
#define _ImActorRuntimeStorageMemoryMemoryListStorage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/storage/ListStorage.h>

@class ARListEngineRecord;
@class IOSLongArray;
@class JavaLangLong;
@protocol JavaUtilList;

@interface ARMemoryListStorage : NSObject < ARListStorage >

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (void)deleteWithKey:(jlong)key;

- (void)deleteWithKeys:(IOSLongArray *)keys;

- (jint)getCount;

- (JavaLangLong *)getTopKey;

- (jboolean)isEmpty;

- (id<JavaUtilList>)loadAllItems;

- (ARListEngineRecord *)loadItemWithKey:(jlong)key;

- (void)updateOrAddWithList:(id<JavaUtilList>)items;

- (void)updateOrAddWithValue:(ARListEngineRecord *)valueContainer;

@end

J2OBJC_EMPTY_STATIC_INIT(ARMemoryListStorage)

FOUNDATION_EXPORT void ARMemoryListStorage_init(ARMemoryListStorage *self);

FOUNDATION_EXPORT ARMemoryListStorage *new_ARMemoryListStorage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARMemoryListStorage)

@compatibility_alias ImActorRuntimeStorageMemoryMemoryListStorage ARMemoryListStorage;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeStorageMemoryMemoryListStorage_H_
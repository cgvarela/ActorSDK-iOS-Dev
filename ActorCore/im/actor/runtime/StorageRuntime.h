//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/StorageRuntime.java
//

#ifndef _ImActorRuntimeStorageRuntime_H_
#define _ImActorRuntimeStorageRuntime_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@protocol ARIndexStorage;
@protocol ARKeyValueStorage;
@protocol ARListStorage;
@protocol ARPreferencesStorage;

/*!
 @brief Provider for data storage.
 Provider is separated to two parts: Storage and Engines.
 Storage are simple interfaces for storing untyped data in some persistent offline storage.
 Engines are interfaces for working with storage that contains various implementations for different
 platforms and provide clever caching and multithread support. Engines are also has methods for getting
 data for UI.
 */
@protocol ARStorageRuntime < NSObject, JavaObject >

/*!
 @brief Creating main preferences storage.
 Called only once.
 @return the PreferencesStorage
 */
- (id<ARPreferencesStorage>)createPreferencesStorage;

/*!
 @brief Creating index storage.
 Called only once for each index.
 @param name name of index engine
 @return the IndexStorage
 */
- (id<ARIndexStorage>)createIndexWithName:(NSString *)name;

/*!
 @brief Creating key value storage.
 Called only once for each storage.
 Preferred lazy initialization in implementation of KeyValueStorage.
 @param name name of storage
 @return the KeyValueStorage
 */
- (id<ARKeyValueStorage>)createKeyValueWithName:(NSString *)name;

/*!
 @brief Creating list storage.
 Called only once for each storage.
 Preferred lazy initialization in implementation of ListStorage.
 @param name name of list storage
 @return the ListStorage
 */
- (id<ARListStorage>)createListWithName:(NSString *)name;

/*!
 @brief Reset storage
 */
- (void)resetStorage;

@end

J2OBJC_EMPTY_STATIC_INIT(ARStorageRuntime)

J2OBJC_TYPE_LITERAL_HEADER(ARStorageRuntime)

#define ImActorRuntimeStorageRuntime ARStorageRuntime


#pragma clang diagnostic pop
#endif // _ImActorRuntimeStorageRuntime_H_

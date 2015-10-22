//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/KeyValueEngine.java
//

#ifndef _ImActorRuntimeStorageKeyValueEngine_H_
#define _ImActorRuntimeStorageKeyValueEngine_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSLongArray;
@protocol ARKeyValueItem;
@protocol JavaUtilList;

@protocol ARKeyValueEngine < NSObject, JavaObject >

- (void)addOrUpdateItem:(id<ARKeyValueItem>)item;

- (void)addOrUpdateItems:(id<JavaUtilList>)values;

- (void)removeItemWithKey:(jlong)key;

- (void)removeItemsWithKeys:(IOSLongArray *)keys;

- (void)clear;

- (id)getValueWithKey:(jlong)key;

@end

J2OBJC_EMPTY_STATIC_INIT(ARKeyValueEngine)

J2OBJC_TYPE_LITERAL_HEADER(ARKeyValueEngine)

#define ImActorRuntimeStorageKeyValueEngine ARKeyValueEngine


#pragma clang diagnostic pop
#endif // _ImActorRuntimeStorageKeyValueEngine_H_

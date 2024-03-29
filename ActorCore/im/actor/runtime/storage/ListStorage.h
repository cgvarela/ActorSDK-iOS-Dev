//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/ListStorage.java
//

#ifndef _ImActorRuntimeStorageListStorage_H_
#define _ImActorRuntimeStorageListStorage_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARListEngineRecord;
@class IOSLongArray;
@protocol JavaUtilList;

@protocol ARListStorage < NSObject, JavaObject >

- (void)updateOrAddWithValue:(ARListEngineRecord *)valueContainer;

- (void)updateOrAddWithList:(id<JavaUtilList>)items;

- (void)deleteWithKey:(jlong)key;

- (void)deleteWithKeys:(IOSLongArray *)keys;

- (void)clear;

- (ARListEngineRecord *)loadItemWithKey:(jlong)key;

- (id<JavaUtilList>)loadAllItems;

- (jboolean)isEmpty;

- (jint)getCount;

@end

J2OBJC_EMPTY_STATIC_INIT(ARListStorage)

J2OBJC_TYPE_LITERAL_HEADER(ARListStorage)

#define ImActorRuntimeStorageListStorage ARListStorage


#pragma clang diagnostic pop
#endif // _ImActorRuntimeStorageListStorage_H_

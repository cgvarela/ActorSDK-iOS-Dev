//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/alg/Modifications.java
//

#ifndef _ImActorRuntimeGenericMvvmAlgModifications_H_
#define _ImActorRuntimeGenericMvvmAlgModifications_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSLongArray;
@protocol ARListEngineItem;
@protocol ARModification;
@protocol JavaUtilList;

@interface ARModifications : NSObject

#pragma mark Public

- (instancetype)init;

+ (id<ARModification>)addLoadMoreWithJavaUtilList:(id<JavaUtilList>)items;

+ (id<ARModification>)addOrUpdateWithJavaUtilList:(id<JavaUtilList>)items;

+ (id<ARModification>)addOrUpdateWithARListEngineItem:(id<ARListEngineItem>)item;

+ (id<ARModification>)clear;

+ (id<ARModification>)noOp;

+ (id<ARModification>)removeWithLong:(jlong)dstId;

+ (id<ARModification>)removeWithLongArray:(IOSLongArray *)dstIds;

+ (id<ARModification>)replaceWithJavaUtilList:(id<JavaUtilList>)items;

@end

J2OBJC_EMPTY_STATIC_INIT(ARModifications)

FOUNDATION_EXPORT id<ARModification> ARModifications_noOp();

FOUNDATION_EXPORT id<ARModification> ARModifications_addOrUpdateWithARListEngineItem_(id<ARListEngineItem> item);

FOUNDATION_EXPORT id<ARModification> ARModifications_addOrUpdateWithJavaUtilList_(id<JavaUtilList> items);

FOUNDATION_EXPORT id<ARModification> ARModifications_addLoadMoreWithJavaUtilList_(id<JavaUtilList> items);

FOUNDATION_EXPORT id<ARModification> ARModifications_replaceWithJavaUtilList_(id<JavaUtilList> items);

FOUNDATION_EXPORT id<ARModification> ARModifications_removeWithLong_(jlong dstId);

FOUNDATION_EXPORT id<ARModification> ARModifications_removeWithLongArray_(IOSLongArray *dstIds);

FOUNDATION_EXPORT id<ARModification> ARModifications_clear();

FOUNDATION_EXPORT void ARModifications_init(ARModifications *self);

FOUNDATION_EXPORT ARModifications *new_ARModifications_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARModifications)

@compatibility_alias ImActorRuntimeGenericMvvmAlgModifications ARModifications;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericMvvmAlgModifications_H_

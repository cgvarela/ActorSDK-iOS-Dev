//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListUserPhone.java
//

#ifndef _ImActorCoreViewmodelGenericsArrayListUserPhone_H_
#define _ImActorCoreViewmodelGenericsArrayListUserPhone_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <j2objc/java/util/ArrayList.h>

@class ACUserPhone;
@protocol JavaUtilCollection;

/*!
 @brief Created by ex3ndr on 22.05.15.
 */
@interface ACArrayListUserPhone : JavaUtilArrayList

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (instancetype)initWithInt:(jint)initialCapacity;

- (ACUserPhone *)getWithInt:(jint)index;

- (jboolean)isEmpty;

- (jint)size;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(ACArrayListUserPhone)

FOUNDATION_EXPORT void ACArrayListUserPhone_initWithInt_(ACArrayListUserPhone *self, jint initialCapacity);

FOUNDATION_EXPORT ACArrayListUserPhone *new_ACArrayListUserPhone_initWithInt_(jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACArrayListUserPhone_init(ACArrayListUserPhone *self);

FOUNDATION_EXPORT ACArrayListUserPhone *new_ACArrayListUserPhone_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACArrayListUserPhone_initWithJavaUtilCollection_(ACArrayListUserPhone *self, id<JavaUtilCollection> c);

FOUNDATION_EXPORT ACArrayListUserPhone *new_ACArrayListUserPhone_initWithJavaUtilCollection_(id<JavaUtilCollection> c) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACArrayListUserPhone)

@compatibility_alias ImActorCoreViewmodelGenericsArrayListUserPhone ACArrayListUserPhone;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGenericsArrayListUserPhone_H_
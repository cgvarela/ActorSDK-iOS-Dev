//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ArrayListUserEmail.java
//

#ifndef _ImActorCoreViewmodelGenericsArrayListUserEmail_H_
#define _ImActorCoreViewmodelGenericsArrayListUserEmail_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <j2objc/java/util/ArrayList.h>

@class ACUserEmail;
@protocol JavaUtilCollection;

/*!
 @brief Created by ex3ndr on 22.05.15.
 */
@interface ACArrayListUserEmail : JavaUtilArrayList

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (instancetype)initWithInt:(jint)initialCapacity;

- (ACUserEmail *)getWithInt:(jint)index;

- (jboolean)isEmpty;

- (jint)size;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(ACArrayListUserEmail)

FOUNDATION_EXPORT void ACArrayListUserEmail_initWithInt_(ACArrayListUserEmail *self, jint initialCapacity);

FOUNDATION_EXPORT ACArrayListUserEmail *new_ACArrayListUserEmail_initWithInt_(jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACArrayListUserEmail_init(ACArrayListUserEmail *self);

FOUNDATION_EXPORT ACArrayListUserEmail *new_ACArrayListUserEmail_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACArrayListUserEmail_initWithJavaUtilCollection_(ACArrayListUserEmail *self, id<JavaUtilCollection> c);

FOUNDATION_EXPORT ACArrayListUserEmail *new_ACArrayListUserEmail_initWithJavaUtilCollection_(id<JavaUtilCollection> c) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACArrayListUserEmail)

@compatibility_alias ImActorCoreViewmodelGenericsArrayListUserEmail ACArrayListUserEmail;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGenericsArrayListUserEmail_H_
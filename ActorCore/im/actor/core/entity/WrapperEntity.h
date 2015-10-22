//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/WrapperEntity.java
//

#ifndef _ImActorCoreEntityWrapperEntity_H_
#define _ImActorCoreEntityWrapperEntity_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

/*!
 @brief Created by ex3ndr on 20.05.15.
 */
@interface ACWrapperEntity : ARBserObject

#pragma mark Public

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (id)toWrapped;

#pragma mark Protected

- (instancetype)initWithInt:(jint)recordField;

- (instancetype)initWithInt:(jint)recordField
              withByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)recordField
           withARBserObject:(ARBserObject *)wrapped;

- (void)applyWrappedWithARBserObject:(ARBserObject *)wrapped;

- (id)createInstance;

- (id)getWrapped;

- (void)setWrappedWithARBserObject:(ARBserObject *)wrapped;

@end

J2OBJC_EMPTY_STATIC_INIT(ACWrapperEntity)

FOUNDATION_EXPORT void ACWrapperEntity_initWithInt_withByteArray_(ACWrapperEntity *self, jint recordField, IOSByteArray *data);

FOUNDATION_EXPORT void ACWrapperEntity_initWithInt_withARBserObject_(ACWrapperEntity *self, jint recordField, ARBserObject *wrapped);

FOUNDATION_EXPORT void ACWrapperEntity_initWithInt_(ACWrapperEntity *self, jint recordField);

J2OBJC_TYPE_LITERAL_HEADER(ACWrapperEntity)

@compatibility_alias ImActorCoreEntityWrapperEntity ACWrapperEntity;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityWrapperEntity_H_

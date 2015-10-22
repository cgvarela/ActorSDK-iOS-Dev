//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelContactRecord.java
//

#ifndef _ImActorCoreViewmodelGenericsValueModelContactRecord_H_
#define _ImActorCoreViewmodelGenericsValueModelContactRecord_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/mvvm/ValueModel.h>

@class ACArrayListContactRecord;
@protocol ARValueChangedListener;

/*!
 @brief Created by ex3ndr on 16.10.15.
 */
@interface ACValueModelContactRecord : ARValueModel

#pragma mark Public

/*!
 @brief Create ValueModel
 @param name         name of variable
 @param defaultValue default value
 */
- (instancetype)initWithNSString:(NSString *)name
    withACArrayListContactRecord:(ACArrayListContactRecord *)defaultValue;

- (ACArrayListContactRecord *)get;

- (void)subscribeWithListener:(id<ARValueChangedListener>)listener;

- (void)subscribeWithListener:(id<ARValueChangedListener>)listener
                       notify:(jboolean)notify;

- (void)unsubscribeWithListener:(id<ARValueChangedListener>)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(ACValueModelContactRecord)

FOUNDATION_EXPORT void ACValueModelContactRecord_initWithNSString_withACArrayListContactRecord_(ACValueModelContactRecord *self, NSString *name, ACArrayListContactRecord *defaultValue);

FOUNDATION_EXPORT ACValueModelContactRecord *new_ACValueModelContactRecord_initWithNSString_withACArrayListContactRecord_(NSString *name, ACArrayListContactRecord *defaultValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACValueModelContactRecord)

@compatibility_alias ImActorCoreViewmodelGenericsValueModelContactRecord ACValueModelContactRecord;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGenericsValueModelContactRecord_H_

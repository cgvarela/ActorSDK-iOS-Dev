//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelUserLink.java
//

#ifndef _ImActorCoreViewmodelGenericsValueModelUserLink_H_
#define _ImActorCoreViewmodelGenericsValueModelUserLink_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/mvvm/ValueModel.h>

@class ACArrayListUserLink;
@protocol ARValueChangedListener;

@interface ACValueModelUserLink : ARValueModel

#pragma mark Public

/*!
 @brief Create ValueModel
 @param name         name of variable
 @param defaultValue default value
 */
- (instancetype)initWithNSString:(NSString *)name
         withACArrayListUserLink:(ACArrayListUserLink *)defaultValue;

- (ACArrayListUserLink *)get;

- (void)subscribeWithListener:(id<ARValueChangedListener>)listener;

- (void)subscribeWithListener:(id<ARValueChangedListener>)listener
                       notify:(jboolean)notify;

- (void)unsubscribeWithListener:(id<ARValueChangedListener>)listener;

@end

J2OBJC_EMPTY_STATIC_INIT(ACValueModelUserLink)

FOUNDATION_EXPORT void ACValueModelUserLink_initWithNSString_withACArrayListUserLink_(ACValueModelUserLink *self, NSString *name, ACArrayListUserLink *defaultValue);

FOUNDATION_EXPORT ACValueModelUserLink *new_ACValueModelUserLink_initWithNSString_withACArrayListUserLink_(NSString *name, ACArrayListUserLink *defaultValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACValueModelUserLink)

@compatibility_alias ImActorCoreViewmodelGenericsValueModelUserLink ACValueModelUserLink;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGenericsValueModelUserLink_H_

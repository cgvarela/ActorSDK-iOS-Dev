//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/StringValueModel.java
//

#ifndef _ImActorCoreViewmodelGenericsStringValueModel_H_
#define _ImActorCoreViewmodelGenericsStringValueModel_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/mvvm/ValueModel.h>

@interface ACStringValueModel : ARValueModel

#pragma mark Public

/*!
 @brief Create ValueModel
 @param name         name of variable
 @param defaultValue default value
 */
- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)defaultValue;

- (NSString *)get;

@end

J2OBJC_EMPTY_STATIC_INIT(ACStringValueModel)

FOUNDATION_EXPORT void ACStringValueModel_initWithNSString_withNSString_(ACStringValueModel *self, NSString *name, NSString *defaultValue);

FOUNDATION_EXPORT ACStringValueModel *new_ACStringValueModel_initWithNSString_withNSString_(NSString *name, NSString *defaultValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACStringValueModel)

@compatibility_alias ImActorCoreViewmodelGenericsStringValueModel ACStringValueModel;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGenericsStringValueModel_H_
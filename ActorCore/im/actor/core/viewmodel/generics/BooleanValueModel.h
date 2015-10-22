//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/BooleanValueModel.java
//

#ifndef _ImActorCoreViewmodelGenericsBooleanValueModel_H_
#define _ImActorCoreViewmodelGenericsBooleanValueModel_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/mvvm/ValueModel.h>

@class JavaLangBoolean;

@interface ACBooleanValueModel : ARValueModel

#pragma mark Public

/*!
 @brief Create ValueModel
 @param name         name of variable
 @param defaultValue default value
 */
- (instancetype)initWithNSString:(NSString *)name
             withJavaLangBoolean:(JavaLangBoolean *)defaultValue;

- (JavaLangBoolean *)get;

@end

J2OBJC_EMPTY_STATIC_INIT(ACBooleanValueModel)

FOUNDATION_EXPORT void ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(ACBooleanValueModel *self, NSString *name, JavaLangBoolean *defaultValue);

FOUNDATION_EXPORT ACBooleanValueModel *new_ACBooleanValueModel_initWithNSString_withJavaLangBoolean_(NSString *name, JavaLangBoolean *defaultValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACBooleanValueModel)

@compatibility_alias ImActorCoreViewmodelGenericsBooleanValueModel ACBooleanValueModel;


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelGenericsBooleanValueModel_H_

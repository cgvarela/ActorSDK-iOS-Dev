//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/BaseValueModel.java
//

#ifndef _ImActorRuntimeMvvmBaseValueModel_H_
#define _ImActorRuntimeMvvmBaseValueModel_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@interface ARBaseValueModel : NSObject

#pragma mark Public

- (instancetype)initWithId:(id)rawObj;

#pragma mark Protected

- (id)getRawObj;

- (void)updateValuesWithId:(id)rawObj;

#pragma mark Package-Private

- (void)updateWithId:(id)rawObj;

@end

J2OBJC_EMPTY_STATIC_INIT(ARBaseValueModel)

FOUNDATION_EXPORT void ARBaseValueModel_initWithId_(ARBaseValueModel *self, id rawObj);

J2OBJC_TYPE_LITERAL_HEADER(ARBaseValueModel)

@compatibility_alias ImActorRuntimeMvvmBaseValueModel ARBaseValueModel;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeMvvmBaseValueModel_H_
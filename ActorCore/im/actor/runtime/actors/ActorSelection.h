//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/ActorSelection.java
//

#ifndef _ImActorRuntimeActorsActorSelection_H_
#define _ImActorRuntimeActorsActorSelection_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARProps;

/*!
 @brief Actor selection: props and path of actor
 */
@interface ARActorSelection : NSObject

#pragma mark Public

- (instancetype)initWithARProps:(ARProps *)props
                   withNSString:(NSString *)path;

- (NSString *)getPath;

- (ARProps *)getProps;

@end

J2OBJC_EMPTY_STATIC_INIT(ARActorSelection)

FOUNDATION_EXPORT void ARActorSelection_initWithARProps_withNSString_(ARActorSelection *self, ARProps *props, NSString *path);

FOUNDATION_EXPORT ARActorSelection *new_ARActorSelection_initWithARProps_withNSString_(ARProps *props, NSString *path) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARActorSelection)

@compatibility_alias ImActorRuntimeActorsActorSelection ARActorSelection;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeActorsActorSelection_H_

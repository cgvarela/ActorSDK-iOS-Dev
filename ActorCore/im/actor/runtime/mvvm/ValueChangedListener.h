//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/ValueChangedListener.java
//

#ifndef _ImActorRuntimeMvvmValueChangedListener_H_
#define _ImActorRuntimeMvvmValueChangedListener_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARValue;

@protocol ARValueChangedListener < NSObject, JavaObject >

- (void)onChanged:(id)val
        withModel:(ARValue *)valueModel;

@end

J2OBJC_EMPTY_STATIC_INIT(ARValueChangedListener)

J2OBJC_TYPE_LITERAL_HEADER(ARValueChangedListener)

#define ImActorRuntimeMvvmValueChangedListener ARValueChangedListener


#pragma clang diagnostic pop
#endif // _ImActorRuntimeMvvmValueChangedListener_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mvvm/ValueDoubleChangedListener.java
//

#ifndef _ImActorRuntimeMvvmValueDoubleChangedListener_H_
#define _ImActorRuntimeMvvmValueDoubleChangedListener_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARValue;

@protocol ARValueDoubleChangedListener < NSObject, JavaObject >

- (void)onChanged:(id)val
        withModel:(ARValue *)valueModel
       withValue2:(id)val2
       withModel2:(ARValue *)valueModel2;

@end

J2OBJC_EMPTY_STATIC_INIT(ARValueDoubleChangedListener)

J2OBJC_TYPE_LITERAL_HEADER(ARValueDoubleChangedListener)

#define ImActorRuntimeMvvmValueDoubleChangedListener ARValueDoubleChangedListener


#pragma clang diagnostic pop
#endif // _ImActorRuntimeMvvmValueDoubleChangedListener_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/Command.java
//

#ifndef _ImActorCoreViewmodelCommand_H_
#define _ImActorCoreViewmodelCommand_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@protocol ACCommandCallback;

@protocol ACCommand < NSObject, JavaObject >

- (void)startWithCallback:(id<ACCommandCallback>)callback;

@end

J2OBJC_EMPTY_STATIC_INIT(ACCommand)

J2OBJC_TYPE_LITERAL_HEADER(ACCommand)

#define ImActorCoreViewmodelCommand ACCommand


#pragma clang diagnostic pop
#endif // _ImActorCoreViewmodelCommand_H_
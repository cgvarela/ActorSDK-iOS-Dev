//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/DisplayWindow.java
//

#ifndef _ImActorRuntimeGenericMvvmDisplayWindow_H_
#define _ImActorRuntimeGenericMvvmDisplayWindow_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class JavaLangLong;

@interface ARDisplayWindow : NSObject

#pragma mark Public

- (void)completeForwardLoading;

- (void)completeInitBackwardWithJavaLangLong:(JavaLangLong *)head;

- (void)completeInitCenterWithJavaLangLong:(JavaLangLong *)forwardHead
                          withJavaLangLong:(JavaLangLong *)backwardHead;

- (void)completeInitForwardWithJavaLangLong:(JavaLangLong *)tail;

- (void)emptyInit;

- (void)endBackwardLoading;

- (JavaLangLong *)getCurrentBackwardHead;

- (JavaLangLong *)getCurrentForwardHead;

- (jboolean)isBackwardLoaded;

- (jboolean)isForwardCompleted;

- (jboolean)isInited;

- (void)onBackwardCompleted;

- (void)onBackwardSliceLoadedWithJavaLangLong:(JavaLangLong *)head;

- (void)onForwardCompleted;

- (void)onForwardSliceLoadedWithJavaLangLong:(JavaLangLong *)tail;

- (jboolean)startBackwardLoading;

- (jboolean)startForwardLoading;

- (void)startInitBackward;

- (void)startInitCenter;

- (void)startInitForward;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ARDisplayWindow)

FOUNDATION_EXPORT void ARDisplayWindow_init(ARDisplayWindow *self);

FOUNDATION_EXPORT ARDisplayWindow *new_ARDisplayWindow_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARDisplayWindow)

@compatibility_alias ImActorRuntimeGenericMvvmDisplayWindow ARDisplayWindow;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericMvvmDisplayWindow_H_

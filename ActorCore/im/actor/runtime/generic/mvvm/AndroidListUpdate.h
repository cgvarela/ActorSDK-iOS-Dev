//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/AndroidListUpdate.java
//

#ifndef _ImActorRuntimeGenericMvvmAndroidListUpdate_H_
#define _ImActorRuntimeGenericMvvmAndroidListUpdate_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARChangeDescription;
@class JavaUtilArrayList;

@interface ARAndroidListUpdate : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilArrayList:(JavaUtilArrayList *)list
                    withJavaUtilArrayList:(JavaUtilArrayList *)changes
                              withBoolean:(jboolean)isLoadMore;

- (id)getItemWithInt:(jint)index;

- (jint)getSize;

- (jboolean)isLoadMore;

- (ARChangeDescription *)next;

@end

J2OBJC_EMPTY_STATIC_INIT(ARAndroidListUpdate)

FOUNDATION_EXPORT void ARAndroidListUpdate_initWithJavaUtilArrayList_withJavaUtilArrayList_withBoolean_(ARAndroidListUpdate *self, JavaUtilArrayList *list, JavaUtilArrayList *changes, jboolean isLoadMore);

FOUNDATION_EXPORT ARAndroidListUpdate *new_ARAndroidListUpdate_initWithJavaUtilArrayList_withJavaUtilArrayList_withBoolean_(JavaUtilArrayList *list, JavaUtilArrayList *changes, jboolean isLoadMore) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARAndroidListUpdate)

@compatibility_alias ImActorRuntimeGenericMvvmAndroidListUpdate ARAndroidListUpdate;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericMvvmAndroidListUpdate_H_

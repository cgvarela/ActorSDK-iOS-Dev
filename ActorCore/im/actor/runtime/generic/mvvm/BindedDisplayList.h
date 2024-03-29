//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/BindedDisplayList.java
//

#ifndef _ImActorRuntimeGenericMvvmBindedDisplayList_H_
#define _ImActorRuntimeGenericMvvmBindedDisplayList_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/generic/mvvm/DisplayList.h"
#include "im/actor/runtime/mvvm/PlatformDisplayList.h"
#include <j2objc/java/lang/Enum.h>

@protocol ARBindedDisplayList_BindHook;
@protocol ARBindedDisplayList_LinearLayoutCallback;
@protocol ARListEngineDisplayExt;

@interface ARBindedDisplayList : ARDisplayList < ARPlatformDisplayList >

#pragma mark Public

- (instancetype)initWithARListEngineDisplayExt:(id<ARListEngineDisplayExt>)listEngine
                                   withBoolean:(jboolean)isGlobalList
                                       withInt:(jint)pageSize
                                       withInt:(jint)loadGap
           withARDisplayList_OperationModeEnum:(ARDisplayList_OperationModeEnum *)operationMode;

- (void)dispose;

- (id<ARBindedDisplayList_BindHook>)getBindHook;

- (void)initBottomWithRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (void)initCenterWithLong:(jlong)rid OBJC_METHOD_FAMILY_NONE;

- (void)initCenterWithKey:(jlong)centerSortKey
              withRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (void)initEmpty OBJC_METHOD_FAMILY_NONE;

- (void)initSearchWithQuery:(NSString *)query
                withRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (void)initTop OBJC_METHOD_FAMILY_NONE;

- (void)initTopWithRefresh:(jboolean)refresh OBJC_METHOD_FAMILY_NONE;

- (jboolean)isGlobalList;

- (jboolean)isInSearchState;

- (void)setBindHook:(id<ARBindedDisplayList_BindHook>)bindHook;

- (void)setLinearLayoutCallbackWithARBindedDisplayList_LinearLayoutCallback:(id<ARBindedDisplayList_LinearLayoutCallback>)linearLayoutCallback;

- (void)touchWithIndex:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(ARBindedDisplayList)

FOUNDATION_EXPORT void ARBindedDisplayList_initWithARListEngineDisplayExt_withBoolean_withInt_withInt_withARDisplayList_OperationModeEnum_(ARBindedDisplayList *self, id<ARListEngineDisplayExt> listEngine, jboolean isGlobalList, jint pageSize, jint loadGap, ARDisplayList_OperationModeEnum *operationMode);

FOUNDATION_EXPORT ARBindedDisplayList *new_ARBindedDisplayList_initWithARListEngineDisplayExt_withBoolean_withInt_withInt_withARDisplayList_OperationModeEnum_(id<ARListEngineDisplayExt> listEngine, jboolean isGlobalList, jint pageSize, jint loadGap, ARDisplayList_OperationModeEnum *operationMode) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARBindedDisplayList)

@compatibility_alias ImActorRuntimeGenericMvvmBindedDisplayList ARBindedDisplayList;

typedef NS_ENUM(NSUInteger, ARBindedDisplayList_State) {
  ARBindedDisplayList_State_LOADING_EMPTY = 0,
  ARBindedDisplayList_State_LOADED = 1,
  ARBindedDisplayList_State_LOADED_EMPTY = 2,
};

@interface ARBindedDisplayList_StateEnum : JavaLangEnum < NSCopying >

+ (ARBindedDisplayList_StateEnum *)LOADING_EMPTY;

+ (ARBindedDisplayList_StateEnum *)LOADED;

+ (ARBindedDisplayList_StateEnum *)LOADED_EMPTY;

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ARBindedDisplayList_StateEnum_values();

+ (ARBindedDisplayList_StateEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT ARBindedDisplayList_StateEnum *ARBindedDisplayList_StateEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ARBindedDisplayList_StateEnum)

FOUNDATION_EXPORT ARBindedDisplayList_StateEnum *ARBindedDisplayList_StateEnum_values_[];

#define ARBindedDisplayList_StateEnum_LOADING_EMPTY ARBindedDisplayList_StateEnum_values_[ARBindedDisplayList_State_LOADING_EMPTY]
J2OBJC_ENUM_CONSTANT_GETTER(ARBindedDisplayList_StateEnum, LOADING_EMPTY)

#define ARBindedDisplayList_StateEnum_LOADED ARBindedDisplayList_StateEnum_values_[ARBindedDisplayList_State_LOADED]
J2OBJC_ENUM_CONSTANT_GETTER(ARBindedDisplayList_StateEnum, LOADED)

#define ARBindedDisplayList_StateEnum_LOADED_EMPTY ARBindedDisplayList_StateEnum_values_[ARBindedDisplayList_State_LOADED_EMPTY]
J2OBJC_ENUM_CONSTANT_GETTER(ARBindedDisplayList_StateEnum, LOADED_EMPTY)

J2OBJC_TYPE_LITERAL_HEADER(ARBindedDisplayList_StateEnum)

@protocol ARBindedDisplayList_BindHook < NSObject, JavaObject >

- (void)onScrolledToEnd;

- (void)onItemTouchedWithId:(id)item;

@end

J2OBJC_EMPTY_STATIC_INIT(ARBindedDisplayList_BindHook)

J2OBJC_TYPE_LITERAL_HEADER(ARBindedDisplayList_BindHook)

@protocol ARBindedDisplayList_LinearLayoutCallback < NSObject, JavaObject >

- (void)setStackFromEndWithBoolean:(jboolean)b;

@end

J2OBJC_EMPTY_STATIC_INIT(ARBindedDisplayList_LinearLayoutCallback)

J2OBJC_TYPE_LITERAL_HEADER(ARBindedDisplayList_LinearLayoutCallback)


#pragma clang diagnostic pop
#endif // _ImActorRuntimeGenericMvvmBindedDisplayList_H_

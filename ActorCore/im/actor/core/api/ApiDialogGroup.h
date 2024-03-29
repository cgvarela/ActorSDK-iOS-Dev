//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDialogGroup.java
//

#ifndef _ImActorCoreApiApiDialogGroup_H_
#define _ImActorCoreApiApiDialogGroup_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/bser/BserObject.h"

@class ARBserValues;
@class ARBserWriter;
@protocol JavaUtilList;

@interface ARApiDialogGroup : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)title
                    withNSString:(NSString *)key
                withJavaUtilList:(id<JavaUtilList>)dialogs;

- (id<JavaUtilList>)getDialogs;

- (NSString *)getKey;

- (NSString *)getTitle;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiDialogGroup)

FOUNDATION_EXPORT void ARApiDialogGroup_initWithNSString_withNSString_withJavaUtilList_(ARApiDialogGroup *self, NSString *title, NSString *key, id<JavaUtilList> dialogs);

FOUNDATION_EXPORT ARApiDialogGroup *new_ARApiDialogGroup_initWithNSString_withNSString_withJavaUtilList_(NSString *title, NSString *key, id<JavaUtilList> dialogs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiDialogGroup_init(ARApiDialogGroup *self);

FOUNDATION_EXPORT ARApiDialogGroup *new_ARApiDialogGroup_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiDialogGroup)

@compatibility_alias ImActorCoreApiApiDialogGroup ARApiDialogGroup;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiDialogGroup_H_

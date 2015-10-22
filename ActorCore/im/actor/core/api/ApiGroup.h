//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiGroup.java
//

#ifndef _ImActorCoreApiApiGroup_H_
#define _ImActorCoreApiApiGroup_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARApiAvatar;
@class ARBserValues;
@class ARBserWriter;
@class JavaLangBoolean;
@protocol JavaUtilList;

@interface ARApiGroup : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)title
            withARApiAvatar:(ARApiAvatar *)avatar
                withBoolean:(jboolean)isMember
                    withInt:(jint)creatorUid
           withJavaUtilList:(id<JavaUtilList>)members
                   withLong:(jlong)createDate
        withJavaLangBoolean:(JavaLangBoolean *)disableEdit
        withJavaLangBoolean:(JavaLangBoolean *)disableInviteView
        withJavaLangBoolean:(JavaLangBoolean *)disableInviteRevoke
        withJavaLangBoolean:(JavaLangBoolean *)disableIntegrationView
        withJavaLangBoolean:(JavaLangBoolean *)disableIntegrationsRevoke
        withJavaLangBoolean:(JavaLangBoolean *)isAdmin
               withNSString:(NSString *)theme
               withNSString:(NSString *)about
        withJavaLangBoolean:(JavaLangBoolean *)isHidden
           withJavaUtilList:(id<JavaUtilList>)extensions;

- (JavaLangBoolean *)disableEdit;

- (JavaLangBoolean *)disableIntegrationsRevoke;

- (JavaLangBoolean *)disableIntegrationView;

- (JavaLangBoolean *)disableInviteRevoke;

- (JavaLangBoolean *)disableInviteView;

- (NSString *)getAbout;

- (jlong)getAccessHash;

- (ARApiAvatar *)getAvatar;

- (jlong)getCreateDate;

- (jint)getCreatorUid;

- (id<JavaUtilList>)getExtensions;

- (jint)getId;

- (id<JavaUtilList>)getMembers;

- (NSString *)getTheme;

- (NSString *)getTitle;

- (JavaLangBoolean *)isAdmin;

- (JavaLangBoolean *)isHidden;

- (jboolean)isMember;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiGroup)

FOUNDATION_EXPORT void ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(ARApiGroup *self, jint id_, jlong accessHash, NSString *title, ARApiAvatar *avatar, jboolean isMember, jint creatorUid, id<JavaUtilList> members, jlong createDate, JavaLangBoolean *disableEdit, JavaLangBoolean *disableInviteView, JavaLangBoolean *disableInviteRevoke, JavaLangBoolean *disableIntegrationView, JavaLangBoolean *disableIntegrationsRevoke, JavaLangBoolean *isAdmin, NSString *theme, NSString *about, JavaLangBoolean *isHidden, id<JavaUtilList> extensions);

FOUNDATION_EXPORT ARApiGroup *new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(jint id_, jlong accessHash, NSString *title, ARApiAvatar *avatar, jboolean isMember, jint creatorUid, id<JavaUtilList> members, jlong createDate, JavaLangBoolean *disableEdit, JavaLangBoolean *disableInviteView, JavaLangBoolean *disableInviteRevoke, JavaLangBoolean *disableIntegrationView, JavaLangBoolean *disableIntegrationsRevoke, JavaLangBoolean *isAdmin, NSString *theme, NSString *about, JavaLangBoolean *isHidden, id<JavaUtilList> extensions) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiGroup_init(ARApiGroup *self);

FOUNDATION_EXPORT ARApiGroup *new_ARApiGroup_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiGroup)

@compatibility_alias ImActorCoreApiApiGroup ARApiGroup;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiGroup_H_

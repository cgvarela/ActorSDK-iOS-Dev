//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiUser.java
//

#ifndef _ImActorCoreApiApiUser_H_
#define _ImActorCoreApiApiUser_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARApiAvatar;
@class ARApiSexEnum;
@class ARBserValues;
@class ARBserWriter;
@class JavaLangBoolean;
@protocol JavaUtilList;

@interface ARApiUser : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
           withARApiSexEnum:(ARApiSexEnum *)sex
            withARApiAvatar:(ARApiAvatar *)avatar
           withJavaUtilList:(id<JavaUtilList>)contactInfo
        withJavaLangBoolean:(JavaLangBoolean *)isBot
               withNSString:(NSString *)nick
               withNSString:(NSString *)about
               withNSString:(NSString *)external;

- (NSString *)getAbout;

- (jlong)getAccessHash;

- (ARApiAvatar *)getAvatar;

- (id<JavaUtilList>)getContactInfo;

- (NSString *)getExternal;

- (jint)getId;

- (NSString *)getLocalName;

- (NSString *)getName;

- (NSString *)getNick;

- (ARApiSexEnum *)getSex;

- (JavaLangBoolean *)isBot;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiUser)

FOUNDATION_EXPORT void ARApiUser_initWithInt_withLong_withNSString_withNSString_withARApiSexEnum_withARApiAvatar_withJavaUtilList_withJavaLangBoolean_withNSString_withNSString_withNSString_(ARApiUser *self, jint id_, jlong accessHash, NSString *name, NSString *localName, ARApiSexEnum *sex, ARApiAvatar *avatar, id<JavaUtilList> contactInfo, JavaLangBoolean *isBot, NSString *nick, NSString *about, NSString *external);

FOUNDATION_EXPORT ARApiUser *new_ARApiUser_initWithInt_withLong_withNSString_withNSString_withARApiSexEnum_withARApiAvatar_withJavaUtilList_withJavaLangBoolean_withNSString_withNSString_withNSString_(jint id_, jlong accessHash, NSString *name, NSString *localName, ARApiSexEnum *sex, ARApiAvatar *avatar, id<JavaUtilList> contactInfo, JavaLangBoolean *isBot, NSString *nick, NSString *about, NSString *external) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiUser_init(ARApiUser *self);

FOUNDATION_EXPORT ARApiUser *new_ARApiUser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiUser)

@compatibility_alias ImActorCoreApiApiUser ARApiUser;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiUser_H_
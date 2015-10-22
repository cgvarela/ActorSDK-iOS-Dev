//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/Authentication.java
//

#ifndef _ImActorCoreModulesAuthentication_H_
#define _ImActorCoreModulesAuthentication_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACAuthStateEnum;
@class ACModules;
@class ARApiSexEnum;
@protocol ACCommand;

@interface ACAuthentication : NSObject

#pragma mark Public

- (instancetype)initWithACModules:(ACModules *)modules;

- (ACAuthStateEnum *)getAuthState;

- (NSString *)getEmail;

- (jlong)getPhone;

- (jboolean)isLoggedIn;

- (jint)myUid;

- (id<ACCommand>)requestCallActivation;

- (id<ACCommand>)requestCompleteOauthWithNSString:(NSString *)code;

- (id<ACCommand>)requestGetOAuth2Params;

- (id<ACCommand>)requestStartEmailAuthWithNSString:(NSString *)email;

- (id<ACCommand>)requestStartPhoneAuthWithLong:(jlong)phone;

- (id<ACCommand>)requestValidateCodeWithNSString:(NSString *)code;

- (void)resetAuth;

- (void)resetModule;

- (void)run;

- (id<ACCommand>)signUpWithNSString:(NSString *)name
                   withARApiSexEnum:(ARApiSexEnum *)sex
                       withNSString:(NSString *)avatarPath;

@end

J2OBJC_EMPTY_STATIC_INIT(ACAuthentication)

FOUNDATION_EXPORT void ACAuthentication_initWithACModules_(ACAuthentication *self, ACModules *modules);

FOUNDATION_EXPORT ACAuthentication *new_ACAuthentication_initWithACModules_(ACModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACAuthentication)

@compatibility_alias ImActorCoreModulesAuthentication ACAuthentication;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesAuthentication_H_

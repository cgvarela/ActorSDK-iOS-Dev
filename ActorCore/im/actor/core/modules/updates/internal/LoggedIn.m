//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/LoggedIn.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/ResponseAuth.h"
#include "im/actor/core/modules/updates/internal/InternalUpdate.h"
#include "im/actor/core/modules/updates/internal/LoggedIn.h"
#include <j2objc/java/lang/Runnable.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACLoggedIn () {
 @public
  ARResponseAuth *auth_;
  id<JavaLangRunnable> runnable_;
}

@end

J2OBJC_FIELD_SETTER(ACLoggedIn, auth_, ARResponseAuth *)
J2OBJC_FIELD_SETTER(ACLoggedIn, runnable_, id<JavaLangRunnable>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/LoggedIn.java"


#line 9
@implementation ACLoggedIn


#line 13
- (instancetype)initWithARResponseAuth:(ARResponseAuth *)auth
                  withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  ACLoggedIn_initWithARResponseAuth_withJavaLangRunnable_(self, auth, runnable);
  return self;
}


#line 18
- (ARResponseAuth *)getAuth {
  return auth_;
}

- (id<JavaLangRunnable>)getRunnable {
  return runnable_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARResponseAuth:withJavaLangRunnable:", "LoggedIn", NULL, 0x1, NULL, NULL },
    { "getAuth", NULL, "Lim.actor.core.api.rpc.ResponseAuth;", 0x1, NULL, NULL },
    { "getRunnable", NULL, "Ljava.lang.Runnable;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "auth_", NULL, 0x2, "Lim.actor.core.api.rpc.ResponseAuth;", NULL, NULL, .constantValue.asLong = 0 },
    { "runnable_", NULL, 0x2, "Ljava.lang.Runnable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACLoggedIn = { 2, "LoggedIn", "im.actor.core.modules.updates.internal", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACLoggedIn;
}

@end


#line 13
void ACLoggedIn_initWithARResponseAuth_withJavaLangRunnable_(ACLoggedIn *self, ARResponseAuth *auth, id<JavaLangRunnable> runnable) {
  (void) ACInternalUpdate_init(self);
  
#line 14
  self->auth_ = auth;
  self->runnable_ = runnable;
}


#line 13
ACLoggedIn *new_ACLoggedIn_initWithARResponseAuth_withJavaLangRunnable_(ARResponseAuth *auth, id<JavaLangRunnable> runnable) {
  ACLoggedIn *self = [ACLoggedIn alloc];
  ACLoggedIn_initWithARResponseAuth_withJavaLangRunnable_(self, auth, runnable);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACLoggedIn)

#pragma clang diagnostic pop

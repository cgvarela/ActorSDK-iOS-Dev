//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/PhoneBookEmail.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/PhoneBookEmail.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPhoneBookEmail () {
 @public
  jlong id__;
  NSString *email_;
}

@end

J2OBJC_FIELD_SETTER(ACPhoneBookEmail, email_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/PhoneBookEmail.java"


#line 9
@implementation ACPhoneBookEmail

@synthesize id_ = id__;
@synthesize email = email_;


#line 15
- (instancetype)initWithLong:(jlong)id_
                withNSString:(NSString *)email {
  ACPhoneBookEmail_initWithLong_withNSString_(self, id_, email);
  return self;
}


#line 20
- (jlong)getId {
  return id__;
}

- (NSString *)getEmail {
  return email_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withNSString:", "PhoneBookEmail", NULL, 0x1, NULL, NULL },
    { "getId", NULL, "J", 0x1, NULL, NULL },
    { "getEmail", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "email_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACPhoneBookEmail = { 2, "PhoneBookEmail", "im.actor.core.entity", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPhoneBookEmail;
}

@end


#line 15
void ACPhoneBookEmail_initWithLong_withNSString_(ACPhoneBookEmail *self, jlong id_, NSString *email) {
  (void) NSObject_init(self);
  
#line 16
  self->id__ = id_;
  self->email_ = email;
}


#line 15
ACPhoneBookEmail *new_ACPhoneBookEmail_initWithLong_withNSString_(jlong id_, NSString *email) {
  ACPhoneBookEmail *self = [ACPhoneBookEmail alloc];
  ACPhoneBookEmail_initWithLong_withNSString_(self, id_, email);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACPhoneBookEmail)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/PhoneBookPhone.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/PhoneBookPhone.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACPhoneBookPhone () {
 @public
  jlong id__;
  jlong number_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/PhoneBookPhone.java"


#line 9
@implementation ACPhoneBookPhone

@synthesize id_ = id__;
@synthesize number = number_;


#line 15
- (instancetype)initWithLong:(jlong)id_
                    withLong:(jlong)number {
  ACPhoneBookPhone_initWithLong_withLong_(self, id_, number);
  return self;
}


#line 20
- (jlong)getId {
  return id__;
}

- (jlong)getNumber {
  return number_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:", "PhoneBookPhone", NULL, 0x1, NULL, NULL },
    { "getId", NULL, "J", 0x1, NULL, NULL },
    { "getNumber", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "number_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACPhoneBookPhone = { 2, "PhoneBookPhone", "im.actor.core.entity", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACPhoneBookPhone;
}

@end


#line 15
void ACPhoneBookPhone_initWithLong_withLong_(ACPhoneBookPhone *self, jlong id_, jlong number) {
  (void) NSObject_init(self);
  
#line 16
  self->id__ = id_;
  self->number_ = number;
}


#line 15
ACPhoneBookPhone *new_ACPhoneBookPhone_initWithLong_withLong_(jlong id_, jlong number) {
  ACPhoneBookPhone *self = [ACPhoneBookPhone alloc];
  ACPhoneBookPhone_initWithLong_withLong_(self, id_, number);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACPhoneBookPhone)

#pragma clang diagnostic pop

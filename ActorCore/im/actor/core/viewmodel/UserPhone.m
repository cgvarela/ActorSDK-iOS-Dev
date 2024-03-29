//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/UserPhone.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/viewmodel/UserPhone.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACUserPhone () {
 @public
  jlong phone_;
  NSString *title_;
}

@end

J2OBJC_FIELD_SETTER(ACUserPhone, title_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/UserPhone.java"


#line 12
@implementation ACUserPhone

@synthesize phone = phone_;
@synthesize title = title_;


#line 25
- (instancetype)initWithLong:(jlong)phone
                withNSString:(NSString *)title {
  ACUserPhone_initWithLong_withNSString_(self, phone, title);
  return self;
}


#line 35
- (jlong)getPhone {
  return phone_;
}


#line 44
- (NSString *)getTitle {
  return title_;
}


#line 49
- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self getClass] != [o getClass]) return false;
  
#line 53
  ACUserPhone *userPhone = (ACUserPhone *) check_class_cast(o, [ACUserPhone class]);
  
#line 55
  if (phone_ != ((ACUserPhone *) nil_chk(userPhone))->phone_) return false;
  
#line 57
  return true;
}


#line 61
- (NSUInteger)hash {
  return (jint) (phone_ ^ (JreURShift64(phone_, 32)));
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withNSString:", "UserPhone", NULL, 0x1, NULL, NULL },
    { "getPhone", NULL, "J", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "phone_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACUserPhone = { 2, "UserPhone", "im.actor.core.viewmodel", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACUserPhone;
}

@end


#line 25
void ACUserPhone_initWithLong_withNSString_(ACUserPhone *self, jlong phone, NSString *title) {
  (void) NSObject_init(self);
  
#line 26
  self->phone_ = phone;
  self->title_ = title;
}


#line 25
ACUserPhone *new_ACUserPhone_initWithLong_withNSString_(jlong phone, NSString *title) {
  ACUserPhone *self = [ACUserPhone alloc];
  ACUserPhone_initWithLong_withNSString_(self, phone, title);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACUserPhone)

#pragma clang diagnostic pop

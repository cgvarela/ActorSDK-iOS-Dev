//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContactRecordType.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/ContactRecordType.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

__attribute__((unused)) static void ACContactRecordTypeEnum_initWithNSString_withInt_(ACContactRecordTypeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ACContactRecordTypeEnum *new_ACContactRecordTypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContactRecordType.java"

J2OBJC_INITIALIZED_DEFN(ACContactRecordTypeEnum)

ACContactRecordTypeEnum *ACContactRecordTypeEnum_values_[4];


#line 7
@implementation ACContactRecordTypeEnum

+ (ACContactRecordTypeEnum *)PHONE {
  return ACContactRecordTypeEnum_PHONE;
}

+ (ACContactRecordTypeEnum *)EMAIL {
  return ACContactRecordTypeEnum_EMAIL;
}

+ (ACContactRecordTypeEnum *)WEB {
  return ACContactRecordTypeEnum_WEB;
}

+ (ACContactRecordTypeEnum *)SOCIAL {
  return ACContactRecordTypeEnum_SOCIAL;
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  ACContactRecordTypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ACContactRecordTypeEnum_values() {
  ACContactRecordTypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ACContactRecordTypeEnum_values_ count:4 type:ACContactRecordTypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ACContactRecordTypeEnum_values();
}

+ (ACContactRecordTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ACContactRecordTypeEnum_valueOfWithNSString_(name);
}

ACContactRecordTypeEnum *ACContactRecordTypeEnum_valueOfWithNSString_(NSString *name) {
  ACContactRecordTypeEnum_initialize();
  for (int i = 0; i < 4; i++) {
    ACContactRecordTypeEnum *e = ACContactRecordTypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ACContactRecordTypeEnum class]) {
    ACContactRecordTypeEnum_PHONE = new_ACContactRecordTypeEnum_initWithNSString_withInt_(@"PHONE", 0);
    ACContactRecordTypeEnum_EMAIL = new_ACContactRecordTypeEnum_initWithNSString_withInt_(@"EMAIL", 1);
    ACContactRecordTypeEnum_WEB = new_ACContactRecordTypeEnum_initWithNSString_withInt_(@"WEB", 2);
    ACContactRecordTypeEnum_SOCIAL = new_ACContactRecordTypeEnum_initWithNSString_withInt_(@"SOCIAL", 3);
    J2OBJC_SET_INITIALIZED(ACContactRecordTypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "PHONE", "PHONE", 0x4019, "Lim.actor.core.entity.ContactRecordType;", &ACContactRecordTypeEnum_PHONE, NULL, .constantValue.asLong = 0 },
    { "EMAIL", "EMAIL", 0x4019, "Lim.actor.core.entity.ContactRecordType;", &ACContactRecordTypeEnum_EMAIL, NULL, .constantValue.asLong = 0 },
    { "WEB", "WEB", 0x4019, "Lim.actor.core.entity.ContactRecordType;", &ACContactRecordTypeEnum_WEB, NULL, .constantValue.asLong = 0 },
    { "SOCIAL", "SOCIAL", 0x4019, "Lim.actor.core.entity.ContactRecordType;", &ACContactRecordTypeEnum_SOCIAL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.entity.ContactRecordType;"};
  static const J2ObjcClassInfo _ACContactRecordTypeEnum = { 2, "ContactRecordType", "im.actor.core.entity", NULL, 0x4011, 0, NULL, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/entity/ContactRecordType;>;" };
  return &_ACContactRecordTypeEnum;
}

@end

void ACContactRecordTypeEnum_initWithNSString_withInt_(ACContactRecordTypeEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ACContactRecordTypeEnum *new_ACContactRecordTypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ACContactRecordTypeEnum *self = [ACContactRecordTypeEnum alloc];
  ACContactRecordTypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContactRecordTypeEnum)

#pragma clang diagnostic pop
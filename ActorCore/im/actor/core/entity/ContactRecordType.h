//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContactRecordType.java
//

#ifndef _ImActorCoreEntityContactRecordType_H_
#define _ImActorCoreEntityContactRecordType_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <j2objc/java/lang/Enum.h>

typedef NS_ENUM(NSUInteger, ACContactRecordType) {
  ACContactRecordType_PHONE = 0,
  ACContactRecordType_EMAIL = 1,
  ACContactRecordType_WEB = 2,
  ACContactRecordType_SOCIAL = 3,
};

@interface ACContactRecordTypeEnum : JavaLangEnum < NSCopying >

+ (ACContactRecordTypeEnum *)PHONE;

+ (ACContactRecordTypeEnum *)EMAIL;

+ (ACContactRecordTypeEnum *)WEB;

+ (ACContactRecordTypeEnum *)SOCIAL;

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ACContactRecordTypeEnum_values();

+ (ACContactRecordTypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT ACContactRecordTypeEnum *ACContactRecordTypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ACContactRecordTypeEnum)

FOUNDATION_EXPORT ACContactRecordTypeEnum *ACContactRecordTypeEnum_values_[];

#define ACContactRecordTypeEnum_PHONE ACContactRecordTypeEnum_values_[ACContactRecordType_PHONE]
J2OBJC_ENUM_CONSTANT_GETTER(ACContactRecordTypeEnum, PHONE)

#define ACContactRecordTypeEnum_EMAIL ACContactRecordTypeEnum_values_[ACContactRecordType_EMAIL]
J2OBJC_ENUM_CONSTANT_GETTER(ACContactRecordTypeEnum, EMAIL)

#define ACContactRecordTypeEnum_WEB ACContactRecordTypeEnum_values_[ACContactRecordType_WEB]
J2OBJC_ENUM_CONSTANT_GETTER(ACContactRecordTypeEnum, WEB)

#define ACContactRecordTypeEnum_SOCIAL ACContactRecordTypeEnum_values_[ACContactRecordType_SOCIAL]
J2OBJC_ENUM_CONSTANT_GETTER(ACContactRecordTypeEnum, SOCIAL)

J2OBJC_TYPE_LITERAL_HEADER(ACContactRecordTypeEnum)

@compatibility_alias ImActorCoreEntityContactRecordTypeEnum ACContactRecordTypeEnum;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContactRecordType_H_

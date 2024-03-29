//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiEmailActivationType.java
//

#ifndef _ImActorCoreApiApiEmailActivationType_H_
#define _ImActorCoreApiApiEmailActivationType_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <j2objc/java/lang/Enum.h>

typedef NS_ENUM(NSUInteger, ARApiEmailActivationType) {
  ARApiEmailActivationType_CODE = 0,
  ARApiEmailActivationType_OAUTH2 = 1,
  ARApiEmailActivationType_UNSUPPORTED_VALUE = 2,
};

@interface ARApiEmailActivationTypeEnum : JavaLangEnum < NSCopying >

+ (ARApiEmailActivationTypeEnum *)CODE;

+ (ARApiEmailActivationTypeEnum *)OAUTH2;

+ (ARApiEmailActivationTypeEnum *)UNSUPPORTED_VALUE;

#pragma mark Public

- (jint)getValue;

+ (ARApiEmailActivationTypeEnum *)parseWithInt:(jint)value;

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ARApiEmailActivationTypeEnum_values();

+ (ARApiEmailActivationTypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT ARApiEmailActivationTypeEnum *ARApiEmailActivationTypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ARApiEmailActivationTypeEnum)

FOUNDATION_EXPORT ARApiEmailActivationTypeEnum *ARApiEmailActivationTypeEnum_values_[];

#define ARApiEmailActivationTypeEnum_CODE ARApiEmailActivationTypeEnum_values_[ARApiEmailActivationType_CODE]
J2OBJC_ENUM_CONSTANT_GETTER(ARApiEmailActivationTypeEnum, CODE)

#define ARApiEmailActivationTypeEnum_OAUTH2 ARApiEmailActivationTypeEnum_values_[ARApiEmailActivationType_OAUTH2]
J2OBJC_ENUM_CONSTANT_GETTER(ARApiEmailActivationTypeEnum, OAUTH2)

#define ARApiEmailActivationTypeEnum_UNSUPPORTED_VALUE ARApiEmailActivationTypeEnum_values_[ARApiEmailActivationType_UNSUPPORTED_VALUE]
J2OBJC_ENUM_CONSTANT_GETTER(ARApiEmailActivationTypeEnum, UNSUPPORTED_VALUE)

FOUNDATION_EXPORT ARApiEmailActivationTypeEnum *ARApiEmailActivationTypeEnum_parseWithInt_(jint value);

J2OBJC_TYPE_LITERAL_HEADER(ARApiEmailActivationTypeEnum)

@compatibility_alias ImActorCoreApiApiEmailActivationTypeEnum ARApiEmailActivationTypeEnum;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiEmailActivationType_H_

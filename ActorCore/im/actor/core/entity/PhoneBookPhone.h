//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/PhoneBookPhone.java
//

#ifndef _ImActorCoreEntityPhoneBookPhone_H_
#define _ImActorCoreEntityPhoneBookPhone_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@interface ACPhoneBookPhone : NSObject
@property (readonly, nonatomic) jlong id_;
@property (readonly, nonatomic, getter=getNumber) jlong number;

#pragma mark Public

- (instancetype)initWithLong:(jlong)id_
                    withLong:(jlong)number;

- (jlong)getId;

- (jlong)getNumber;

@end

J2OBJC_EMPTY_STATIC_INIT(ACPhoneBookPhone)

FOUNDATION_EXPORT void ACPhoneBookPhone_initWithLong_withLong_(ACPhoneBookPhone *self, jlong id_, jlong number);

FOUNDATION_EXPORT ACPhoneBookPhone *new_ACPhoneBookPhone_initWithLong_withLong_(jlong id_, jlong number) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACPhoneBookPhone)

@compatibility_alias ImActorCoreEntityPhoneBookPhone ACPhoneBookPhone;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityPhoneBookPhone_H_

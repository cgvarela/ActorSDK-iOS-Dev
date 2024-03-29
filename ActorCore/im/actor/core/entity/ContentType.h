//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContentType.java
//

#ifndef _ImActorCoreEntityContentType_H_
#define _ImActorCoreEntityContentType_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <j2objc/java/lang/Enum.h>

typedef NS_ENUM(NSUInteger, ACContentType) {
  ACContentType_TEXT = 0,
  ACContentType_NONE = 1,
  ACContentType_DOCUMENT = 2,
  ACContentType_DOCUMENT_PHOTO = 3,
  ACContentType_DOCUMENT_VIDEO = 4,
  ACContentType_SERVICE = 5,
  ACContentType_SERVICE_ADD = 6,
  ACContentType_SERVICE_KICK = 7,
  ACContentType_SERVICE_LEAVE = 8,
  ACContentType_SERVICE_REGISTERED = 9,
  ACContentType_SERVICE_CREATED = 10,
  ACContentType_SERVICE_JOINED = 11,
  ACContentType_SERVICE_TITLE = 12,
  ACContentType_SERVICE_AVATAR = 13,
  ACContentType_SERVICE_AVATAR_REMOVED = 14,
  ACContentType_UNKNOWN_CONTENT = 15,
};

@interface ACContentTypeEnum : JavaLangEnum < NSCopying > {
 @public
  jint value_;
}

+ (ACContentTypeEnum *)TEXT;

+ (ACContentTypeEnum *)NONE;

+ (ACContentTypeEnum *)DOCUMENT;

+ (ACContentTypeEnum *)DOCUMENT_PHOTO;

+ (ACContentTypeEnum *)DOCUMENT_VIDEO;

+ (ACContentTypeEnum *)SERVICE;

+ (ACContentTypeEnum *)SERVICE_ADD;

+ (ACContentTypeEnum *)SERVICE_KICK;

+ (ACContentTypeEnum *)SERVICE_LEAVE;

+ (ACContentTypeEnum *)SERVICE_REGISTERED;

+ (ACContentTypeEnum *)SERVICE_CREATED;

+ (ACContentTypeEnum *)SERVICE_JOINED;

+ (ACContentTypeEnum *)SERVICE_TITLE;

+ (ACContentTypeEnum *)SERVICE_AVATAR;

+ (ACContentTypeEnum *)SERVICE_AVATAR_REMOVED;

+ (ACContentTypeEnum *)UNKNOWN_CONTENT;

#pragma mark Public

+ (ACContentTypeEnum *)fromValueWithInt:(jint)value;

- (jint)getValue;

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ACContentTypeEnum_values();

+ (ACContentTypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT ACContentTypeEnum *ACContentTypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ACContentTypeEnum)

FOUNDATION_EXPORT ACContentTypeEnum *ACContentTypeEnum_values_[];

#define ACContentTypeEnum_TEXT ACContentTypeEnum_values_[ACContentType_TEXT]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, TEXT)

#define ACContentTypeEnum_NONE ACContentTypeEnum_values_[ACContentType_NONE]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, NONE)

#define ACContentTypeEnum_DOCUMENT ACContentTypeEnum_values_[ACContentType_DOCUMENT]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, DOCUMENT)

#define ACContentTypeEnum_DOCUMENT_PHOTO ACContentTypeEnum_values_[ACContentType_DOCUMENT_PHOTO]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, DOCUMENT_PHOTO)

#define ACContentTypeEnum_DOCUMENT_VIDEO ACContentTypeEnum_values_[ACContentType_DOCUMENT_VIDEO]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, DOCUMENT_VIDEO)

#define ACContentTypeEnum_SERVICE ACContentTypeEnum_values_[ACContentType_SERVICE]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE)

#define ACContentTypeEnum_SERVICE_ADD ACContentTypeEnum_values_[ACContentType_SERVICE_ADD]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_ADD)

#define ACContentTypeEnum_SERVICE_KICK ACContentTypeEnum_values_[ACContentType_SERVICE_KICK]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_KICK)

#define ACContentTypeEnum_SERVICE_LEAVE ACContentTypeEnum_values_[ACContentType_SERVICE_LEAVE]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_LEAVE)

#define ACContentTypeEnum_SERVICE_REGISTERED ACContentTypeEnum_values_[ACContentType_SERVICE_REGISTERED]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_REGISTERED)

#define ACContentTypeEnum_SERVICE_CREATED ACContentTypeEnum_values_[ACContentType_SERVICE_CREATED]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_CREATED)

#define ACContentTypeEnum_SERVICE_JOINED ACContentTypeEnum_values_[ACContentType_SERVICE_JOINED]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_JOINED)

#define ACContentTypeEnum_SERVICE_TITLE ACContentTypeEnum_values_[ACContentType_SERVICE_TITLE]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_TITLE)

#define ACContentTypeEnum_SERVICE_AVATAR ACContentTypeEnum_values_[ACContentType_SERVICE_AVATAR]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_AVATAR)

#define ACContentTypeEnum_SERVICE_AVATAR_REMOVED ACContentTypeEnum_values_[ACContentType_SERVICE_AVATAR_REMOVED]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, SERVICE_AVATAR_REMOVED)

#define ACContentTypeEnum_UNKNOWN_CONTENT ACContentTypeEnum_values_[ACContentType_UNKNOWN_CONTENT]
J2OBJC_ENUM_CONSTANT_GETTER(ACContentTypeEnum, UNKNOWN_CONTENT)

FOUNDATION_EXPORT ACContentTypeEnum *ACContentTypeEnum_fromValueWithInt_(jint value);

J2OBJC_TYPE_LITERAL_HEADER(ACContentTypeEnum)

@compatibility_alias ImActorCoreEntityContentTypeEnum ACContentTypeEnum;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentType_H_

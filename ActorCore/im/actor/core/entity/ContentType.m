//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContentType.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/ContentType.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

__attribute__((unused)) static void ACContentTypeEnum_initWithInt_withNSString_withInt_(ACContentTypeEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static ACContentTypeEnum *new_ACContentTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContentType.java"

J2OBJC_INITIALIZED_DEFN(ACContentTypeEnum)

ACContentTypeEnum *ACContentTypeEnum_values_[16];


#line 7
@implementation ACContentTypeEnum

+ (ACContentTypeEnum *)TEXT {
  return ACContentTypeEnum_TEXT;
}

+ (ACContentTypeEnum *)NONE {
  return ACContentTypeEnum_NONE;
}

+ (ACContentTypeEnum *)DOCUMENT {
  return ACContentTypeEnum_DOCUMENT;
}

+ (ACContentTypeEnum *)DOCUMENT_PHOTO {
  return ACContentTypeEnum_DOCUMENT_PHOTO;
}

+ (ACContentTypeEnum *)DOCUMENT_VIDEO {
  return ACContentTypeEnum_DOCUMENT_VIDEO;
}

+ (ACContentTypeEnum *)SERVICE {
  return ACContentTypeEnum_SERVICE;
}

+ (ACContentTypeEnum *)SERVICE_ADD {
  return ACContentTypeEnum_SERVICE_ADD;
}

+ (ACContentTypeEnum *)SERVICE_KICK {
  return ACContentTypeEnum_SERVICE_KICK;
}

+ (ACContentTypeEnum *)SERVICE_LEAVE {
  return ACContentTypeEnum_SERVICE_LEAVE;
}

+ (ACContentTypeEnum *)SERVICE_REGISTERED {
  return ACContentTypeEnum_SERVICE_REGISTERED;
}

+ (ACContentTypeEnum *)SERVICE_CREATED {
  return ACContentTypeEnum_SERVICE_CREATED;
}

+ (ACContentTypeEnum *)SERVICE_JOINED {
  return ACContentTypeEnum_SERVICE_JOINED;
}

+ (ACContentTypeEnum *)SERVICE_TITLE {
  return ACContentTypeEnum_SERVICE_TITLE;
}

+ (ACContentTypeEnum *)SERVICE_AVATAR {
  return ACContentTypeEnum_SERVICE_AVATAR;
}

+ (ACContentTypeEnum *)SERVICE_AVATAR_REMOVED {
  return ACContentTypeEnum_SERVICE_AVATAR_REMOVED;
}

+ (ACContentTypeEnum *)UNKNOWN_CONTENT {
  return ACContentTypeEnum_UNKNOWN_CONTENT;
}


#line 26
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  ACContentTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 30
- (jint)getValue {
  return value_;
}

+ (ACContentTypeEnum *)fromValueWithInt:(jint)value {
  return ACContentTypeEnum_fromValueWithInt_(value);
}

IOSObjectArray *ACContentTypeEnum_values() {
  ACContentTypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ACContentTypeEnum_values_ count:16 type:ACContentTypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ACContentTypeEnum_values();
}

+ (ACContentTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ACContentTypeEnum_valueOfWithNSString_(name);
}

ACContentTypeEnum *ACContentTypeEnum_valueOfWithNSString_(NSString *name) {
  ACContentTypeEnum_initialize();
  for (int i = 0; i < 16; i++) {
    ACContentTypeEnum *e = ACContentTypeEnum_values_[i];
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
  if (self == [ACContentTypeEnum class]) {
    ACContentTypeEnum_TEXT = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 8
    2, @"TEXT", 0);
    ACContentTypeEnum_NONE = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 8
    1, @"NONE", 1);
    ACContentTypeEnum_DOCUMENT = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 9
    3, @"DOCUMENT", 2);
    ACContentTypeEnum_DOCUMENT_PHOTO = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 10
    4, @"DOCUMENT_PHOTO", 3);
    ACContentTypeEnum_DOCUMENT_VIDEO = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 11
    5, @"DOCUMENT_VIDEO", 4);
    ACContentTypeEnum_SERVICE = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 12
    6, @"SERVICE", 5);
    ACContentTypeEnum_SERVICE_ADD = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 13
    7, @"SERVICE_ADD", 6);
    ACContentTypeEnum_SERVICE_KICK = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 14
    8, @"SERVICE_KICK", 7);
    ACContentTypeEnum_SERVICE_LEAVE = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 15
    9, @"SERVICE_LEAVE", 8);
    ACContentTypeEnum_SERVICE_REGISTERED = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 16
    10, @"SERVICE_REGISTERED", 9);
    ACContentTypeEnum_SERVICE_CREATED = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 17
    11, @"SERVICE_CREATED", 10);
    ACContentTypeEnum_SERVICE_JOINED = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 18
    16, @"SERVICE_JOINED", 11);
    ACContentTypeEnum_SERVICE_TITLE = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 19
    12, @"SERVICE_TITLE", 12);
    ACContentTypeEnum_SERVICE_AVATAR = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 20
    13, @"SERVICE_AVATAR", 13);
    ACContentTypeEnum_SERVICE_AVATAR_REMOVED = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 21
    14, @"SERVICE_AVATAR_REMOVED", 14);
    ACContentTypeEnum_UNKNOWN_CONTENT = new_ACContentTypeEnum_initWithInt_withNSString_withInt_(
#line 22
    15, @"UNKNOWN_CONTENT", 15);
    J2OBJC_SET_INITIALIZED(ACContentTypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getValue", NULL, "I", 0x1, NULL, NULL },
    { "fromValueWithInt:", "fromValue", "Lim.actor.core.entity.ContentType;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TEXT", "TEXT", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_TEXT, NULL, .constantValue.asLong = 0 },
    { "NONE", "NONE", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_NONE, NULL, .constantValue.asLong = 0 },
    { "DOCUMENT", "DOCUMENT", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_DOCUMENT, NULL, .constantValue.asLong = 0 },
    { "DOCUMENT_PHOTO", "DOCUMENT_PHOTO", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_DOCUMENT_PHOTO, NULL, .constantValue.asLong = 0 },
    { "DOCUMENT_VIDEO", "DOCUMENT_VIDEO", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_DOCUMENT_VIDEO, NULL, .constantValue.asLong = 0 },
    { "SERVICE", "SERVICE", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE, NULL, .constantValue.asLong = 0 },
    { "SERVICE_ADD", "SERVICE_ADD", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_ADD, NULL, .constantValue.asLong = 0 },
    { "SERVICE_KICK", "SERVICE_KICK", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_KICK, NULL, .constantValue.asLong = 0 },
    { "SERVICE_LEAVE", "SERVICE_LEAVE", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_LEAVE, NULL, .constantValue.asLong = 0 },
    { "SERVICE_REGISTERED", "SERVICE_REGISTERED", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_REGISTERED, NULL, .constantValue.asLong = 0 },
    { "SERVICE_CREATED", "SERVICE_CREATED", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_CREATED, NULL, .constantValue.asLong = 0 },
    { "SERVICE_JOINED", "SERVICE_JOINED", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_JOINED, NULL, .constantValue.asLong = 0 },
    { "SERVICE_TITLE", "SERVICE_TITLE", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_TITLE, NULL, .constantValue.asLong = 0 },
    { "SERVICE_AVATAR", "SERVICE_AVATAR", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_AVATAR, NULL, .constantValue.asLong = 0 },
    { "SERVICE_AVATAR_REMOVED", "SERVICE_AVATAR_REMOVED", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_SERVICE_AVATAR_REMOVED, NULL, .constantValue.asLong = 0 },
    { "UNKNOWN_CONTENT", "UNKNOWN_CONTENT", 0x4019, "Lim.actor.core.entity.ContentType;", &ACContentTypeEnum_UNKNOWN_CONTENT, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.entity.ContentType;"};
  static const J2ObjcClassInfo _ACContentTypeEnum = { 2, "ContentType", "im.actor.core.entity", NULL, 0x4011, 2, methods, 17, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/entity/ContentType;>;" };
  return &_ACContentTypeEnum;
}

@end


#line 26
void ACContentTypeEnum_initWithInt_withNSString_withInt_(ACContentTypeEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  
#line 27
  self->value_ = value;
}


#line 26
ACContentTypeEnum *new_ACContentTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  ACContentTypeEnum *self = [ACContentTypeEnum alloc];
  ACContentTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 34
ACContentTypeEnum *ACContentTypeEnum_fromValueWithInt_(jint value) {
  ACContentTypeEnum_initialize();
  
#line 35
  switch (value) {
    default:
    case 1:
    return ACContentTypeEnum_NONE;
    case 2:
    return ACContentTypeEnum_TEXT;
    case 3:
    return ACContentTypeEnum_DOCUMENT;
    case 4:
    return ACContentTypeEnum_DOCUMENT_PHOTO;
    case 5:
    return ACContentTypeEnum_DOCUMENT_VIDEO;
    case 6:
    return ACContentTypeEnum_SERVICE;
    case 7:
    return ACContentTypeEnum_SERVICE_ADD;
    case 8:
    return ACContentTypeEnum_SERVICE_KICK;
    case 9:
    return ACContentTypeEnum_SERVICE_LEAVE;
    case 10:
    return ACContentTypeEnum_SERVICE_REGISTERED;
    case 11:
    return ACContentTypeEnum_SERVICE_CREATED;
    case 12:
    return ACContentTypeEnum_SERVICE_TITLE;
    case 13:
    return ACContentTypeEnum_SERVICE_AVATAR;
    case 14:
    return ACContentTypeEnum_SERVICE_AVATAR_REMOVED;
    case 16:
    return ACContentTypeEnum_SERVICE_JOINED;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContentTypeEnum)

#pragma clang diagnostic pop

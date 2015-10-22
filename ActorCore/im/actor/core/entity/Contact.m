//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Contact.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/entity/Avatar.h"
#include "im/actor/core/entity/Contact.h"
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACContact () {
 @public
  jint uid_;
  jlong sortKey_;
  ACAvatar *avatar_;
  NSString *name_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ACContact, avatar_, ACAvatar *)
J2OBJC_FIELD_SETTER(ACContact, name_, NSString *)

__attribute__((unused)) static void ACContact_init(ACContact *self);

__attribute__((unused)) static ACContact *new_ACContact_init() NS_RETURNS_RETAINED;

@interface ACContact_$1 : NSObject < ARBserCreator >

- (ACContact *)createInstance;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACContact_$1)

__attribute__((unused)) static void ACContact_$1_init(ACContact_$1 *self);

__attribute__((unused)) static ACContact_$1 *new_ACContact_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACContact_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Contact.java"

J2OBJC_INITIALIZED_DEFN(ACContact)

id<ARBserCreator> ACContact_CREATOR_;
NSString *ACContact_ENTITY_NAME_ = @"Contact";


#line 20
@implementation ACContact

@synthesize uid = uid_;
@synthesize avatar = avatar_;
@synthesize name = name_;

+ (id<ARBserCreator>)CREATOR {
  return ACContact_CREATOR_;
}

+ (NSString *)ENTITY_NAME {
  return ACContact_ENTITY_NAME_;
}


#line 42
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)sortKey
               withACAvatar:(ACAvatar *)avatar
               withNSString:(NSString *)name {
  ACContact_initWithInt_withLong_withACAvatar_withNSString_(self, uid, sortKey, avatar, name);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 49
- (instancetype)init {
  ACContact_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 53
- (jint)getUid {
  return uid_;
}


#line 58
- (ACAvatar *)getAvatar {
  return avatar_;
}


#line 63
- (NSString *)getName {
  return name_;
}


#line 68
- (void)parseWithARBserValues:(ARBserValues *)values {
  uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  sortKey_ = [values getLongWithInt:2];
  name_ = [values getStringWithInt:3];
  if ([values optBytesWithInt:4] != nil) {
    avatar_ = new_ACAvatar_initWithByteArray_([values getBytesWithInt:4]);
  }
}


#line 78
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:uid_];
  [writer writeLongWithInt:2 withLong:sortKey_];
  [writer writeStringWithInt:3 withNSString:name_];
  if (avatar_ != nil) {
    [writer writeObjectWithInt:4 withARBserObject:avatar_];
  }
}


#line 88
- (jlong)getEngineId {
  return uid_;
}


#line 93
- (jlong)getEngineSort {
  return sortKey_;
}


#line 98
- (NSString *)getEngineSearch {
  return name_;
}

+ (void)initialize {
  if (self == [ACContact class]) {
    ACContact_CREATOR_ = new_ACContact_$1_init();
    J2OBJC_SET_INITIALIZED(ACContact)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withACAvatar:withNSString:", "Contact", NULL, 0x1, NULL, NULL },
    { "init", "Contact", NULL, 0x2, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getAvatar", NULL, "Lim.actor.core.entity.Avatar;", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getEngineId", NULL, "J", 0x1, NULL, NULL },
    { "getEngineSort", NULL, "J", 0x1, NULL, NULL },
    { "getEngineSearch", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CREATOR_", NULL, 0x19, "Lim.actor.runtime.bser.BserCreator;", &ACContact_CREATOR_, "Lim/actor/runtime/bser/BserCreator<Lim/actor/core/entity/Contact;>;", .constantValue.asLong = 0 },
    { "ENTITY_NAME_", NULL, 0x19, "Ljava.lang.String;", &ACContact_ENTITY_NAME_, NULL, .constantValue.asLong = 0 },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "sortKey_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "avatar_", NULL, 0x2, "Lim.actor.core.entity.Avatar;", NULL, NULL, .constantValue.asLong = 0 },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACContact = { 2, "Contact", "im.actor.core.entity", NULL, 0x1, 10, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACContact;
}

@end


#line 42
void ACContact_initWithInt_withLong_withACAvatar_withNSString_(ACContact *self, jint uid, jlong sortKey, ACAvatar *avatar, NSString *name) {
  (void) ARBserObject_init(self);
  
#line 43
  self->uid_ = uid;
  self->sortKey_ = sortKey;
  self->avatar_ = avatar;
  self->name_ = name;
}


#line 42
ACContact *new_ACContact_initWithInt_withLong_withACAvatar_withNSString_(jint uid, jlong sortKey, ACAvatar *avatar, NSString *name) {
  ACContact *self = [ACContact alloc];
  ACContact_initWithInt_withLong_withACAvatar_withNSString_(self, uid, sortKey, avatar, name);
  return self;
}


#line 49
void ACContact_init(ACContact *self) {
  (void) ARBserObject_init(self);
}


#line 49
ACContact *new_ACContact_init() {
  ACContact *self = [ACContact alloc];
  ACContact_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContact)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Contact.java"

@implementation ACContact_$1


#line 24
- (ACContact *)createInstance {
  return new_ACContact_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACContact_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createInstance", NULL, "Lim.actor.core.entity.Contact;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACContact_$1 = { 2, "", "im.actor.core.entity", "Contact", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/bser/BserCreator<Lim/actor/core/entity/Contact;>;" };
  return &_ACContact_$1;
}

@end

void ACContact_$1_init(ACContact_$1 *self) {
  (void) NSObject_init(self);
}

ACContact_$1 *new_ACContact_$1_init() {
  ACContact_$1 *self = [ACContact_$1 alloc];
  ACContact_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContact_$1)

#pragma clang diagnostic pop
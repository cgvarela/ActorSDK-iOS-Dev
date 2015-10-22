//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiPublicGroup.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiAvatar.h"
#include "im/actor/core/api/ApiPublicGroup.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiPublicGroup () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *title_;
  ARApiAvatar *avatar_;
  jint membersCount_;
  jint friendsCount_;
  NSString *description__;
}

@end

J2OBJC_FIELD_SETTER(ARApiPublicGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(ARApiPublicGroup, avatar_, ARApiAvatar *)
J2OBJC_FIELD_SETTER(ARApiPublicGroup, description__, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiPublicGroup.java"


#line 17
@implementation ARApiPublicGroup


#line 27
- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)title
            withARApiAvatar:(ARApiAvatar *)avatar
                    withInt:(jint)membersCount
                    withInt:(jint)friendsCount
               withNSString:(NSString *)description_ {
  ARApiPublicGroup_initWithInt_withLong_withNSString_withARApiAvatar_withInt_withInt_withNSString_(self, id_, accessHash, title, avatar, membersCount, friendsCount, description_);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 37
- (instancetype)init {
  ARApiPublicGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 41
- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}


#line 50
- (NSString *)getTitle {
  return self->title_;
}


#line 55
- (ARApiAvatar *)getAvatar {
  return self->avatar_;
}

- (jint)getMembersCount {
  return self->membersCount_;
}

- (jint)getFriendsCount {
  return self->friendsCount_;
}


#line 68
- (NSString *)getDescription {
  return self->description__;
}


#line 73
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->id__ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->title_ = [values getStringWithInt:3];
  self->avatar_ = [values optObjWithInt:7 withARBserObject:new_ARApiAvatar_init()];
  self->membersCount_ = [values getIntWithInt:4];
  self->friendsCount_ = [values getIntWithInt:5];
  self->description__ = [values getStringWithInt:6];
}


#line 84
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:7 withARBserObject:self->avatar_];
  }
  [writer writeIntWithInt:4 withInt:self->membersCount_];
  [writer writeIntWithInt:5 withInt:self->friendsCount_];
  if (self->description__ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:6 withNSString:self->description__];
}


#line 103
- (NSString *)description {
  NSString *res = @"struct PublicGroup{";
  (void) JreStrAppendStrong(&res, "$I", @"id=", self->id__);
  (void) JreStrAppendStrong(&res, "$$", @", title=", self->title_);
  (void) JreStrAppendStrong(&res, "$@", @", avatar=", self->avatar_);
  (void) JreStrAppendStrong(&res, "$I", @", membersCount=", self->membersCount_);
  (void) JreStrAppendStrong(&res, "$I", @", friendsCount=", self->friendsCount_);
  (void) JreStrAppendStrong(&res, "$$", @", description=", self->description__);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withNSString:withARApiAvatar:withInt:withInt:withNSString:", "ApiPublicGroup", NULL, 0x1, NULL, NULL },
    { "init", "ApiPublicGroup", NULL, 0x1, NULL, NULL },
    { "getId", NULL, "I", 0x1, NULL, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAvatar", NULL, "Lim.actor.core.api.ApiAvatar;", 0x1, NULL, NULL },
    { "getMembersCount", NULL, "I", 0x1, NULL, NULL },
    { "getFriendsCount", NULL, "I", 0x1, NULL, NULL },
    { "getDescription", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "accessHash_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "avatar_", NULL, 0x2, "Lim.actor.core.api.ApiAvatar;", NULL, NULL, .constantValue.asLong = 0 },
    { "membersCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "friendsCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "description__", "description", 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiPublicGroup = { 2, "ApiPublicGroup", "im.actor.core.api", NULL, 0x1, 12, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiPublicGroup;
}

@end


#line 27
void ARApiPublicGroup_initWithInt_withLong_withNSString_withARApiAvatar_withInt_withInt_withNSString_(ARApiPublicGroup *self, jint id_, jlong accessHash, NSString *title, ARApiAvatar *avatar, jint membersCount, jint friendsCount, NSString *description_) {
  (void) ARBserObject_init(self);
  
#line 28
  self->id__ = id_;
  self->accessHash_ = accessHash;
  self->title_ = title;
  self->avatar_ = avatar;
  self->membersCount_ = membersCount;
  self->friendsCount_ = friendsCount;
  self->description__ = description_;
}


#line 27
ARApiPublicGroup *new_ARApiPublicGroup_initWithInt_withLong_withNSString_withARApiAvatar_withInt_withInt_withNSString_(jint id_, jlong accessHash, NSString *title, ARApiAvatar *avatar, jint membersCount, jint friendsCount, NSString *description_) {
  ARApiPublicGroup *self = [ARApiPublicGroup alloc];
  ARApiPublicGroup_initWithInt_withLong_withNSString_withARApiAvatar_withInt_withInt_withNSString_(self, id_, accessHash, title, avatar, membersCount, friendsCount, description_);
  return self;
}


#line 37
void ARApiPublicGroup_init(ARApiPublicGroup *self) {
  (void) ARBserObject_init(self);
}


#line 37
ARApiPublicGroup *new_ARApiPublicGroup_init() {
  ARApiPublicGroup *self = [ARApiPublicGroup alloc];
  ARApiPublicGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiPublicGroup)

#pragma clang diagnostic pop

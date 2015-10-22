//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiGroup.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiAvatar.h"
#include "im/actor/core/api/ApiExtension.h"
#include "im/actor/core/api/ApiGroup.h"
#include "im/actor/core/api/ApiMember.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiGroup () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *title_;
  ARApiAvatar *avatar_;
  jboolean isMember_;
  jint creatorUid_;
  id<JavaUtilList> members_;
  jlong createDate_;
  JavaLangBoolean *disableEdit_;
  JavaLangBoolean *disableInviteView_;
  JavaLangBoolean *disableInviteRevoke_;
  JavaLangBoolean *disableIntegrationView_;
  JavaLangBoolean *disableIntegrationsRevoke_;
  JavaLangBoolean *isAdmin_;
  NSString *theme_;
  NSString *about_;
  JavaLangBoolean *isHidden_;
  id<JavaUtilList> extensions_;
}

@end

J2OBJC_FIELD_SETTER(ARApiGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(ARApiGroup, avatar_, ARApiAvatar *)
J2OBJC_FIELD_SETTER(ARApiGroup, members_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ARApiGroup, disableEdit_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, disableInviteView_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, disableInviteRevoke_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, disableIntegrationView_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, disableIntegrationsRevoke_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, isAdmin_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, theme_, NSString *)
J2OBJC_FIELD_SETTER(ARApiGroup, about_, NSString *)
J2OBJC_FIELD_SETTER(ARApiGroup, isHidden_, JavaLangBoolean *)
J2OBJC_FIELD_SETTER(ARApiGroup, extensions_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiGroup.java"


#line 17
@implementation ARApiGroup


#line 38
- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)title
            withARApiAvatar:(ARApiAvatar *)avatar
                withBoolean:(jboolean)isMember
                    withInt:(jint)creatorUid
           withJavaUtilList:(id<JavaUtilList>)members
                   withLong:(jlong)createDate
        withJavaLangBoolean:(JavaLangBoolean *)disableEdit
        withJavaLangBoolean:(JavaLangBoolean *)disableInviteView
        withJavaLangBoolean:(JavaLangBoolean *)disableInviteRevoke
        withJavaLangBoolean:(JavaLangBoolean *)disableIntegrationView
        withJavaLangBoolean:(JavaLangBoolean *)disableIntegrationsRevoke
        withJavaLangBoolean:(JavaLangBoolean *)isAdmin
               withNSString:(NSString *)theme
               withNSString:(NSString *)about
        withJavaLangBoolean:(JavaLangBoolean *)isHidden
           withJavaUtilList:(id<JavaUtilList>)extensions {
  ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(self, id_, accessHash, title, avatar, isMember, creatorUid, members, createDate, disableEdit, disableInviteView, disableInviteRevoke, disableIntegrationView, disableIntegrationsRevoke, isAdmin, theme, about, isHidden, extensions);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 59
- (instancetype)init {
  ARApiGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 63
- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}


#line 72
- (NSString *)getTitle {
  return self->title_;
}


#line 77
- (ARApiAvatar *)getAvatar {
  return self->avatar_;
}

- (jboolean)isMember {
  return self->isMember_;
}

- (jint)getCreatorUid {
  return self->creatorUid_;
}


#line 90
- (id<JavaUtilList>)getMembers {
  return self->members_;
}

- (jlong)getCreateDate {
  return self->createDate_;
}


#line 99
- (JavaLangBoolean *)disableEdit {
  return self->disableEdit_;
}


#line 104
- (JavaLangBoolean *)disableInviteView {
  return self->disableInviteView_;
}


#line 109
- (JavaLangBoolean *)disableInviteRevoke {
  return self->disableInviteRevoke_;
}


#line 114
- (JavaLangBoolean *)disableIntegrationView {
  return self->disableIntegrationView_;
}


#line 119
- (JavaLangBoolean *)disableIntegrationsRevoke {
  return self->disableIntegrationsRevoke_;
}


#line 124
- (JavaLangBoolean *)isAdmin {
  return self->isAdmin_;
}


#line 129
- (NSString *)getTheme {
  return self->theme_;
}


#line 134
- (NSString *)getAbout {
  return self->about_;
}


#line 139
- (JavaLangBoolean *)isHidden {
  return self->isHidden_;
}


#line 144
- (id<JavaUtilList>)getExtensions {
  return self->extensions_;
}


#line 149
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->id__ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->title_ = [values getStringWithInt:3];
  self->avatar_ = [values optObjWithInt:4 withARBserObject:new_ARApiAvatar_init()];
  self->isMember_ = [values getBoolWithInt:6];
  self->creatorUid_ = [values getIntWithInt:8];
  id<JavaUtilList> _members = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:9]; i++) {
    [_members addWithId:new_ARApiMember_init()];
  }
  self->members_ = [values getRepeatedObjWithInt:9 withJavaUtilList:_members];
  self->createDate_ = [values getLongWithInt:10];
  self->disableEdit_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:11]);
  self->disableInviteView_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:12]);
  self->disableInviteRevoke_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:13]);
  self->disableIntegrationView_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:14]);
  self->disableIntegrationsRevoke_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:15]);
  self->isAdmin_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:16]);
  self->theme_ = [values optStringWithInt:17];
  self->about_ = [values optStringWithInt:18];
  self->isHidden_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:20]);
  id<JavaUtilList> _extensions = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:21]; i++) {
    [_extensions addWithId:new_ARApiExtension_init()];
  }
  self->extensions_ = [values getRepeatedObjWithInt:21 withJavaUtilList:_extensions];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 182
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:4 withARBserObject:self->avatar_];
  }
  [writer writeBoolWithInt:6 withBoolean:self->isMember_];
  [writer writeIntWithInt:8 withInt:self->creatorUid_];
  [writer writeRepeatedObjWithInt:9 withJavaUtilList:self->members_];
  [writer writeLongWithInt:10 withLong:self->createDate_];
  if (self->disableEdit_ != nil) {
    [writer writeBoolWithInt:11 withBoolean:[self->disableEdit_ booleanValue]];
  }
  if (self->disableInviteView_ != nil) {
    [writer writeBoolWithInt:12 withBoolean:[self->disableInviteView_ booleanValue]];
  }
  if (self->disableInviteRevoke_ != nil) {
    [writer writeBoolWithInt:13 withBoolean:[self->disableInviteRevoke_ booleanValue]];
  }
  if (self->disableIntegrationView_ != nil) {
    [writer writeBoolWithInt:14 withBoolean:[self->disableIntegrationView_ booleanValue]];
  }
  if (self->disableIntegrationsRevoke_ != nil) {
    [writer writeBoolWithInt:15 withBoolean:[self->disableIntegrationsRevoke_ booleanValue]];
  }
  if (self->isAdmin_ != nil) {
    [writer writeBoolWithInt:16 withBoolean:[self->isAdmin_ booleanValue]];
  }
  if (self->theme_ != nil) {
    [writer writeStringWithInt:17 withNSString:self->theme_];
  }
  if (self->about_ != nil) {
    [writer writeStringWithInt:18 withNSString:self->about_];
  }
  if (self->isHidden_ != nil) {
    [writer writeBoolWithInt:20 withBoolean:[self->isHidden_ booleanValue]];
  }
  [writer writeRepeatedObjWithInt:21 withJavaUtilList:self->extensions_];
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 234
- (NSString *)description {
  NSString *res = @"struct Group{";
  (void) JreStrAppendStrong(&res, "$I", @"id=", self->id__);
  (void) JreStrAppendStrong(&res, "$$", @", avatar=", (self->avatar_ != nil ? @"set" : @"empty"));
  (void) JreStrAppendStrong(&res, "$Z", @", isMember=", self->isMember_);
  (void) JreStrAppendStrong(&res, "$I", @", members=", [((id<JavaUtilList>) nil_chk(self->members_)) size]);
  (void) JreStrAppendStrong(&res, "$J", @", createDate=", self->createDate_);
  (void) JreStrAppendStrong(&res, "$@", @", disableEdit=", self->disableEdit_);
  (void) JreStrAppendStrong(&res, "$@", @", disableInviteView=", self->disableInviteView_);
  (void) JreStrAppendStrong(&res, "$@", @", disableIntegrationView=", self->disableIntegrationView_);
  (void) JreStrAppendStrong(&res, "$@", @", extensions=", self->extensions_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withNSString:withARApiAvatar:withBoolean:withInt:withJavaUtilList:withLong:withJavaLangBoolean:withJavaLangBoolean:withJavaLangBoolean:withJavaLangBoolean:withJavaLangBoolean:withJavaLangBoolean:withNSString:withNSString:withJavaLangBoolean:withJavaUtilList:", "ApiGroup", NULL, 0x1, NULL, NULL },
    { "init", "ApiGroup", NULL, 0x1, NULL, NULL },
    { "getId", NULL, "I", 0x1, NULL, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAvatar", NULL, "Lim.actor.core.api.ApiAvatar;", 0x1, NULL, NULL },
    { "isMember", NULL, "Z", 0x1, NULL, NULL },
    { "getCreatorUid", NULL, "I", 0x1, NULL, NULL },
    { "getMembers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getCreateDate", NULL, "J", 0x1, NULL, NULL },
    { "disableEdit", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "disableInviteView", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "disableInviteRevoke", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "disableIntegrationView", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "disableIntegrationsRevoke", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "isAdmin", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "getTheme", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAbout", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isHidden", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "getExtensions", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "accessHash_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "avatar_", NULL, 0x2, "Lim.actor.core.api.ApiAvatar;", NULL, NULL, .constantValue.asLong = 0 },
    { "isMember_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "creatorUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "members_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiMember;>;", .constantValue.asLong = 0 },
    { "createDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "disableEdit_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "disableInviteView_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "disableInviteRevoke_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "disableIntegrationView_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "disableIntegrationsRevoke_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "isAdmin_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "theme_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "about_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "isHidden_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
    { "extensions_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiExtension;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiGroup = { 2, "ApiGroup", "im.actor.core.api", NULL, 0x1, 23, methods, 18, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiGroup;
}

@end


#line 38
void ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(ARApiGroup *self, jint id_, jlong accessHash, NSString *title, ARApiAvatar *avatar, jboolean isMember, jint creatorUid, id<JavaUtilList> members, jlong createDate, JavaLangBoolean *disableEdit, JavaLangBoolean *disableInviteView, JavaLangBoolean *disableInviteRevoke, JavaLangBoolean *disableIntegrationView, JavaLangBoolean *disableIntegrationsRevoke, JavaLangBoolean *isAdmin, NSString *theme, NSString *about, JavaLangBoolean *isHidden, id<JavaUtilList> extensions) {
  (void) ARBserObject_init(self);
  
#line 39
  self->id__ = id_;
  self->accessHash_ = accessHash;
  self->title_ = title;
  self->avatar_ = avatar;
  self->isMember_ = isMember;
  self->creatorUid_ = creatorUid;
  self->members_ = members;
  self->createDate_ = createDate;
  self->disableEdit_ = disableEdit;
  self->disableInviteView_ = disableInviteView;
  self->disableInviteRevoke_ = disableInviteRevoke;
  self->disableIntegrationView_ = disableIntegrationView;
  self->disableIntegrationsRevoke_ = disableIntegrationsRevoke;
  self->isAdmin_ = isAdmin;
  self->theme_ = theme;
  self->about_ = about;
  self->isHidden_ = isHidden;
  self->extensions_ = extensions;
}


#line 38
ARApiGroup *new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(jint id_, jlong accessHash, NSString *title, ARApiAvatar *avatar, jboolean isMember, jint creatorUid, id<JavaUtilList> members, jlong createDate, JavaLangBoolean *disableEdit, JavaLangBoolean *disableInviteView, JavaLangBoolean *disableInviteRevoke, JavaLangBoolean *disableIntegrationView, JavaLangBoolean *disableIntegrationsRevoke, JavaLangBoolean *isAdmin, NSString *theme, NSString *about, JavaLangBoolean *isHidden, id<JavaUtilList> extensions) {
  ARApiGroup *self = [ARApiGroup alloc];
  ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(self, id_, accessHash, title, avatar, isMember, creatorUid, members, createDate, disableEdit, disableInviteView, disableInviteRevoke, disableIntegrationView, disableIntegrationsRevoke, isAdmin, theme, about, isHidden, extensions);
  return self;
}


#line 59
void ARApiGroup_init(ARApiGroup *self) {
  (void) ARBserObject_init(self);
}


#line 59
ARApiGroup *new_ARApiGroup_init() {
  ARApiGroup *self = [ARApiGroup alloc];
  ARApiGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiGroup)

#pragma clang diagnostic pop

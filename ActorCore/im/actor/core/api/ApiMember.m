//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiMember.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiMember.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Boolean.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiMember () {
 @public
  jint uid_;
  jint inviterUid_;
  jlong date_;
  JavaLangBoolean *isAdmin_;
}

@end

J2OBJC_FIELD_SETTER(ARApiMember, isAdmin_, JavaLangBoolean *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiMember.java"


#line 17
@implementation ARApiMember


#line 24
- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date
        withJavaLangBoolean:(JavaLangBoolean *)isAdmin {
  ARApiMember_initWithInt_withInt_withLong_withJavaLangBoolean_(self, uid, inviterUid, date, isAdmin);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARApiMember_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 35
- (jint)getUid {
  return self->uid_;
}

- (jint)getInviterUid {
  return self->inviterUid_;
}

- (jlong)getDate {
  return self->date_;
}


#line 48
- (JavaLangBoolean *)isAdmin {
  return self->isAdmin_;
}


#line 53
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->inviterUid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:3];
  self->isAdmin_ = JavaLangBoolean_valueOfWithBoolean_([values optBoolWithInt:4]);
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 64
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeIntWithInt:2 withInt:self->inviterUid_];
  [writer writeLongWithInt:3 withLong:self->date_];
  if (self->isAdmin_ != nil) {
    [writer writeBoolWithInt:4 withBoolean:[self->isAdmin_ booleanValue]];
  }
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 81
- (NSString *)description {
  NSString *res = @"struct Member{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$I", @", inviterUid=", self->inviterUid_);
  (void) JreStrAppendStrong(&res, "$J", @", date=", self->date_);
  (void) JreStrAppendStrong(&res, "$@", @", isAdmin=", self->isAdmin_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withLong:withJavaLangBoolean:", "ApiMember", NULL, 0x1, NULL, NULL },
    { "init", "ApiMember", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getInviterUid", NULL, "I", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "isAdmin", NULL, "Ljava.lang.Boolean;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inviterUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "isAdmin_", NULL, 0x2, "Ljava.lang.Boolean;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiMember = { 2, "ApiMember", "im.actor.core.api", NULL, 0x1, 9, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiMember;
}

@end


#line 24
void ARApiMember_initWithInt_withInt_withLong_withJavaLangBoolean_(ARApiMember *self, jint uid, jint inviterUid, jlong date, JavaLangBoolean *isAdmin) {
  (void) ARBserObject_init(self);
  
#line 25
  self->uid_ = uid;
  self->inviterUid_ = inviterUid;
  self->date_ = date;
  self->isAdmin_ = isAdmin;
}


#line 24
ARApiMember *new_ARApiMember_initWithInt_withInt_withLong_withJavaLangBoolean_(jint uid, jint inviterUid, jlong date, JavaLangBoolean *isAdmin) {
  ARApiMember *self = [ARApiMember alloc];
  ARApiMember_initWithInt_withInt_withLong_withJavaLangBoolean_(self, uid, inviterUid, date, isAdmin);
  return self;
}


#line 31
void ARApiMember_init(ARApiMember *self) {
  (void) ARBserObject_init(self);
}


#line 31
ARApiMember *new_ARApiMember_init() {
  ARApiMember *self = [ARApiMember alloc];
  ARApiMember_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiMember)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/GroupMember.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/GroupMember.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACGroupMember () {
 @public
  jint uid_;
  jint inviterUid_;
  jlong inviteDate_;
  jboolean isAdministrator_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/GroupMember.java"


#line 9
@implementation ACGroupMember

@synthesize uid = uid_;
@synthesize inviterUid = inviterUid_;
@synthesize inviteDate = inviteDate_;
@synthesize isAdministrator = isAdministrator_;


#line 23
- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)inviteDate
                withBoolean:(jboolean)isAdministrator {
  ACGroupMember_initWithInt_withInt_withLong_withBoolean_(self, uid, inviterUid, inviteDate, isAdministrator);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ACGroupMember_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 35
- (jint)getUid {
  return uid_;
}

- (jint)getInviterUid {
  return inviterUid_;
}

- (jlong)getInviteDate {
  return inviteDate_;
}

- (jboolean)isAdministrator {
  return isAdministrator_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withLong:withBoolean:", "GroupMember", NULL, 0x1, NULL, NULL },
    { "init", "GroupMember", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getInviterUid", NULL, "I", 0x1, NULL, NULL },
    { "getInviteDate", NULL, "J", 0x1, NULL, NULL },
    { "isAdministrator", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inviterUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "inviteDate_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "isAdministrator_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACGroupMember = { 2, "GroupMember", "im.actor.core.entity", NULL, 0x1, 6, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACGroupMember;
}

@end


#line 23
void ACGroupMember_initWithInt_withInt_withLong_withBoolean_(ACGroupMember *self, jint uid, jint inviterUid, jlong inviteDate, jboolean isAdministrator) {
  (void) NSObject_init(self);
  self->uid_ = uid;
  self->inviterUid_ = inviterUid;
  self->inviteDate_ = inviteDate;
  self->isAdministrator_ = isAdministrator;
}


#line 23
ACGroupMember *new_ACGroupMember_initWithInt_withInt_withLong_withBoolean_(jint uid, jint inviterUid, jlong inviteDate, jboolean isAdministrator) {
  ACGroupMember *self = [ACGroupMember alloc];
  ACGroupMember_initWithInt_withInt_withLong_withBoolean_(self, uid, inviterUid, inviteDate, isAdministrator);
  return self;
}


#line 31
void ACGroupMember_init(ACGroupMember *self) {
  (void) NSObject_init(self);
}


#line 31
ACGroupMember *new_ACGroupMember_init() {
  ACGroupMember *self = [ACGroupMember alloc];
  ACGroupMember_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACGroupMember)

#pragma clang diagnostic pop

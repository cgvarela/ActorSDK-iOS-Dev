//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceExUserInvited.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiServiceEx.h"
#include "im/actor/core/api/ApiServiceExUserInvited.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiServiceExUserInvited () {
 @public
  jint invitedUid_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceExUserInvited.java"


#line 17
@implementation ARApiServiceExUserInvited


#line 21
- (instancetype)initWithInt:(jint)invitedUid {
  ARApiServiceExUserInvited_initWithInt_(self, invitedUid);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  ARApiServiceExUserInvited_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 29
- (jint)getHeader {
  return 1;
}

- (jint)getInvitedUid {
  return self->invitedUid_;
}


#line 38
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->invitedUid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->invitedUid_];
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 58
- (NSString *)description {
  NSString *res = @"struct ServiceExUserInvited{";
  (void) JreStrAppendStrong(&res, "$I", @"invitedUid=", self->invitedUid_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "ApiServiceExUserInvited", NULL, 0x1, NULL, NULL },
    { "init", "ApiServiceExUserInvited", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "getInvitedUid", NULL, "I", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "invitedUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiServiceExUserInvited = { 2, "ApiServiceExUserInvited", "im.actor.core.api", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiServiceExUserInvited;
}

@end


#line 21
void ARApiServiceExUserInvited_initWithInt_(ARApiServiceExUserInvited *self, jint invitedUid) {
  (void) ARApiServiceEx_init(self);
  
#line 22
  self->invitedUid_ = invitedUid;
}


#line 21
ARApiServiceExUserInvited *new_ARApiServiceExUserInvited_initWithInt_(jint invitedUid) {
  ARApiServiceExUserInvited *self = [ARApiServiceExUserInvited alloc];
  ARApiServiceExUserInvited_initWithInt_(self, invitedUid);
  return self;
}


#line 25
void ARApiServiceExUserInvited_init(ARApiServiceExUserInvited *self) {
  (void) ARApiServiceEx_init(self);
}


#line 25
ARApiServiceExUserInvited *new_ARApiServiceExUserInvited_init() {
  ARApiServiceExUserInvited *self = [ARApiServiceExUserInvited alloc];
  ARApiServiceExUserInvited_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiServiceExUserInvited)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupUserKicked.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/api/ApiServiceEx.h"
#include "im/actor/core/api/ApiServiceExUserKicked.h"
#include "im/actor/core/api/ApiServiceMessage.h"
#include "im/actor/core/entity/content/ServiceContent.h"
#include "im/actor/core/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/core/entity/content/internal/ContentRemoteContainer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACServiceGroupUserKicked () {
 @public
  jint kickedUid_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupUserKicked.java"


#line 11
@implementation ACServiceGroupUserKicked

+ (ACServiceGroupUserKicked *)createWithInt:(jint)uid {
  return ACServiceGroupUserKicked_createWithInt_(uid);
}


#line 20
- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)contentContainer {
  ACServiceGroupUserKicked_initWithACContentRemoteContainer_(self, contentContainer);
  return self;
}


#line 27
- (jint)getKickedUid {
  return kickedUid_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithInt:", "create", "Lim.actor.core.entity.content.ServiceGroupUserKicked;", 0x9, NULL, NULL },
    { "initWithACContentRemoteContainer:", "ServiceGroupUserKicked", NULL, 0x1, NULL, NULL },
    { "getKickedUid", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "kickedUid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACServiceGroupUserKicked = { 2, "ServiceGroupUserKicked", "im.actor.core.entity.content", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACServiceGroupUserKicked;
}

@end


#line 13
ACServiceGroupUserKicked *ACServiceGroupUserKicked_createWithInt_(jint uid) {
  ACServiceGroupUserKicked_initialize();
  
#line 14
  return new_ACServiceGroupUserKicked_initWithACContentRemoteContainer_(new_ACContentRemoteContainer_initWithARApiMessage_(new_ARApiServiceMessage_initWithNSString_withARApiServiceEx_(
#line 15
  @"User kicked", new_ARApiServiceExUserKicked_initWithInt_(uid))));
}


#line 20
void ACServiceGroupUserKicked_initWithACContentRemoteContainer_(ACServiceGroupUserKicked *self, ACContentRemoteContainer *contentContainer) {
  (void) ACServiceContent_initWithACContentRemoteContainer_(self, contentContainer);
  
#line 23
  ARApiServiceMessage *serviceMessage = (ARApiServiceMessage *) check_class_cast([((ACContentRemoteContainer *) nil_chk(contentContainer)) getMessage], [ARApiServiceMessage class]);
  self->kickedUid_ = [((ARApiServiceExUserKicked *) nil_chk(((ARApiServiceExUserKicked *) check_class_cast([((ARApiServiceMessage *) nil_chk(serviceMessage)) getExt], [ARApiServiceExUserKicked class])))) getKickedUid];
}


#line 20
ACServiceGroupUserKicked *new_ACServiceGroupUserKicked_initWithACContentRemoteContainer_(ACContentRemoteContainer *contentContainer) {
  ACServiceGroupUserKicked *self = [ACServiceGroupUserKicked alloc];
  ACServiceGroupUserKicked_initWithACContentRemoteContainer_(self, contentContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACServiceGroupUserKicked)

#pragma clang diagnostic pop

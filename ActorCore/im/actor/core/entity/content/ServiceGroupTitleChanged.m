//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupTitleChanged.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/api/ApiServiceEx.h"
#include "im/actor/core/api/ApiServiceExChangedTitle.h"
#include "im/actor/core/api/ApiServiceMessage.h"
#include "im/actor/core/entity/content/ServiceContent.h"
#include "im/actor/core/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/core/entity/content/internal/ContentRemoteContainer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACServiceGroupTitleChanged () {
 @public
  NSString *newTitle_;
}

@end

J2OBJC_FIELD_SETTER(ACServiceGroupTitleChanged, newTitle_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupTitleChanged.java"


#line 11
@implementation ACServiceGroupTitleChanged

+ (ACServiceGroupTitleChanged *)createWithNSString:(NSString *)title {
  return ACServiceGroupTitleChanged_createWithNSString_(title);
}


#line 20
- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)remoteContainer {
  ACServiceGroupTitleChanged_initWithACContentRemoteContainer_(self, remoteContainer);
  return self;
}


#line 26
- (NSString *)getNewTitle {
  return newTitle_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithNSString:", "create", "Lim.actor.core.entity.content.ServiceGroupTitleChanged;", 0x9, NULL, NULL },
    { "initWithACContentRemoteContainer:", "ServiceGroupTitleChanged", NULL, 0x1, NULL, NULL },
    { "getNewTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "newTitle_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACServiceGroupTitleChanged = { 2, "ServiceGroupTitleChanged", "im.actor.core.entity.content", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACServiceGroupTitleChanged;
}

@end


#line 13
ACServiceGroupTitleChanged *ACServiceGroupTitleChanged_createWithNSString_(NSString *title) {
  ACServiceGroupTitleChanged_initialize();
  
#line 14
  return new_ACServiceGroupTitleChanged_initWithACContentRemoteContainer_(new_ACContentRemoteContainer_initWithARApiMessage_(new_ARApiServiceMessage_initWithNSString_withARApiServiceEx_(
#line 15
  @"Title changed", new_ARApiServiceExChangedTitle_initWithNSString_(title))));
}


#line 20
void ACServiceGroupTitleChanged_initWithACContentRemoteContainer_(ACServiceGroupTitleChanged *self, ACContentRemoteContainer *remoteContainer) {
  (void) ACServiceContent_initWithACContentRemoteContainer_(self, remoteContainer);
  ARApiServiceMessage *serviceMessage = (ARApiServiceMessage *) check_class_cast([((ACContentRemoteContainer *) nil_chk(remoteContainer)) getMessage], [ARApiServiceMessage class]);
  self->newTitle_ = [((ARApiServiceExChangedTitle *) nil_chk(((ARApiServiceExChangedTitle *) check_class_cast([((ARApiServiceMessage *) nil_chk(serviceMessage)) getExt], [ARApiServiceExChangedTitle class])))) getTitle];
}


#line 20
ACServiceGroupTitleChanged *new_ACServiceGroupTitleChanged_initWithACContentRemoteContainer_(ACContentRemoteContainer *remoteContainer) {
  ACServiceGroupTitleChanged *self = [ACServiceGroupTitleChanged alloc];
  ACServiceGroupTitleChanged_initWithACContentRemoteContainer_(self, remoteContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACServiceGroupTitleChanged)

#pragma clang diagnostic pop

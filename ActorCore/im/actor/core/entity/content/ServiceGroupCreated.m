//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupCreated.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiServiceExGroupCreated.h"
#include "im/actor/core/api/ApiServiceMessage.h"
#include "im/actor/core/entity/content/ServiceContent.h"
#include "im/actor/core/entity/content/ServiceGroupCreated.h"
#include "im/actor/core/entity/content/internal/ContentRemoteContainer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/ServiceGroupCreated.java"


#line 11
@implementation ACServiceGroupCreated

+ (ACServiceGroupCreated *)create {
  return ACServiceGroupCreated_create();
}


#line 18
- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)contentContainer {
  ACServiceGroupCreated_initWithACContentRemoteContainer_(self, contentContainer);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.core.entity.content.ServiceGroupCreated;", 0x9, NULL, NULL },
    { "initWithACContentRemoteContainer:", "ServiceGroupCreated", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACServiceGroupCreated = { 2, "ServiceGroupCreated", "im.actor.core.entity.content", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACServiceGroupCreated;
}

@end


#line 13
ACServiceGroupCreated *ACServiceGroupCreated_create() {
  ACServiceGroupCreated_initialize();
  
#line 14
  return new_ACServiceGroupCreated_initWithACContentRemoteContainer_(new_ACContentRemoteContainer_initWithARApiMessage_(new_ARApiServiceMessage_initWithNSString_withARApiServiceEx_(@"Group created", new_ARApiServiceExGroupCreated_init())));
}


#line 18
void ACServiceGroupCreated_initWithACContentRemoteContainer_(ACServiceGroupCreated *self, ACContentRemoteContainer *contentContainer) {
  (void) ACServiceContent_initWithACContentRemoteContainer_(self, contentContainer);
}


#line 18
ACServiceGroupCreated *new_ACServiceGroupCreated_initWithACContentRemoteContainer_(ACContentRemoteContainer *contentContainer) {
  ACServiceGroupCreated *self = [ACServiceGroupCreated alloc];
  ACServiceGroupCreated_initWithACContentRemoteContainer_(self, contentContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACServiceGroupCreated)

#pragma clang diagnostic pop

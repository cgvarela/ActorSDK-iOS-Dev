//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/internal/ContentRemoteContainer.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/entity/content/internal/AbsContentContainer.h"
#include "im/actor/core/entity/content/internal/ContentRemoteContainer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACContentRemoteContainer () {
 @public
  ARApiMessage *message_;
}

@end

J2OBJC_FIELD_SETTER(ACContentRemoteContainer, message_, ARApiMessage *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/internal/ContentRemoteContainer.java"


#line 9
@implementation ACContentRemoteContainer


#line 12
- (instancetype)initWithARApiMessage:(ARApiMessage *)message {
  ACContentRemoteContainer_initWithARApiMessage_(self, message);
  return self;
}


#line 16
- (ARApiMessage *)getMessage {
  return message_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARApiMessage:", "ContentRemoteContainer", NULL, 0x1, NULL, NULL },
    { "getMessage", NULL, "Lim.actor.core.api.ApiMessage;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "message_", NULL, 0x2, "Lim.actor.core.api.ApiMessage;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACContentRemoteContainer = { 2, "ContentRemoteContainer", "im.actor.core.entity.content.internal", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACContentRemoteContainer;
}

@end


#line 12
void ACContentRemoteContainer_initWithARApiMessage_(ACContentRemoteContainer *self, ARApiMessage *message) {
  (void) ACAbsContentContainer_init(self);
  
#line 13
  self->message_ = message;
}


#line 12
ACContentRemoteContainer *new_ACContentRemoteContainer_initWithARApiMessage_(ARApiMessage *message) {
  ACContentRemoteContainer *self = [ACContentRemoteContainer alloc];
  ACContentRemoteContainer_initWithARApiMessage_(self, message);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContentRemoteContainer)

#pragma clang diagnostic pop
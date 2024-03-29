//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/RelatedResponse.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/modules/updates/internal/InternalUpdate.h"
#include "im/actor/core/modules/updates/internal/RelatedResponse.h"
#include <j2objc/java/lang/Runnable.h>
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACRelatedResponse () {
 @public
  id<JavaUtilList> relatedUsers_;
  id<JavaUtilList> relatedGroups_;
  id<JavaLangRunnable> afterApply_;
}

@end

J2OBJC_FIELD_SETTER(ACRelatedResponse, relatedUsers_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ACRelatedResponse, relatedGroups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ACRelatedResponse, afterApply_, id<JavaLangRunnable>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/RelatedResponse.java"


#line 9
@implementation ACRelatedResponse


#line 15
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)relatedUsers
                    withJavaUtilList:(id<JavaUtilList>)relatedGroups
                withJavaLangRunnable:(id<JavaLangRunnable>)afterApply {
  ACRelatedResponse_initWithJavaUtilList_withJavaUtilList_withJavaLangRunnable_(self, relatedUsers, relatedGroups, afterApply);
  return self;
}


#line 21
- (id<JavaUtilList>)getRelatedUsers {
  return relatedUsers_;
}

- (id<JavaUtilList>)getRelatedGroups {
  return relatedGroups_;
}

- (id<JavaLangRunnable>)getAfterApply {
  return afterApply_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:withJavaUtilList:withJavaLangRunnable:", "RelatedResponse", NULL, 0x1, NULL, NULL },
    { "getRelatedUsers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getRelatedGroups", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getAfterApply", NULL, "Ljava.lang.Runnable;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "relatedUsers_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiUser;>;", .constantValue.asLong = 0 },
    { "relatedGroups_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiGroup;>;", .constantValue.asLong = 0 },
    { "afterApply_", NULL, 0x2, "Ljava.lang.Runnable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACRelatedResponse = { 2, "RelatedResponse", "im.actor.core.modules.updates.internal", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACRelatedResponse;
}

@end


#line 15
void ACRelatedResponse_initWithJavaUtilList_withJavaUtilList_withJavaLangRunnable_(ACRelatedResponse *self, id<JavaUtilList> relatedUsers, id<JavaUtilList> relatedGroups, id<JavaLangRunnable> afterApply) {
  (void) ACInternalUpdate_init(self);
  
#line 16
  self->relatedUsers_ = relatedUsers;
  self->relatedGroups_ = relatedGroups;
  self->afterApply_ = afterApply;
}


#line 15
ACRelatedResponse *new_ACRelatedResponse_initWithJavaUtilList_withJavaUtilList_withJavaLangRunnable_(id<JavaUtilList> relatedUsers, id<JavaUtilList> relatedGroups, id<JavaLangRunnable> afterApply) {
  ACRelatedResponse *self = [ACRelatedResponse alloc];
  ACRelatedResponse_initWithJavaUtilList_withJavaUtilList_withJavaLangRunnable_(self, relatedUsers, relatedGroups, afterApply);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACRelatedResponse)

#pragma clang diagnostic pop

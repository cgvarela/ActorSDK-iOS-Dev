//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiObjectPatch.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiObjectPatch.h"
#include "im/actor/core/api/ApiRule.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiObjectPatch () {
 @public
  id<JavaUtilList> rules_;
}

@end

J2OBJC_FIELD_SETTER(ARApiObjectPatch, rules_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiObjectPatch.java"


#line 17
@implementation ARApiObjectPatch


#line 21
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)rules {
  ARApiObjectPatch_initWithJavaUtilList_(self, rules);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  ARApiObjectPatch_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 30
- (id<JavaUtilList>)getRules {
  return self->rules_;
}


#line 35
- (void)parseWithARBserValues:(ARBserValues *)values {
  id<JavaUtilList> _rules = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_rules addWithId:new_ARApiRule_init()];
  }
  self->rules_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_rules];
}


#line 44
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->rules_];
}


#line 49
- (NSString *)description {
  NSString *res = @"struct ObjectPatch{";
  (void) JreStrAppendStrong(&res, "$@", @"rules=", self->rules_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilList:", "ApiObjectPatch", NULL, 0x1, NULL, NULL },
    { "init", "ApiObjectPatch", NULL, 0x1, NULL, NULL },
    { "getRules", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "rules_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiRule;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiObjectPatch = { 2, "ApiObjectPatch", "im.actor.core.api", NULL, 0x1, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiObjectPatch;
}

@end


#line 21
void ARApiObjectPatch_initWithJavaUtilList_(ARApiObjectPatch *self, id<JavaUtilList> rules) {
  (void) ARBserObject_init(self);
  
#line 22
  self->rules_ = rules;
}


#line 21
ARApiObjectPatch *new_ARApiObjectPatch_initWithJavaUtilList_(id<JavaUtilList> rules) {
  ARApiObjectPatch *self = [ARApiObjectPatch alloc];
  ARApiObjectPatch_initWithJavaUtilList_(self, rules);
  return self;
}


#line 25
void ARApiObjectPatch_init(ARApiObjectPatch *self) {
  (void) ARBserObject_init(self);
}


#line 25
ARApiObjectPatch *new_ARApiObjectPatch_init() {
  ARApiObjectPatch *self = [ARApiObjectPatch alloc];
  ARApiObjectPatch_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiObjectPatch)

#pragma clang diagnostic pop

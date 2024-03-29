//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetPublicGroups.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiPublicGroup.h"
#include "im/actor/core/api/rpc/ResponseGetPublicGroups.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARResponseGetPublicGroups () {
 @public
  id<JavaUtilList> groups_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseGetPublicGroups, groups_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetPublicGroups.java"


#line 18
@implementation ARResponseGetPublicGroups

+ (jint)HEADER {
  return ARResponseGetPublicGroups_HEADER;
}


#line 21
+ (ARResponseGetPublicGroups *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseGetPublicGroups_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups {
  ARResponseGetPublicGroups_initWithJavaUtilList_(self, groups);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARResponseGetPublicGroups_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (id<JavaUtilList>)getGroups {
  return self->groups_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_groups addWithId:new_ARApiPublicGroup_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_groups];
}


#line 50
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->groups_];
}


#line 55
- (NSString *)description {
  NSString *res = @"tuple GetPublicGroups{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARResponseGetPublicGroups_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseGetPublicGroups;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithJavaUtilList:", "ResponseGetPublicGroups", NULL, 0x1, NULL, NULL },
    { "init", "ResponseGetPublicGroups", NULL, 0x1, NULL, NULL },
    { "getGroups", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseGetPublicGroups_HEADER },
    { "groups_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiPublicGroup;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseGetPublicGroups = { 2, "ResponseGetPublicGroups", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseGetPublicGroups;
}

@end


#line 21
ARResponseGetPublicGroups *ARResponseGetPublicGroups_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseGetPublicGroups_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseGetPublicGroups_init(), data);
}


#line 27
void ARResponseGetPublicGroups_initWithJavaUtilList_(ARResponseGetPublicGroups *self, id<JavaUtilList> groups) {
  (void) ACResponse_init(self);
  
#line 28
  self->groups_ = groups;
}


#line 27
ARResponseGetPublicGroups *new_ARResponseGetPublicGroups_initWithJavaUtilList_(id<JavaUtilList> groups) {
  ARResponseGetPublicGroups *self = [ARResponseGetPublicGroups alloc];
  ARResponseGetPublicGroups_initWithJavaUtilList_(self, groups);
  return self;
}


#line 31
void ARResponseGetPublicGroups_init(ARResponseGetPublicGroups *self) {
  (void) ACResponse_init(self);
}


#line 31
ARResponseGetPublicGroups *new_ARResponseGetPublicGroups_init() {
  ARResponseGetPublicGroups *self = [ARResponseGetPublicGroups alloc];
  ARResponseGetPublicGroups_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseGetPublicGroups)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseLoadGroupedDialogs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiDialogGroup.h"
#include "im/actor/core/api/ApiGroup.h"
#include "im/actor/core/api/ApiUser.h"
#include "im/actor/core/api/rpc/ResponseLoadGroupedDialogs.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARResponseLoadGroupedDialogs () {
 @public
  id<JavaUtilList> dialogs_;
  id<JavaUtilList> users_;
  id<JavaUtilList> groups_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseLoadGroupedDialogs, dialogs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ARResponseLoadGroupedDialogs, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ARResponseLoadGroupedDialogs, groups_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseLoadGroupedDialogs.java"


#line 18
@implementation ARResponseLoadGroupedDialogs

+ (jint)HEADER {
  return ARResponseLoadGroupedDialogs_HEADER;
}


#line 21
+ (ARResponseLoadGroupedDialogs *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseLoadGroupedDialogs_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)dialogs
                    withJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)groups {
  ARResponseLoadGroupedDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(self, dialogs, users, groups);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARResponseLoadGroupedDialogs_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (id<JavaUtilList>)getDialogs {
  return self->dialogs_;
}


#line 45
- (id<JavaUtilList>)getUsers {
  return self->users_;
}


#line 50
- (id<JavaUtilList>)getGroups {
  return self->groups_;
}


#line 55
- (void)parseWithARBserValues:(ARBserValues *)values {
  id<JavaUtilList> _dialogs = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_dialogs addWithId:new_ARApiDialogGroup_init()];
  }
  self->dialogs_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_dialogs];
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:2]; i++) {
    [_users addWithId:new_ARApiUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:2 withJavaUtilList:_users];
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:3]; i++) {
    [_groups addWithId:new_ARApiGroup_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:3 withJavaUtilList:_groups];
}


#line 74
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->dialogs_];
  [writer writeRepeatedObjWithInt:2 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:3 withJavaUtilList:self->groups_];
}


#line 81
- (NSString *)description {
  NSString *res = @"tuple LoadGroupedDialogs{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 88
- (jint)getHeaderKey {
  return ARResponseLoadGroupedDialogs_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseLoadGroupedDialogs;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithJavaUtilList:withJavaUtilList:withJavaUtilList:", "ResponseLoadGroupedDialogs", NULL, 0x1, NULL, NULL },
    { "init", "ResponseLoadGroupedDialogs", NULL, 0x1, NULL, NULL },
    { "getDialogs", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getUsers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getGroups", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseLoadGroupedDialogs_HEADER },
    { "dialogs_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiDialogGroup;>;", .constantValue.asLong = 0 },
    { "users_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiUser;>;", .constantValue.asLong = 0 },
    { "groups_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiGroup;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseLoadGroupedDialogs = { 2, "ResponseLoadGroupedDialogs", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseLoadGroupedDialogs;
}

@end


#line 21
ARResponseLoadGroupedDialogs *ARResponseLoadGroupedDialogs_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseLoadGroupedDialogs_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseLoadGroupedDialogs_init(), data);
}


#line 29
void ARResponseLoadGroupedDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(ARResponseLoadGroupedDialogs *self, id<JavaUtilList> dialogs, id<JavaUtilList> users, id<JavaUtilList> groups) {
  (void) ACResponse_init(self);
  
#line 30
  self->dialogs_ = dialogs;
  self->users_ = users;
  self->groups_ = groups;
}


#line 29
ARResponseLoadGroupedDialogs *new_ARResponseLoadGroupedDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(id<JavaUtilList> dialogs, id<JavaUtilList> users, id<JavaUtilList> groups) {
  ARResponseLoadGroupedDialogs *self = [ARResponseLoadGroupedDialogs alloc];
  ARResponseLoadGroupedDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(self, dialogs, users, groups);
  return self;
}

void ARResponseLoadGroupedDialogs_init(ARResponseLoadGroupedDialogs *self) {
  (void) ACResponse_init(self);
}


#line 35
ARResponseLoadGroupedDialogs *new_ARResponseLoadGroupedDialogs_init() {
  ARResponseLoadGroupedDialogs *self = [ARResponseLoadGroupedDialogs alloc];
  ARResponseLoadGroupedDialogs_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseLoadGroupedDialogs)

#pragma clang diagnostic pop

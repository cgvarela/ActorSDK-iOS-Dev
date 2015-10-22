//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetContacts.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiUser.h"
#include "im/actor/core/api/rpc/ResponseGetContacts.h"
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

@interface ARResponseGetContacts () {
 @public
  id<JavaUtilList> users_;
  jboolean isNotChanged_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseGetContacts, users_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseGetContacts.java"


#line 18
@implementation ARResponseGetContacts

+ (jint)HEADER {
  return ARResponseGetContacts_HEADER;
}


#line 21
+ (ARResponseGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseGetContacts_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                         withBoolean:(jboolean)isNotChanged {
  ARResponseGetContacts_initWithJavaUtilList_withBoolean_(self, users, isNotChanged);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARResponseGetContacts_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 38
- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (jboolean)isNotChanged {
  return self->isNotChanged_;
}


#line 47
- (void)parseWithARBserValues:(ARBserValues *)values {
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:new_ARApiUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
  self->isNotChanged_ = [values getBoolWithInt:2];
}


#line 57
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
  [writer writeBoolWithInt:2 withBoolean:self->isNotChanged_];
}


#line 63
- (NSString *)description {
  NSString *res = @"tuple GetContacts{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 70
- (jint)getHeaderKey {
  return ARResponseGetContacts_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseGetContacts;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithJavaUtilList:withBoolean:", "ResponseGetContacts", NULL, 0x1, NULL, NULL },
    { "init", "ResponseGetContacts", NULL, 0x1, NULL, NULL },
    { "getUsers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "isNotChanged", NULL, "Z", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseGetContacts_HEADER },
    { "users_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiUser;>;", .constantValue.asLong = 0 },
    { "isNotChanged_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseGetContacts = { 2, "ResponseGetContacts", "im.actor.core.api.rpc", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseGetContacts;
}

@end


#line 21
ARResponseGetContacts *ARResponseGetContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseGetContacts_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseGetContacts_init(), data);
}

void ARResponseGetContacts_initWithJavaUtilList_withBoolean_(ARResponseGetContacts *self, id<JavaUtilList> users, jboolean isNotChanged) {
  (void) ACResponse_init(self);
  
#line 29
  self->users_ = users;
  self->isNotChanged_ = isNotChanged;
}


#line 28
ARResponseGetContacts *new_ARResponseGetContacts_initWithJavaUtilList_withBoolean_(id<JavaUtilList> users, jboolean isNotChanged) {
  ARResponseGetContacts *self = [ARResponseGetContacts alloc];
  ARResponseGetContacts_initWithJavaUtilList_withBoolean_(self, users, isNotChanged);
  return self;
}


#line 33
void ARResponseGetContacts_init(ARResponseGetContacts *self) {
  (void) ACResponse_init(self);
}


#line 33
ARResponseGetContacts *new_ARResponseGetContacts_init() {
  ARResponseGetContacts *self = [ARResponseGetContacts alloc];
  ARResponseGetContacts_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseGetContacts)

#pragma clang diagnostic pop

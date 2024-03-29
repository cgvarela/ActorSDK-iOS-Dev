//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseMakeUserAdmin.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiMember.h"
#include "im/actor/core/api/rpc/ResponseMakeUserAdmin.h"
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

@interface ARResponseMakeUserAdmin () {
 @public
  id<JavaUtilList> members_;
  jint seq_;
  IOSByteArray *state_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseMakeUserAdmin, members_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ARResponseMakeUserAdmin, state_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseMakeUserAdmin.java"


#line 18
@implementation ARResponseMakeUserAdmin

+ (jint)HEADER {
  return ARResponseMakeUserAdmin_HEADER;
}


#line 21
+ (ARResponseMakeUserAdmin *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseMakeUserAdmin_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)members
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state {
  ARResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(self, members, seq, state);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARResponseMakeUserAdmin_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (id<JavaUtilList>)getMembers {
  return self->members_;
}

- (jint)getSeq {
  return self->seq_;
}


#line 49
- (IOSByteArray *)getState {
  return self->state_;
}


#line 54
- (void)parseWithARBserValues:(ARBserValues *)values {
  id<JavaUtilList> _members = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_members addWithId:new_ARApiMember_init()];
  }
  self->members_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_members];
  self->seq_ = [values getIntWithInt:2];
  self->state_ = [values getBytesWithInt:3];
}


#line 65
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->members_];
  [writer writeIntWithInt:2 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:3 withByteArray:self->state_];
}


#line 75
- (NSString *)description {
  NSString *res = @"tuple MakeUserAdmin{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 82
- (jint)getHeaderKey {
  return ARResponseMakeUserAdmin_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseMakeUserAdmin;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithJavaUtilList:withInt:withByteArray:", "ResponseMakeUserAdmin", NULL, 0x1, NULL, NULL },
    { "init", "ResponseMakeUserAdmin", NULL, 0x1, NULL, NULL },
    { "getMembers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getSeq", NULL, "I", 0x1, NULL, NULL },
    { "getState", NULL, "[B", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseMakeUserAdmin_HEADER },
    { "members_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiMember;>;", .constantValue.asLong = 0 },
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseMakeUserAdmin = { 2, "ResponseMakeUserAdmin", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseMakeUserAdmin;
}

@end


#line 21
ARResponseMakeUserAdmin *ARResponseMakeUserAdmin_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseMakeUserAdmin_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseMakeUserAdmin_init(), data);
}


#line 29
void ARResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(ARResponseMakeUserAdmin *self, id<JavaUtilList> members, jint seq, IOSByteArray *state) {
  (void) ACResponse_init(self);
  
#line 30
  self->members_ = members;
  self->seq_ = seq;
  self->state_ = state;
}


#line 29
ARResponseMakeUserAdmin *new_ARResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(id<JavaUtilList> members, jint seq, IOSByteArray *state) {
  ARResponseMakeUserAdmin *self = [ARResponseMakeUserAdmin alloc];
  ARResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(self, members, seq, state);
  return self;
}

void ARResponseMakeUserAdmin_init(ARResponseMakeUserAdmin *self) {
  (void) ACResponse_init(self);
}


#line 35
ARResponseMakeUserAdmin *new_ARResponseMakeUserAdmin_init() {
  ARResponseMakeUserAdmin *self = [ARResponseMakeUserAdmin alloc];
  ARResponseMakeUserAdmin_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseMakeUserAdmin)

#pragma clang diagnostic pop

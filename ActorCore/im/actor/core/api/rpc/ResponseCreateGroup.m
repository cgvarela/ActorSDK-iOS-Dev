//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseCreateGroup.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiGroupOutPeer.h"
#include "im/actor/core/api/rpc/ResponseCreateGroup.h"
#include "im/actor/core/network/parser/Response.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARResponseCreateGroup () {
 @public
  ARApiGroupOutPeer *groupPeer_;
  jint seq_;
  IOSByteArray *state_;
  id<JavaUtilList> users_;
  jlong date_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseCreateGroup, groupPeer_, ARApiGroupOutPeer *)
J2OBJC_FIELD_SETTER(ARResponseCreateGroup, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ARResponseCreateGroup, users_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseCreateGroup.java"


#line 18
@implementation ARResponseCreateGroup

+ (jint)HEADER {
  return ARResponseCreateGroup_HEADER;
}


#line 21
+ (ARResponseCreateGroup *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseCreateGroup_fromBytesWithByteArray_(data);
}


#line 31
- (instancetype)initWithARApiGroupOutPeer:(ARApiGroupOutPeer *)groupPeer
                                  withInt:(jint)seq
                            withByteArray:(IOSByteArray *)state
                         withJavaUtilList:(id<JavaUtilList>)users
                                 withLong:(jlong)date {
  ARResponseCreateGroup_initWithARApiGroupOutPeer_withInt_withByteArray_withJavaUtilList_withLong_(self, groupPeer, seq, state, users, date);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 39
- (instancetype)init {
  ARResponseCreateGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 44
- (ARApiGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jint)getSeq {
  return self->seq_;
}


#line 53
- (IOSByteArray *)getState {
  return self->state_;
}


#line 58
- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (jlong)getDate {
  return self->date_;
}


#line 67
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->groupPeer_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiGroupOutPeer_init()];
  self->seq_ = [values getIntWithInt:3];
  self->state_ = [values getBytesWithInt:4];
  self->users_ = [values getRepeatedIntWithInt:5];
  self->date_ = [values getLongWithInt:6];
}


#line 76
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->groupPeer_];
  [writer writeIntWithInt:3 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:4 withByteArray:self->state_];
  [writer writeRepeatedIntWithInt:5 withJavaUtilList:self->users_];
  [writer writeLongWithInt:6 withLong:self->date_];
}


#line 91
- (NSString *)description {
  NSString *res = @"tuple CreateGroup{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 98
- (jint)getHeaderKey {
  return ARResponseCreateGroup_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseCreateGroup;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiGroupOutPeer:withInt:withByteArray:withJavaUtilList:withLong:", "ResponseCreateGroup", NULL, 0x1, NULL, NULL },
    { "init", "ResponseCreateGroup", NULL, 0x1, NULL, NULL },
    { "getGroupPeer", NULL, "Lim.actor.core.api.ApiGroupOutPeer;", 0x1, NULL, NULL },
    { "getSeq", NULL, "I", 0x1, NULL, NULL },
    { "getState", NULL, "[B", 0x1, NULL, NULL },
    { "getUsers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseCreateGroup_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.core.api.ApiGroupOutPeer;", NULL, NULL, .constantValue.asLong = 0 },
    { "seq_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "users_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseCreateGroup = { 2, "ResponseCreateGroup", "im.actor.core.api.rpc", NULL, 0x1, 12, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseCreateGroup;
}

@end


#line 21
ARResponseCreateGroup *ARResponseCreateGroup_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseCreateGroup_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseCreateGroup_init(), data);
}


#line 31
void ARResponseCreateGroup_initWithARApiGroupOutPeer_withInt_withByteArray_withJavaUtilList_withLong_(ARResponseCreateGroup *self, ARApiGroupOutPeer *groupPeer, jint seq, IOSByteArray *state, id<JavaUtilList> users, jlong date) {
  (void) ACResponse_init(self);
  
#line 32
  self->groupPeer_ = groupPeer;
  self->seq_ = seq;
  self->state_ = state;
  self->users_ = users;
  self->date_ = date;
}


#line 31
ARResponseCreateGroup *new_ARResponseCreateGroup_initWithARApiGroupOutPeer_withInt_withByteArray_withJavaUtilList_withLong_(ARApiGroupOutPeer *groupPeer, jint seq, IOSByteArray *state, id<JavaUtilList> users, jlong date) {
  ARResponseCreateGroup *self = [ARResponseCreateGroup alloc];
  ARResponseCreateGroup_initWithARApiGroupOutPeer_withInt_withByteArray_withJavaUtilList_withLong_(self, groupPeer, seq, state, users, date);
  return self;
}


#line 39
void ARResponseCreateGroup_init(ARResponseCreateGroup *self) {
  (void) ACResponse_init(self);
}


#line 39
ARResponseCreateGroup *new_ARResponseCreateGroup_init() {
  ARResponseCreateGroup *self = [ARResponseCreateGroup alloc];
  ARResponseCreateGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseCreateGroup)

#pragma clang diagnostic pop

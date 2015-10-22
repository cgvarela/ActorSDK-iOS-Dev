//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateContactRegistered.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/updates/UpdateContactRegistered.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateContactRegistered () {
 @public
  jint uid_;
  jboolean isSilent_;
  jlong date_;
  jlong rid_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateContactRegistered.java"


#line 18
@implementation ARUpdateContactRegistered

+ (jint)HEADER {
  return ARUpdateContactRegistered_HEADER;
}


#line 21
+ (ARUpdateContactRegistered *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateContactRegistered_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithInt:(jint)uid
                withBoolean:(jboolean)isSilent
                   withLong:(jlong)date
                   withLong:(jlong)rid {
  ARUpdateContactRegistered_initWithInt_withBoolean_withLong_withLong_(self, uid, isSilent, date, rid);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 37
- (instancetype)init {
  ARUpdateContactRegistered_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 41
- (jint)getUid {
  return self->uid_;
}

- (jboolean)isSilent {
  return self->isSilent_;
}

- (jlong)getDate {
  return self->date_;
}

- (jlong)getRid {
  return self->rid_;
}


#line 58
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->isSilent_ = [values getBoolWithInt:2];
  self->date_ = [values getLongWithInt:3];
  self->rid_ = [values getLongWithInt:4];
}


#line 66
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeBoolWithInt:2 withBoolean:self->isSilent_];
  [writer writeLongWithInt:3 withLong:self->date_];
  [writer writeLongWithInt:4 withLong:self->rid_];
}


#line 74
- (NSString *)description {
  NSString *res = @"update ContactRegistered{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$Z", @", isSilent=", self->isSilent_);
  (void) JreStrAppendStrong(&res, "$J", @", date=", self->date_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 84
- (jint)getHeaderKey {
  return ARUpdateContactRegistered_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateContactRegistered;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withBoolean:withLong:withLong:", "UpdateContactRegistered", NULL, 0x1, NULL, NULL },
    { "init", "UpdateContactRegistered", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "isSilent", NULL, "Z", 0x1, NULL, NULL },
    { "getDate", NULL, "J", 0x1, NULL, NULL },
    { "getRid", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateContactRegistered_HEADER },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "isSilent_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "date_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "rid_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateContactRegistered = { 2, "UpdateContactRegistered", "im.actor.core.api.updates", NULL, 0x1, 11, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateContactRegistered;
}

@end


#line 21
ARUpdateContactRegistered *ARUpdateContactRegistered_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateContactRegistered_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateContactRegistered_init(), data);
}


#line 30
void ARUpdateContactRegistered_initWithInt_withBoolean_withLong_withLong_(ARUpdateContactRegistered *self, jint uid, jboolean isSilent, jlong date, jlong rid) {
  (void) ACUpdate_init(self);
  
#line 31
  self->uid_ = uid;
  self->isSilent_ = isSilent;
  self->date_ = date;
  self->rid_ = rid;
}


#line 30
ARUpdateContactRegistered *new_ARUpdateContactRegistered_initWithInt_withBoolean_withLong_withLong_(jint uid, jboolean isSilent, jlong date, jlong rid) {
  ARUpdateContactRegistered *self = [ARUpdateContactRegistered alloc];
  ARUpdateContactRegistered_initWithInt_withBoolean_withLong_withLong_(self, uid, isSilent, date, rid);
  return self;
}


#line 37
void ARUpdateContactRegistered_init(ARUpdateContactRegistered *self) {
  (void) ACUpdate_init(self);
}


#line 37
ARUpdateContactRegistered *new_ARUpdateContactRegistered_init() {
  ARUpdateContactRegistered *self = [ARUpdateContactRegistered alloc];
  ARUpdateContactRegistered_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateContactRegistered)

#pragma clang diagnostic pop

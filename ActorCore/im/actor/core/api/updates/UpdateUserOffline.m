//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserOffline.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/updates/UpdateUserOffline.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateUserOffline () {
 @public
  jint uid_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserOffline.java"


#line 18
@implementation ARUpdateUserOffline

+ (jint)HEADER {
  return ARUpdateUserOffline_HEADER;
}


#line 21
+ (ARUpdateUserOffline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateUserOffline_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithInt:(jint)uid {
  ARUpdateUserOffline_initWithInt_(self, uid);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARUpdateUserOffline_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 35
- (jint)getUid {
  return self->uid_;
}


#line 40
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
}


#line 45
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
}


#line 50
- (NSString *)description {
  NSString *res = @"update UserOffline{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 58
- (jint)getHeaderKey {
  return ARUpdateUserOffline_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateUserOffline;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:", "UpdateUserOffline", NULL, 0x1, NULL, NULL },
    { "init", "UpdateUserOffline", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateUserOffline_HEADER },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateUserOffline = { 2, "UpdateUserOffline", "im.actor.core.api.updates", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateUserOffline;
}

@end


#line 21
ARUpdateUserOffline *ARUpdateUserOffline_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateUserOffline_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateUserOffline_init(), data);
}


#line 27
void ARUpdateUserOffline_initWithInt_(ARUpdateUserOffline *self, jint uid) {
  (void) ACUpdate_init(self);
  
#line 28
  self->uid_ = uid;
}


#line 27
ARUpdateUserOffline *new_ARUpdateUserOffline_initWithInt_(jint uid) {
  ARUpdateUserOffline *self = [ARUpdateUserOffline alloc];
  ARUpdateUserOffline_initWithInt_(self, uid);
  return self;
}


#line 31
void ARUpdateUserOffline_init(ARUpdateUserOffline *self) {
  (void) ACUpdate_init(self);
}


#line 31
ARUpdateUserOffline *new_ARUpdateUserOffline_init() {
  ARUpdateUserOffline *self = [ARUpdateUserOffline alloc];
  ARUpdateUserOffline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateUserOffline)

#pragma clang diagnostic pop

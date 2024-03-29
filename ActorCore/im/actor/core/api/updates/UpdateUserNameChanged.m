//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserNameChanged.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/updates/UpdateUserNameChanged.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateUserNameChanged () {
 @public
  jint uid_;
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(ARUpdateUserNameChanged, name_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserNameChanged.java"


#line 18
@implementation ARUpdateUserNameChanged

+ (jint)HEADER {
  return ARUpdateUserNameChanged_HEADER;
}


#line 21
+ (ARUpdateUserNameChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateUserNameChanged_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithInt:(jint)uid
               withNSString:(NSString *)name {
  ARUpdateUserNameChanged_initWithInt_withNSString_(self, uid, name);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARUpdateUserNameChanged_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 37
- (jint)getUid {
  return self->uid_;
}


#line 42
- (NSString *)getName {
  return self->name_;
}


#line 47
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->name_ = [values getStringWithInt:2];
}


#line 53
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->name_];
}


#line 62
- (NSString *)description {
  NSString *res = @"update UserNameChanged{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$$", @", name=", self->name_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 71
- (jint)getHeaderKey {
  return ARUpdateUserNameChanged_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateUserNameChanged;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withNSString:", "UpdateUserNameChanged", NULL, 0x1, NULL, NULL },
    { "init", "UpdateUserNameChanged", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateUserNameChanged_HEADER },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateUserNameChanged = { 2, "UpdateUserNameChanged", "im.actor.core.api.updates", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateUserNameChanged;
}

@end


#line 21
ARUpdateUserNameChanged *ARUpdateUserNameChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateUserNameChanged_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateUserNameChanged_init(), data);
}

void ARUpdateUserNameChanged_initWithInt_withNSString_(ARUpdateUserNameChanged *self, jint uid, NSString *name) {
  (void) ACUpdate_init(self);
  
#line 29
  self->uid_ = uid;
  self->name_ = name;
}


#line 28
ARUpdateUserNameChanged *new_ARUpdateUserNameChanged_initWithInt_withNSString_(jint uid, NSString *name) {
  ARUpdateUserNameChanged *self = [ARUpdateUserNameChanged alloc];
  ARUpdateUserNameChanged_initWithInt_withNSString_(self, uid, name);
  return self;
}


#line 33
void ARUpdateUserNameChanged_init(ARUpdateUserNameChanged *self) {
  (void) ACUpdate_init(self);
}


#line 33
ARUpdateUserNameChanged *new_ARUpdateUserNameChanged_init() {
  ARUpdateUserNameChanged *self = [ARUpdateUserNameChanged alloc];
  ARUpdateUserNameChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateUserNameChanged)

#pragma clang diagnostic pop

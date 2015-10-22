//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserAboutChanged.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/updates/UpdateUserAboutChanged.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateUserAboutChanged () {
 @public
  jint uid_;
  NSString *about_;
}

@end

J2OBJC_FIELD_SETTER(ARUpdateUserAboutChanged, about_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserAboutChanged.java"


#line 18
@implementation ARUpdateUserAboutChanged

+ (jint)HEADER {
  return ARUpdateUserAboutChanged_HEADER;
}


#line 21
+ (ARUpdateUserAboutChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateUserAboutChanged_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)initWithInt:(jint)uid
               withNSString:(NSString *)about {
  ARUpdateUserAboutChanged_initWithInt_withNSString_(self, uid, about);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  ARUpdateUserAboutChanged_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 37
- (jint)getUid {
  return self->uid_;
}


#line 42
- (NSString *)getAbout {
  return self->about_;
}


#line 47
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->uid_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->about_ = [values optStringWithInt:2];
}


#line 53
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  if (self->about_ != nil) {
    [writer writeStringWithInt:2 withNSString:self->about_];
  }
}


#line 61
- (NSString *)description {
  NSString *res = @"update UserAboutChanged{";
  (void) JreStrAppendStrong(&res, "$I", @"uid=", self->uid_);
  (void) JreStrAppendStrong(&res, "$$", @", about=", self->about_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 70
- (jint)getHeaderKey {
  return ARUpdateUserAboutChanged_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateUserAboutChanged;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withNSString:", "UpdateUserAboutChanged", NULL, 0x1, NULL, NULL },
    { "init", "UpdateUserAboutChanged", NULL, 0x1, NULL, NULL },
    { "getUid", NULL, "I", 0x1, NULL, NULL },
    { "getAbout", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateUserAboutChanged_HEADER },
    { "uid_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "about_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateUserAboutChanged = { 2, "UpdateUserAboutChanged", "im.actor.core.api.updates", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateUserAboutChanged;
}

@end


#line 21
ARUpdateUserAboutChanged *ARUpdateUserAboutChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateUserAboutChanged_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateUserAboutChanged_init(), data);
}

void ARUpdateUserAboutChanged_initWithInt_withNSString_(ARUpdateUserAboutChanged *self, jint uid, NSString *about) {
  (void) ACUpdate_init(self);
  
#line 29
  self->uid_ = uid;
  self->about_ = about;
}


#line 28
ARUpdateUserAboutChanged *new_ARUpdateUserAboutChanged_initWithInt_withNSString_(jint uid, NSString *about) {
  ARUpdateUserAboutChanged *self = [ARUpdateUserAboutChanged alloc];
  ARUpdateUserAboutChanged_initWithInt_withNSString_(self, uid, about);
  return self;
}


#line 33
void ARUpdateUserAboutChanged_init(ARUpdateUserAboutChanged *self) {
  (void) ACUpdate_init(self);
}


#line 33
ARUpdateUserAboutChanged *new_ARUpdateUserAboutChanged_init() {
  ARUpdateUserAboutChanged *self = [ARUpdateUserAboutChanged alloc];
  ARUpdateUserAboutChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateUserAboutChanged)

#pragma clang diagnostic pop

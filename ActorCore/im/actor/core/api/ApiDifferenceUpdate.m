//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDifferenceUpdate.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiDifferenceUpdate.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/bser/Utils.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiDifferenceUpdate () {
 @public
  jint updateHeader_;
  IOSByteArray *update_;
}

@end

J2OBJC_FIELD_SETTER(ARApiDifferenceUpdate, update_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDifferenceUpdate.java"


#line 17
@implementation ARApiDifferenceUpdate


#line 22
- (instancetype)initWithInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update {
  ARApiDifferenceUpdate_initWithInt_withByteArray_(self, updateHeader, update);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 27
- (instancetype)init {
  ARApiDifferenceUpdate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 31
- (jint)getUpdateHeader {
  return self->updateHeader_;
}


#line 36
- (IOSByteArray *)getUpdate {
  return self->update_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->updateHeader_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->update_ = [values getBytesWithInt:2];
}


#line 47
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->update_];
}


#line 56
- (NSString *)description {
  NSString *res = @"struct DifferenceUpdate{";
  (void) JreStrAppendStrong(&res, "$I", @"updateHeader=", self->updateHeader_);
  (void) JreStrAppendStrong(&res, "$$", @", update=", ARUtils_byteArrayToStringCompactWithByteArray_(self->update_));
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withByteArray:", "ApiDifferenceUpdate", NULL, 0x1, NULL, NULL },
    { "init", "ApiDifferenceUpdate", NULL, 0x1, NULL, NULL },
    { "getUpdateHeader", NULL, "I", 0x1, NULL, NULL },
    { "getUpdate", NULL, "[B", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "updateHeader_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "update_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiDifferenceUpdate = { 2, "ApiDifferenceUpdate", "im.actor.core.api", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiDifferenceUpdate;
}

@end


#line 22
void ARApiDifferenceUpdate_initWithInt_withByteArray_(ARApiDifferenceUpdate *self, jint updateHeader, IOSByteArray *update) {
  (void) ARBserObject_init(self);
  
#line 23
  self->updateHeader_ = updateHeader;
  self->update_ = update;
}


#line 22
ARApiDifferenceUpdate *new_ARApiDifferenceUpdate_initWithInt_withByteArray_(jint updateHeader, IOSByteArray *update) {
  ARApiDifferenceUpdate *self = [ARApiDifferenceUpdate alloc];
  ARApiDifferenceUpdate_initWithInt_withByteArray_(self, updateHeader, update);
  return self;
}


#line 27
void ARApiDifferenceUpdate_init(ARApiDifferenceUpdate *self) {
  (void) ARBserObject_init(self);
}


#line 27
ARApiDifferenceUpdate *new_ARApiDifferenceUpdate_init() {
  ARApiDifferenceUpdate *self = [ARApiDifferenceUpdate alloc];
  ARApiDifferenceUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiDifferenceUpdate)

#pragma clang diagnostic pop

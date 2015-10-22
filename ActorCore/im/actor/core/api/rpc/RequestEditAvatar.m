//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditAvatar.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiFileLocation.h"
#include "im/actor/core/api/rpc/RequestEditAvatar.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditAvatar () {
 @public
  ARApiFileLocation *fileLocation_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditAvatar, fileLocation_, ARApiFileLocation *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditAvatar.java"


#line 18
@implementation ARRequestEditAvatar

+ (jint)HEADER {
  return ARRequestEditAvatar_HEADER;
}


#line 21
+ (ARRequestEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditAvatar_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiFileLocation:(ARApiFileLocation *)fileLocation {
  ARRequestEditAvatar_initWithARApiFileLocation_(self, fileLocation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestEditAvatar_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (ARApiFileLocation *)getFileLocation {
  return self->fileLocation_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->fileLocation_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiFileLocation_init()];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->fileLocation_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->fileLocation_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc EditAvatar{";
  (void) JreStrAppendStrong(&res, "$$", @"fileLocation=", (self->fileLocation_ != nil ? @"set" : @"empty"));
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestEditAvatar_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditAvatar;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiFileLocation:", "RequestEditAvatar", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditAvatar", NULL, 0x1, NULL, NULL },
    { "getFileLocation", NULL, "Lim.actor.core.api.ApiFileLocation;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditAvatar_HEADER },
    { "fileLocation_", NULL, 0x2, "Lim.actor.core.api.ApiFileLocation;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseEditAvatar;"};
  static const J2ObjcClassInfo _ARRequestEditAvatar = { 2, "RequestEditAvatar", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseEditAvatar;>;" };
  return &_ARRequestEditAvatar;
}

@end


#line 21
ARRequestEditAvatar *ARRequestEditAvatar_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditAvatar_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditAvatar_init(), data);
}


#line 27
void ARRequestEditAvatar_initWithARApiFileLocation_(ARRequestEditAvatar *self, ARApiFileLocation *fileLocation) {
  (void) ACRequest_init(self);
  
#line 28
  self->fileLocation_ = fileLocation;
}


#line 27
ARRequestEditAvatar *new_ARRequestEditAvatar_initWithARApiFileLocation_(ARApiFileLocation *fileLocation) {
  ARRequestEditAvatar *self = [ARRequestEditAvatar alloc];
  ARRequestEditAvatar_initWithARApiFileLocation_(self, fileLocation);
  return self;
}


#line 31
void ARRequestEditAvatar_init(ARRequestEditAvatar *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestEditAvatar *new_ARRequestEditAvatar_init() {
  ARRequestEditAvatar *self = [ARRequestEditAvatar alloc];
  ARRequestEditAvatar_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditAvatar)

#pragma clang diagnostic pop

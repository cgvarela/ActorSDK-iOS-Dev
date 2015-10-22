//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetFileUploadPartUrl.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestGetFileUploadPartUrl.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/bser/Utils.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestGetFileUploadPartUrl () {
 @public
  jint partNumber_;
  jint partSize_;
  IOSByteArray *uploadKey_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestGetFileUploadPartUrl, uploadKey_, IOSByteArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetFileUploadPartUrl.java"


#line 18
@implementation ARRequestGetFileUploadPartUrl

+ (jint)HEADER {
  return ARRequestGetFileUploadPartUrl_HEADER;
}


#line 21
+ (ARRequestGetFileUploadPartUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestGetFileUploadPartUrl_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithInt:(jint)partNumber
                    withInt:(jint)partSize
              withByteArray:(IOSByteArray *)uploadKey {
  ARRequestGetFileUploadPartUrl_initWithInt_withInt_withByteArray_(self, partNumber, partSize, uploadKey);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARRequestGetFileUploadPartUrl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 39
- (jint)getPartNumber {
  return self->partNumber_;
}

- (jint)getPartSize {
  return self->partSize_;
}


#line 48
- (IOSByteArray *)getUploadKey {
  return self->uploadKey_;
}


#line 53
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->partNumber_ = [((ARBserValues *) nil_chk(values)) getIntWithInt:1];
  self->partSize_ = [values getIntWithInt:2];
  self->uploadKey_ = [values getBytesWithInt:3];
}


#line 60
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->partNumber_];
  [writer writeIntWithInt:2 withInt:self->partSize_];
  if (self->uploadKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:3 withByteArray:self->uploadKey_];
}


#line 70
- (NSString *)description {
  NSString *res = @"rpc GetFileUploadPartUrl{";
  (void) JreStrAppendStrong(&res, "$$", @"uploadKey=", ARUtils_byteArrayToStringCompactWithByteArray_(self->uploadKey_));
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 78
- (jint)getHeaderKey {
  return ARRequestGetFileUploadPartUrl_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestGetFileUploadPartUrl;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithInt:withInt:withByteArray:", "RequestGetFileUploadPartUrl", NULL, 0x1, NULL, NULL },
    { "init", "RequestGetFileUploadPartUrl", NULL, 0x1, NULL, NULL },
    { "getPartNumber", NULL, "I", 0x1, NULL, NULL },
    { "getPartSize", NULL, "I", 0x1, NULL, NULL },
    { "getUploadKey", NULL, "[B", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestGetFileUploadPartUrl_HEADER },
    { "partNumber_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "partSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "uploadKey_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseGetFileUploadPartUrl;"};
  static const J2ObjcClassInfo _ARRequestGetFileUploadPartUrl = { 2, "RequestGetFileUploadPartUrl", "im.actor.core.api.rpc", NULL, 0x1, 10, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseGetFileUploadPartUrl;>;" };
  return &_ARRequestGetFileUploadPartUrl;
}

@end


#line 21
ARRequestGetFileUploadPartUrl *ARRequestGetFileUploadPartUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestGetFileUploadPartUrl_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestGetFileUploadPartUrl_init(), data);
}


#line 29
void ARRequestGetFileUploadPartUrl_initWithInt_withInt_withByteArray_(ARRequestGetFileUploadPartUrl *self, jint partNumber, jint partSize, IOSByteArray *uploadKey) {
  (void) ACRequest_init(self);
  
#line 30
  self->partNumber_ = partNumber;
  self->partSize_ = partSize;
  self->uploadKey_ = uploadKey;
}


#line 29
ARRequestGetFileUploadPartUrl *new_ARRequestGetFileUploadPartUrl_initWithInt_withInt_withByteArray_(jint partNumber, jint partSize, IOSByteArray *uploadKey) {
  ARRequestGetFileUploadPartUrl *self = [ARRequestGetFileUploadPartUrl alloc];
  ARRequestGetFileUploadPartUrl_initWithInt_withInt_withByteArray_(self, partNumber, partSize, uploadKey);
  return self;
}

void ARRequestGetFileUploadPartUrl_init(ARRequestGetFileUploadPartUrl *self) {
  (void) ACRequest_init(self);
}


#line 35
ARRequestGetFileUploadPartUrl *new_ARRequestGetFileUploadPartUrl_init() {
  ARRequestGetFileUploadPartUrl *self = [ARRequestGetFileUploadPartUrl alloc];
  ARRequestGetFileUploadPartUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestGetFileUploadPartUrl)

#pragma clang diagnostic pop

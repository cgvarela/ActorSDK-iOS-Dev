//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiFileLocation.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiFileLocation.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiFileLocation () {
 @public
  jlong fileId_;
  jlong accessHash_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiFileLocation.java"


#line 17
@implementation ARApiFileLocation


#line 22
- (instancetype)initWithLong:(jlong)fileId
                    withLong:(jlong)accessHash {
  ARApiFileLocation_initWithLong_withLong_(self, fileId, accessHash);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 27
- (instancetype)init {
  ARApiFileLocation_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 31
- (jlong)getFileId {
  return self->fileId_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}


#line 40
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->fileId_ = [((ARBserValues *) nil_chk(values)) getLongWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 49
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->fileId_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 62
- (NSString *)description {
  NSString *res = @"struct FileLocation{";
  (void) JreStrAppendStrong(&res, "$J", @"fileId=", self->fileId_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:", "ApiFileLocation", NULL, 0x1, NULL, NULL },
    { "init", "ApiFileLocation", NULL, 0x1, NULL, NULL },
    { "getFileId", NULL, "J", 0x1, NULL, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fileId_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "accessHash_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiFileLocation = { 2, "ApiFileLocation", "im.actor.core.api", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiFileLocation;
}

@end


#line 22
void ARApiFileLocation_initWithLong_withLong_(ARApiFileLocation *self, jlong fileId, jlong accessHash) {
  (void) ARBserObject_init(self);
  
#line 23
  self->fileId_ = fileId;
  self->accessHash_ = accessHash;
}


#line 22
ARApiFileLocation *new_ARApiFileLocation_initWithLong_withLong_(jlong fileId, jlong accessHash) {
  ARApiFileLocation *self = [ARApiFileLocation alloc];
  ARApiFileLocation_initWithLong_withLong_(self, fileId, accessHash);
  return self;
}


#line 27
void ARApiFileLocation_init(ARApiFileLocation *self) {
  (void) ARBserObject_init(self);
}


#line 27
ARApiFileLocation *new_ARApiFileLocation_init() {
  ARApiFileLocation *self = [ARApiFileLocation alloc];
  ARApiFileLocation_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiFileLocation)

#pragma clang diagnostic pop

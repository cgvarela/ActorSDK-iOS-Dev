//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseLoadWallpappers.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiWallpapper.h"
#include "im/actor/core/api/rpc/ResponseLoadWallpappers.h"
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

@interface ARResponseLoadWallpappers () {
 @public
  id<JavaUtilList> wallpappers_;
}

@end

J2OBJC_FIELD_SETTER(ARResponseLoadWallpappers, wallpappers_, id<JavaUtilList>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/ResponseLoadWallpappers.java"


#line 18
@implementation ARResponseLoadWallpappers

+ (jint)HEADER {
  return ARResponseLoadWallpappers_HEADER;
}


#line 21
+ (ARResponseLoadWallpappers *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARResponseLoadWallpappers_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)wallpappers {
  ARResponseLoadWallpappers_initWithJavaUtilList_(self, wallpappers);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARResponseLoadWallpappers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (id<JavaUtilList>)getWallpappers {
  return self->wallpappers_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  id<JavaUtilList> _wallpappers = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((ARBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_wallpappers addWithId:new_ARApiWallpapper_init()];
  }
  self->wallpappers_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_wallpappers];
}


#line 50
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->wallpappers_];
}


#line 55
- (NSString *)description {
  NSString *res = @"tuple LoadWallpappers{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARResponseLoadWallpappers_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.ResponseLoadWallpappers;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithJavaUtilList:", "ResponseLoadWallpappers", NULL, 0x1, NULL, NULL },
    { "init", "ResponseLoadWallpappers", NULL, 0x1, NULL, NULL },
    { "getWallpappers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARResponseLoadWallpappers_HEADER },
    { "wallpappers_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/api/ApiWallpapper;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARResponseLoadWallpappers = { 2, "ResponseLoadWallpappers", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARResponseLoadWallpappers;
}

@end


#line 21
ARResponseLoadWallpappers *ARResponseLoadWallpappers_fromBytesWithByteArray_(IOSByteArray *data) {
  ARResponseLoadWallpappers_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARResponseLoadWallpappers_init(), data);
}


#line 27
void ARResponseLoadWallpappers_initWithJavaUtilList_(ARResponseLoadWallpappers *self, id<JavaUtilList> wallpappers) {
  (void) ACResponse_init(self);
  
#line 28
  self->wallpappers_ = wallpappers;
}


#line 27
ARResponseLoadWallpappers *new_ARResponseLoadWallpappers_initWithJavaUtilList_(id<JavaUtilList> wallpappers) {
  ARResponseLoadWallpappers *self = [ARResponseLoadWallpappers alloc];
  ARResponseLoadWallpappers_initWithJavaUtilList_(self, wallpappers);
  return self;
}


#line 31
void ARResponseLoadWallpappers_init(ARResponseLoadWallpappers *self) {
  (void) ACResponse_init(self);
}


#line 31
ARResponseLoadWallpappers *new_ARResponseLoadWallpappers_init() {
  ARResponseLoadWallpappers *self = [ARResponseLoadWallpappers alloc];
  ARResponseLoadWallpappers_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARResponseLoadWallpappers)

#pragma clang diagnostic pop

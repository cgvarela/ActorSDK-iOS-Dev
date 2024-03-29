//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceExChangedTitle.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiServiceEx.h"
#include "im/actor/core/api/ApiServiceExChangedTitle.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiServiceExChangedTitle () {
 @public
  NSString *title_;
}

@end

J2OBJC_FIELD_SETTER(ARApiServiceExChangedTitle, title_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiServiceExChangedTitle.java"


#line 17
@implementation ARApiServiceExChangedTitle


#line 21
- (instancetype)initWithNSString:(NSString *)title {
  ARApiServiceExChangedTitle_initWithNSString_(self, title);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  ARApiServiceExChangedTitle_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 29
- (jint)getHeader {
  return 5;
}


#line 34
- (NSString *)getTitle {
  return self->title_;
}


#line 39
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->title_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 47
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->title_];
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
  NSString *res = @"struct ServiceExChangedTitle{";
  (void) JreStrAppendStrong(&res, "$$", @"title=", self->title_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "ApiServiceExChangedTitle", NULL, 0x1, NULL, NULL },
    { "init", "ApiServiceExChangedTitle", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiServiceExChangedTitle = { 2, "ApiServiceExChangedTitle", "im.actor.core.api", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiServiceExChangedTitle;
}

@end


#line 21
void ARApiServiceExChangedTitle_initWithNSString_(ARApiServiceExChangedTitle *self, NSString *title) {
  (void) ARApiServiceEx_init(self);
  
#line 22
  self->title_ = title;
}


#line 21
ARApiServiceExChangedTitle *new_ARApiServiceExChangedTitle_initWithNSString_(NSString *title) {
  ARApiServiceExChangedTitle *self = [ARApiServiceExChangedTitle alloc];
  ARApiServiceExChangedTitle_initWithNSString_(self, title);
  return self;
}


#line 25
void ARApiServiceExChangedTitle_init(ARApiServiceExChangedTitle *self) {
  (void) ARApiServiceEx_init(self);
}


#line 25
ARApiServiceExChangedTitle *new_ARApiServiceExChangedTitle_init() {
  ARApiServiceExChangedTitle *self = [ARApiServiceExChangedTitle alloc];
  ARApiServiceExChangedTitle_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiServiceExChangedTitle)

#pragma clang diagnostic pop

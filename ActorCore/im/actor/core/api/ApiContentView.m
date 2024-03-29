//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContentView.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiContentView.h"
#include "im/actor/core/api/ApiEvent.h"
#include "im/actor/core/api/ApiRawValue.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiContentView () {
 @public
  NSString *contentId_;
  ARApiRawValue *params_;
}

@end

J2OBJC_FIELD_SETTER(ARApiContentView, contentId_, NSString *)
J2OBJC_FIELD_SETTER(ARApiContentView, params_, ARApiRawValue *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContentView.java"


#line 17
@implementation ARApiContentView


#line 22
- (instancetype)initWithNSString:(NSString *)contentId
               withARApiRawValue:(ARApiRawValue *)params {
  ARApiContentView_initWithNSString_withARApiRawValue_(self, contentId, params);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 27
- (instancetype)init {
  ARApiContentView_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 31
- (jint)getHeader {
  return 1;
}


#line 36
- (NSString *)getContentId {
  return self->contentId_;
}


#line 41
- (ARApiRawValue *)getParams {
  return self->params_;
}


#line 46
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->contentId_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  if ([values optBytesWithInt:3] != nil) {
    self->params_ = ARApiRawValue_fromBytesWithByteArray_([values getBytesWithInt:3]);
  }
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 57
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->contentId_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->contentId_];
  if (self->params_ != nil) {
    [writer writeBytesWithInt:3 withByteArray:[self->params_ buildContainer]];
  }
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 75
- (NSString *)description {
  NSString *res = @"struct ContentView{";
  (void) JreStrAppendStrong(&res, "$$", @"contentId=", self->contentId_);
  (void) JreStrAppendStrong(&res, "$@", @", params=", self->params_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withARApiRawValue:", "ApiContentView", NULL, 0x1, NULL, NULL },
    { "init", "ApiContentView", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "getContentId", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getParams", NULL, "Lim.actor.core.api.ApiRawValue;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "contentId_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "params_", NULL, 0x2, "Lim.actor.core.api.ApiRawValue;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiContentView = { 2, "ApiContentView", "im.actor.core.api", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiContentView;
}

@end


#line 22
void ARApiContentView_initWithNSString_withARApiRawValue_(ARApiContentView *self, NSString *contentId, ARApiRawValue *params) {
  (void) ARApiEvent_init(self);
  
#line 23
  self->contentId_ = contentId;
  self->params_ = params;
}


#line 22
ARApiContentView *new_ARApiContentView_initWithNSString_withARApiRawValue_(NSString *contentId, ARApiRawValue *params) {
  ARApiContentView *self = [ARApiContentView alloc];
  ARApiContentView_initWithNSString_withARApiRawValue_(self, contentId, params);
  return self;
}


#line 27
void ARApiContentView_init(ARApiContentView *self) {
  (void) ARApiEvent_init(self);
}


#line 27
ARApiContentView *new_ARApiContentView_init() {
  ARApiContentView *self = [ARApiContentView alloc];
  ARApiContentView_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiContentView)

#pragma clang diagnostic pop

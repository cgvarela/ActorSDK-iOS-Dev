//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiAppVisibleChanged.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiAppVisibleChanged.h"
#include "im/actor/core/api/ApiEvent.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiAppVisibleChanged () {
 @public
  jboolean visible_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiAppVisibleChanged.java"


#line 17
@implementation ARApiAppVisibleChanged


#line 21
- (instancetype)initWithBoolean:(jboolean)visible {
  ARApiAppVisibleChanged_initWithBoolean_(self, visible);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  ARApiAppVisibleChanged_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 29
- (jint)getHeader {
  return 4;
}

- (jboolean)visible {
  return self->visible_;
}


#line 38
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->visible_ = [((ARBserValues *) nil_chk(values)) getBoolWithInt:1];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeBoolWithInt:1 withBoolean:self->visible_];
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 58
- (NSString *)description {
  NSString *res = @"struct AppVisibleChanged{";
  (void) JreStrAppendStrong(&res, "$Z", @"visible=", self->visible_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:", "ApiAppVisibleChanged", NULL, 0x1, NULL, NULL },
    { "init", "ApiAppVisibleChanged", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "visible", NULL, "Z", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "visible_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiAppVisibleChanged = { 2, "ApiAppVisibleChanged", "im.actor.core.api", NULL, 0x1, 7, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiAppVisibleChanged;
}

@end


#line 21
void ARApiAppVisibleChanged_initWithBoolean_(ARApiAppVisibleChanged *self, jboolean visible) {
  (void) ARApiEvent_init(self);
  
#line 22
  self->visible_ = visible;
}


#line 21
ARApiAppVisibleChanged *new_ARApiAppVisibleChanged_initWithBoolean_(jboolean visible) {
  ARApiAppVisibleChanged *self = [ARApiAppVisibleChanged alloc];
  ARApiAppVisibleChanged_initWithBoolean_(self, visible);
  return self;
}


#line 25
void ARApiAppVisibleChanged_init(ARApiAppVisibleChanged *self) {
  (void) ARApiEvent_init(self);
}


#line 25
ARApiAppVisibleChanged *new_ARApiAppVisibleChanged_init() {
  ARApiAppVisibleChanged *self = [ARApiAppVisibleChanged alloc];
  ARApiAppVisibleChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiAppVisibleChanged)

#pragma clang diagnostic pop

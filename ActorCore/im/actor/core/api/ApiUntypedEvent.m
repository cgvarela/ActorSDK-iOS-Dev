//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiUntypedEvent.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiEvent.h"
#include "im/actor/core/api/ApiRawValue.h"
#include "im/actor/core/api/ApiUntypedEvent.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiUntypedEvent () {
 @public
  NSString *eventType_;
  ARApiRawValue *params_;
}

@end

J2OBJC_FIELD_SETTER(ARApiUntypedEvent, eventType_, NSString *)
J2OBJC_FIELD_SETTER(ARApiUntypedEvent, params_, ARApiRawValue *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiUntypedEvent.java"


#line 17
@implementation ARApiUntypedEvent


#line 22
- (instancetype)initWithNSString:(NSString *)eventType
               withARApiRawValue:(ARApiRawValue *)params {
  ARApiUntypedEvent_initWithNSString_withARApiRawValue_(self, eventType, params);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 27
- (instancetype)init {
  ARApiUntypedEvent_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 31
- (jint)getHeader {
  return 1;
}


#line 36
- (NSString *)getEventType {
  return self->eventType_;
}


#line 41
- (ARApiRawValue *)getParams {
  return self->params_;
}


#line 46
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->eventType_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  if ([values optBytesWithInt:2] != nil) {
    self->params_ = ARApiRawValue_fromBytesWithByteArray_([values getBytesWithInt:2]);
  }
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 57
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->eventType_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->eventType_];
  if (self->params_ != nil) {
    [writer writeBytesWithInt:2 withByteArray:[self->params_ buildContainer]];
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
  NSString *res = @"struct UntypedEvent{";
  (void) JreStrAppendStrong(&res, "$$", @"eventType=", self->eventType_);
  (void) JreStrAppendStrong(&res, "$@", @", params=", self->params_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withARApiRawValue:", "ApiUntypedEvent", NULL, 0x1, NULL, NULL },
    { "init", "ApiUntypedEvent", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "getEventType", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getParams", NULL, "Lim.actor.core.api.ApiRawValue;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "eventType_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "params_", NULL, 0x2, "Lim.actor.core.api.ApiRawValue;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiUntypedEvent = { 2, "ApiUntypedEvent", "im.actor.core.api", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiUntypedEvent;
}

@end


#line 22
void ARApiUntypedEvent_initWithNSString_withARApiRawValue_(ARApiUntypedEvent *self, NSString *eventType, ARApiRawValue *params) {
  (void) ARApiEvent_init(self);
  
#line 23
  self->eventType_ = eventType;
  self->params_ = params;
}


#line 22
ARApiUntypedEvent *new_ARApiUntypedEvent_initWithNSString_withARApiRawValue_(NSString *eventType, ARApiRawValue *params) {
  ARApiUntypedEvent *self = [ARApiUntypedEvent alloc];
  ARApiUntypedEvent_initWithNSString_withARApiRawValue_(self, eventType, params);
  return self;
}


#line 27
void ARApiUntypedEvent_init(ARApiUntypedEvent *self) {
  (void) ARApiEvent_init(self);
}


#line 27
ARApiUntypedEvent *new_ARApiUntypedEvent_init() {
  ARApiUntypedEvent *self = [ARApiUntypedEvent alloc];
  ARApiUntypedEvent_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiUntypedEvent)

#pragma clang diagnostic pop
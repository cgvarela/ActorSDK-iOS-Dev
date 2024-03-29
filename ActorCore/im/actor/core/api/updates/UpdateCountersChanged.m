//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateCountersChanged.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiAppCounters.h"
#include "im/actor/core/api/updates/UpdateCountersChanged.h"
#include "im/actor/core/network/parser/Update.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUpdateCountersChanged () {
 @public
  ARApiAppCounters *counters_;
}

@end

J2OBJC_FIELD_SETTER(ARUpdateCountersChanged, counters_, ARApiAppCounters *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateCountersChanged.java"


#line 18
@implementation ARUpdateCountersChanged

+ (jint)HEADER {
  return ARUpdateCountersChanged_HEADER;
}


#line 21
+ (ARUpdateCountersChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARUpdateCountersChanged_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithARApiAppCounters:(ARApiAppCounters *)counters {
  ARUpdateCountersChanged_initWithARApiAppCounters_(self, counters);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARUpdateCountersChanged_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (ARApiAppCounters *)getCounters {
  return self->counters_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->counters_ = [((ARBserValues *) nil_chk(values)) getObjWithInt:1 withARBserObject:new_ARApiAppCounters_init()];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->counters_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withARBserObject:self->counters_];
}


#line 54
- (NSString *)description {
  NSString *res = @"update CountersChanged{";
  (void) JreStrAppendStrong(&res, "$@", @"counters=", self->counters_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARUpdateCountersChanged_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.updates.UpdateCountersChanged;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithARApiAppCounters:", "UpdateCountersChanged", NULL, 0x1, NULL, NULL },
    { "init", "UpdateCountersChanged", NULL, 0x1, NULL, NULL },
    { "getCounters", NULL, "Lim.actor.core.api.ApiAppCounters;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARUpdateCountersChanged_HEADER },
    { "counters_", NULL, 0x2, "Lim.actor.core.api.ApiAppCounters;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARUpdateCountersChanged = { 2, "UpdateCountersChanged", "im.actor.core.api.updates", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUpdateCountersChanged;
}

@end


#line 21
ARUpdateCountersChanged *ARUpdateCountersChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ARUpdateCountersChanged_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARUpdateCountersChanged_init(), data);
}


#line 27
void ARUpdateCountersChanged_initWithARApiAppCounters_(ARUpdateCountersChanged *self, ARApiAppCounters *counters) {
  (void) ACUpdate_init(self);
  
#line 28
  self->counters_ = counters;
}


#line 27
ARUpdateCountersChanged *new_ARUpdateCountersChanged_initWithARApiAppCounters_(ARApiAppCounters *counters) {
  ARUpdateCountersChanged *self = [ARUpdateCountersChanged alloc];
  ARUpdateCountersChanged_initWithARApiAppCounters_(self, counters);
  return self;
}


#line 31
void ARUpdateCountersChanged_init(ARUpdateCountersChanged *self) {
  (void) ACUpdate_init(self);
}


#line 31
ARUpdateCountersChanged *new_ARUpdateCountersChanged_init() {
  ARUpdateCountersChanged *self = [ARUpdateCountersChanged alloc];
  ARUpdateCountersChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdateCountersChanged)

#pragma clang diagnostic pop

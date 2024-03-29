//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContactRecord.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/ApiContactRecord.h"
#include "im/actor/core/api/ApiContactType.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Long.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiContactRecord () {
 @public
  ARApiContactTypeEnum *type_;
  NSString *typeSpec_;
  NSString *stringValue_;
  JavaLangLong *longValue_;
  NSString *title_;
  NSString *subtitle_;
}

@end

J2OBJC_FIELD_SETTER(ARApiContactRecord, type_, ARApiContactTypeEnum *)
J2OBJC_FIELD_SETTER(ARApiContactRecord, typeSpec_, NSString *)
J2OBJC_FIELD_SETTER(ARApiContactRecord, stringValue_, NSString *)
J2OBJC_FIELD_SETTER(ARApiContactRecord, longValue_, JavaLangLong *)
J2OBJC_FIELD_SETTER(ARApiContactRecord, title_, NSString *)
J2OBJC_FIELD_SETTER(ARApiContactRecord, subtitle_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiContactRecord.java"


#line 17
@implementation ARApiContactRecord


#line 26
- (instancetype)initWithARApiContactTypeEnum:(ARApiContactTypeEnum *)type
                                withNSString:(NSString *)typeSpec
                                withNSString:(NSString *)stringValue
                            withJavaLangLong:(JavaLangLong *)longValue
                                withNSString:(NSString *)title
                                withNSString:(NSString *)subtitle {
  ARApiContactRecord_initWithARApiContactTypeEnum_withNSString_withNSString_withJavaLangLong_withNSString_withNSString_(self, type, typeSpec, stringValue, longValue, title, subtitle);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 35
- (instancetype)init {
  ARApiContactRecord_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 40
- (ARApiContactTypeEnum *)getType {
  return self->type_;
}


#line 45
- (NSString *)getTypeSpec {
  return self->typeSpec_;
}


#line 50
- (NSString *)getStringValue {
  return self->stringValue_;
}


#line 55
- (JavaLangLong *)getLongValue {
  return self->longValue_;
}


#line 60
- (NSString *)getTitle {
  return self->title_;
}


#line 65
- (NSString *)getSubtitle {
  return self->subtitle_;
}


#line 70
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->type_ = ARApiContactTypeEnum_parseWithInt_([((ARBserValues *) nil_chk(values)) getIntWithInt:1]);
  self->typeSpec_ = [values optStringWithInt:6];
  self->stringValue_ = [values optStringWithInt:2];
  self->longValue_ = JavaLangLong_valueOfWithLong_([values optLongWithInt:3]);
  self->title_ = [values optStringWithInt:4];
  self->subtitle_ = [values optStringWithInt:5];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 83
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->type_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:[((ARApiContactTypeEnum *) nil_chk(self->type_)) getValue]];
  if (self->typeSpec_ != nil) {
    [writer writeStringWithInt:6 withNSString:self->typeSpec_];
  }
  if (self->stringValue_ != nil) {
    [writer writeStringWithInt:2 withNSString:self->stringValue_];
  }
  if (self->longValue_ != nil) {
    [writer writeLongWithInt:3 withLong:[self->longValue_ longLongValue]];
  }
  if (self->title_ != nil) {
    [writer writeStringWithInt:4 withNSString:self->title_];
  }
  if (self->subtitle_ != nil) {
    [writer writeStringWithInt:5 withNSString:self->subtitle_];
  }
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 113
- (NSString *)description {
  NSString *res = @"struct ContactRecord{";
  (void) JreStrAppendStrong(&res, "$@", @"type=", self->type_);
  (void) JreStrAppendStrong(&res, "$$", @", stringValue=", self->stringValue_);
  (void) JreStrAppendStrong(&res, "$@", @", longValue=", self->longValue_);
  (void) JreStrAppendStrong(&res, "$$", @", title=", self->title_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARApiContactTypeEnum:withNSString:withNSString:withJavaLangLong:withNSString:withNSString:", "ApiContactRecord", NULL, 0x1, NULL, NULL },
    { "init", "ApiContactRecord", NULL, 0x1, NULL, NULL },
    { "getType", NULL, "Lim.actor.core.api.ApiContactType;", 0x1, NULL, NULL },
    { "getTypeSpec", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getStringValue", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getLongValue", NULL, "Ljava.lang.Long;", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSubtitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "type_", NULL, 0x2, "Lim.actor.core.api.ApiContactType;", NULL, NULL, .constantValue.asLong = 0 },
    { "typeSpec_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "stringValue_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "longValue_", NULL, 0x2, "Ljava.lang.Long;", NULL, NULL, .constantValue.asLong = 0 },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "subtitle_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiContactRecord = { 2, "ApiContactRecord", "im.actor.core.api", NULL, 0x1, 11, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiContactRecord;
}

@end


#line 26
void ARApiContactRecord_initWithARApiContactTypeEnum_withNSString_withNSString_withJavaLangLong_withNSString_withNSString_(ARApiContactRecord *self, ARApiContactTypeEnum *type, NSString *typeSpec, NSString *stringValue, JavaLangLong *longValue, NSString *title, NSString *subtitle) {
  (void) ARBserObject_init(self);
  
#line 27
  self->type_ = type;
  self->typeSpec_ = typeSpec;
  self->stringValue_ = stringValue;
  self->longValue_ = longValue;
  self->title_ = title;
  self->subtitle_ = subtitle;
}


#line 26
ARApiContactRecord *new_ARApiContactRecord_initWithARApiContactTypeEnum_withNSString_withNSString_withJavaLangLong_withNSString_withNSString_(ARApiContactTypeEnum *type, NSString *typeSpec, NSString *stringValue, JavaLangLong *longValue, NSString *title, NSString *subtitle) {
  ARApiContactRecord *self = [ARApiContactRecord alloc];
  ARApiContactRecord_initWithARApiContactTypeEnum_withNSString_withNSString_withJavaLangLong_withNSString_withNSString_(self, type, typeSpec, stringValue, longValue, title, subtitle);
  return self;
}


#line 35
void ARApiContactRecord_init(ARApiContactRecord *self) {
  (void) ARBserObject_init(self);
}


#line 35
ARApiContactRecord *new_ARApiContactRecord_init() {
  ARApiContactRecord *self = [ARApiContactRecord alloc];
  ARApiContactRecord_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiContactRecord)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTextMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiMessage.h"
#include "im/actor/core/api/ApiTextMessage.h"
#include "im/actor/core/api/ApiTextMessageEx.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARApiTextMessage () {
 @public
  NSString *text_;
  id<JavaUtilList> mentions_;
  ARApiTextMessageEx *ext_;
}

@end

J2OBJC_FIELD_SETTER(ARApiTextMessage, text_, NSString *)
J2OBJC_FIELD_SETTER(ARApiTextMessage, mentions_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ARApiTextMessage, ext_, ARApiTextMessageEx *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTextMessage.java"


#line 17
@implementation ARApiTextMessage


#line 23
- (instancetype)initWithNSString:(NSString *)text
                withJavaUtilList:(id<JavaUtilList>)mentions
          withARApiTextMessageEx:(ARApiTextMessageEx *)ext {
  ARApiTextMessage_initWithNSString_withJavaUtilList_withARApiTextMessageEx_(self, text, mentions, ext);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 29
- (instancetype)init {
  ARApiTextMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 33
- (jint)getHeader {
  return 1;
}


#line 38
- (NSString *)getText {
  return self->text_;
}


#line 43
- (id<JavaUtilList>)getMentions {
  return self->mentions_;
}


#line 48
- (ARApiTextMessageEx *)getExt {
  return self->ext_;
}


#line 53
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->text_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  self->mentions_ = [values getRepeatedIntWithInt:2];
  if ([values optBytesWithInt:3] != nil) {
    self->ext_ = ARApiTextMessageEx_fromBytesWithByteArray_([values getBytesWithInt:3]);
  }
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithARSparseArray:[values buildRemaining]];
  }
}


#line 65
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->text_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->text_];
  [writer writeRepeatedIntWithInt:2 withJavaUtilList:self->mentions_];
  if (self->ext_ != nil) {
    [writer writeBytesWithInt:3 withByteArray:[self->ext_ buildContainer]];
  }
  if ([self getUnmappedObjects] != nil) {
    ARSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ARSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}


#line 84
- (NSString *)description {
  NSString *res = @"struct TextMessage{";
  (void) JreStrAppendStrong(&res, "$@", @"mentions=", self->mentions_);
  (void) JreStrAppendStrong(&res, "$@", @", ext=", self->ext_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaUtilList:withARApiTextMessageEx:", "ApiTextMessage", NULL, 0x1, NULL, NULL },
    { "init", "ApiTextMessage", NULL, 0x1, NULL, NULL },
    { "getHeader", NULL, "I", 0x1, NULL, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getMentions", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getExt", NULL, "Lim.actor.core.api.ApiTextMessageEx;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "text_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "mentions_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "ext_", NULL, 0x2, "Lim.actor.core.api.ApiTextMessageEx;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARApiTextMessage = { 2, "ApiTextMessage", "im.actor.core.api", NULL, 0x1, 9, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiTextMessage;
}

@end


#line 23
void ARApiTextMessage_initWithNSString_withJavaUtilList_withARApiTextMessageEx_(ARApiTextMessage *self, NSString *text, id<JavaUtilList> mentions, ARApiTextMessageEx *ext) {
  (void) ARApiMessage_init(self);
  
#line 24
  self->text_ = text;
  self->mentions_ = mentions;
  self->ext_ = ext;
}


#line 23
ARApiTextMessage *new_ARApiTextMessage_initWithNSString_withJavaUtilList_withARApiTextMessageEx_(NSString *text, id<JavaUtilList> mentions, ARApiTextMessageEx *ext) {
  ARApiTextMessage *self = [ARApiTextMessage alloc];
  ARApiTextMessage_initWithNSString_withJavaUtilList_withARApiTextMessageEx_(self, text, mentions, ext);
  return self;
}

void ARApiTextMessage_init(ARApiTextMessage *self) {
  (void) ARApiMessage_init(self);
}


#line 29
ARApiTextMessage *new_ARApiTextMessage_init() {
  ARApiTextMessage *self = [ARApiTextMessage alloc];
  ARApiTextMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiTextMessage)

#pragma clang diagnostic pop

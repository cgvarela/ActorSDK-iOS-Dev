//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditName.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestEditName.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditName () {
 @public
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditName, name_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditName.java"


#line 18
@implementation ARRequestEditName

+ (jint)HEADER {
  return ARRequestEditName_HEADER;
}


#line 21
+ (ARRequestEditName *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditName_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithNSString:(NSString *)name {
  ARRequestEditName_initWithNSString_(self, name);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestEditName_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (NSString *)getName {
  return self->name_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->name_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->name_];
}


#line 54
- (NSString *)description {
  NSString *res = @"rpc EditName{";
  (void) JreStrAppendStrong(&res, "$$", @"name=", self->name_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 62
- (jint)getHeaderKey {
  return ARRequestEditName_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditName;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:", "RequestEditName", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditName", NULL, 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditName_HEADER },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestEditName = { 2, "RequestEditName", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestEditName;
}

@end


#line 21
ARRequestEditName *ARRequestEditName_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditName_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditName_init(), data);
}


#line 27
void ARRequestEditName_initWithNSString_(ARRequestEditName *self, NSString *name) {
  (void) ACRequest_init(self);
  
#line 28
  self->name_ = name;
}


#line 27
ARRequestEditName *new_ARRequestEditName_initWithNSString_(NSString *name) {
  ARRequestEditName *self = [ARRequestEditName alloc];
  ARRequestEditName_initWithNSString_(self, name);
  return self;
}


#line 31
void ARRequestEditName_init(ARRequestEditName *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestEditName *new_ARRequestEditName_init() {
  ARRequestEditName *self = [ARRequestEditName alloc];
  ARRequestEditName_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditName)

#pragma clang diagnostic pop

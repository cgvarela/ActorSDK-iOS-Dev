//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestUnregisterPush.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestUnregisterPush.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestUnregisterPush.java"


#line 18
@implementation ARRequestUnregisterPush

+ (jint)HEADER {
  return ARRequestUnregisterPush_HEADER;
}


#line 21
+ (ARRequestUnregisterPush *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestUnregisterPush_fromBytesWithByteArray_(data);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARRequestUnregisterPush_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 31
- (void)parseWithARBserValues:(ARBserValues *)values {
}


#line 35
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
}


#line 39
- (NSString *)description {
  NSString *res = @"rpc UnregisterPush{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 46
- (jint)getHeaderKey {
  return ARRequestUnregisterPush_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestUnregisterPush;", 0x9, "Ljava.io.IOException;", NULL },
    { "init", "RequestUnregisterPush", NULL, 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestUnregisterPush_HEADER },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ARRequestUnregisterPush = { 2, "RequestUnregisterPush", "im.actor.core.api.rpc", NULL, 0x1, 6, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseVoid;>;" };
  return &_ARRequestUnregisterPush;
}

@end


#line 21
ARRequestUnregisterPush *ARRequestUnregisterPush_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestUnregisterPush_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestUnregisterPush_init(), data);
}


#line 26
void ARRequestUnregisterPush_init(ARRequestUnregisterPush *self) {
  (void) ACRequest_init(self);
}


#line 26
ARRequestUnregisterPush *new_ARRequestUnregisterPush_init() {
  ARRequestUnregisterPush *self = [ARRequestUnregisterPush alloc];
  ARRequestUnregisterPush_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestUnregisterPush)

#pragma clang diagnostic pop

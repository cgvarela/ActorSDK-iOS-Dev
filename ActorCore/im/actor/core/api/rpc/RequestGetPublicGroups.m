//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetPublicGroups.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/rpc/RequestGetPublicGroups.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestGetPublicGroups.java"


#line 18
@implementation ARRequestGetPublicGroups

+ (jint)HEADER {
  return ARRequestGetPublicGroups_HEADER;
}


#line 21
+ (ARRequestGetPublicGroups *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestGetPublicGroups_fromBytesWithByteArray_(data);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARRequestGetPublicGroups_init(self);
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
  NSString *res = @"rpc GetPublicGroups{";
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 46
- (jint)getHeaderKey {
  return ARRequestGetPublicGroups_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestGetPublicGroups;", 0x9, "Ljava.io.IOException;", NULL },
    { "init", "RequestGetPublicGroups", NULL, 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestGetPublicGroups_HEADER },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseGetPublicGroups;"};
  static const J2ObjcClassInfo _ARRequestGetPublicGroups = { 2, "RequestGetPublicGroups", "im.actor.core.api.rpc", NULL, 0x1, 6, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseGetPublicGroups;>;" };
  return &_ARRequestGetPublicGroups;
}

@end


#line 21
ARRequestGetPublicGroups *ARRequestGetPublicGroups_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestGetPublicGroups_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestGetPublicGroups_init(), data);
}


#line 26
void ARRequestGetPublicGroups_init(ARRequestGetPublicGroups *self) {
  (void) ACRequest_init(self);
}


#line 26
ARRequestGetPublicGroups *new_ARRequestGetPublicGroups_init() {
  ARRequestGetPublicGroups *self = [ARRequestGetPublicGroups alloc];
  ARRequestGetPublicGroups_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestGetPublicGroups)

#pragma clang diagnostic pop

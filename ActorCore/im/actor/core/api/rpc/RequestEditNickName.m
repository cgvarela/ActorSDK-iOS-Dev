//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditNickName.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/rpc/RequestEditNickName.h"
#include "im/actor/core/network/parser/Request.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARRequestEditNickName () {
 @public
  NSString *nickname_;
}

@end

J2OBJC_FIELD_SETTER(ARRequestEditNickName, nickname_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestEditNickName.java"


#line 18
@implementation ARRequestEditNickName

+ (jint)HEADER {
  return ARRequestEditNickName_HEADER;
}


#line 21
+ (ARRequestEditNickName *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ARRequestEditNickName_fromBytesWithByteArray_(data);
}


#line 27
- (instancetype)initWithNSString:(NSString *)nickname {
  ARRequestEditNickName_initWithNSString_(self, nickname);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 31
- (instancetype)init {
  ARRequestEditNickName_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 36
- (NSString *)getNickname {
  return self->nickname_;
}


#line 41
- (void)parseWithARBserValues:(ARBserValues *)values {
  self->nickname_ = [((ARBserValues *) nil_chk(values)) optStringWithInt:1];
}


#line 46
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  if (self->nickname_ != nil) {
    [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->nickname_];
  }
}


#line 53
- (NSString *)description {
  NSString *res = @"rpc EditNickName{";
  (void) JreStrAppendStrong(&res, "$$", @"nickname=", self->nickname_);
  (void) JreStrAppendStrong(&res, "$", @"}");
  return res;
}


#line 61
- (jint)getHeaderKey {
  return ARRequestEditNickName_HEADER;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.rpc.RequestEditNickName;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:", "RequestEditNickName", NULL, 0x1, NULL, NULL },
    { "init", "RequestEditNickName", NULL, 0x1, NULL, NULL },
    { "getNickname", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHeaderKey", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "I", NULL, NULL, .constantValue.asInt = ARRequestEditNickName_HEADER },
    { "nickname_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ARRequestEditNickName = { 2, "RequestEditNickName", "im.actor.core.api.rpc", NULL, 0x1, 8, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/Request<Lim/actor/core/api/rpc/ResponseSeq;>;" };
  return &_ARRequestEditNickName;
}

@end


#line 21
ARRequestEditNickName *ARRequestEditNickName_fromBytesWithByteArray_(IOSByteArray *data) {
  ARRequestEditNickName_initialize();
  
#line 22
  return ARBser_parseWithARBserObject_withByteArray_(new_ARRequestEditNickName_init(), data);
}


#line 27
void ARRequestEditNickName_initWithNSString_(ARRequestEditNickName *self, NSString *nickname) {
  (void) ACRequest_init(self);
  
#line 28
  self->nickname_ = nickname;
}


#line 27
ARRequestEditNickName *new_ARRequestEditNickName_initWithNSString_(NSString *nickname) {
  ARRequestEditNickName *self = [ARRequestEditNickName alloc];
  ARRequestEditNickName_initWithNSString_(self, nickname);
  return self;
}


#line 31
void ARRequestEditNickName_init(ARRequestEditNickName *self) {
  (void) ACRequest_init(self);
}


#line 31
ARRequestEditNickName *new_ARRequestEditNickName_init() {
  ARRequestEditNickName *self = [ARRequestEditNickName alloc];
  ARRequestEditNickName_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARRequestEditNickName)

#pragma clang diagnostic pop

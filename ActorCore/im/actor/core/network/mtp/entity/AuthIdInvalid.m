//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/AuthIdInvalid.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/network/mtp/entity/AuthIdInvalid.h"
#include "im/actor/core/network/mtp/entity/ProtoStruct.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/AuthIdInvalid.java"


#line 12
@implementation ACAuthIdInvalid

+ (jbyte)HEADER {
  return ACAuthIdInvalid_HEADER;
}


#line 16
- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACAuthIdInvalid_initWithARDataInput_(self, stream);
  return self;
}

- (jbyte)getHeader {
  return ACAuthIdInvalid_HEADER;
}


#line 26
- (void)writeBodyWithARDataOutput:(ARDataOutput *)bs {
}


#line 31
- (void)readBodyWithARDataInput:(ARDataInput *)bs {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "AuthIdInvalid", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getHeader", NULL, "B", 0x4, NULL, NULL },
    { "writeBodyWithARDataOutput:", "writeBody", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "readBodyWithARDataInput:", "readBody", "V", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER", "HEADER", 0x19, "B", NULL, NULL, .constantValue.asChar = ACAuthIdInvalid_HEADER },
  };
  static const J2ObjcClassInfo _ACAuthIdInvalid = { 2, "AuthIdInvalid", "im.actor.core.network.mtp.entity", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACAuthIdInvalid;
}

@end


#line 16
void ACAuthIdInvalid_initWithARDataInput_(ACAuthIdInvalid *self, ARDataInput *stream) {
  (void) ACProtoStruct_initWithARDataInput_(self, stream);
}


#line 16
ACAuthIdInvalid *new_ACAuthIdInvalid_initWithARDataInput_(ARDataInput *stream) {
  ACAuthIdInvalid *self = [ACAuthIdInvalid alloc];
  ACAuthIdInvalid_initWithARDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACAuthIdInvalid)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/ProtoObject.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/network/mtp/entity/ProtoObject.h"
#include "im/actor/runtime/Log.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/entity/ProtoObject.java"


#line 13
@implementation ACProtoObject

- (instancetype)initWithARDataInput:(ARDataInput *)stream {
  ACProtoObject_initWithARDataInput_(self, stream);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 19
- (instancetype)init {
  ACProtoObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 23
- (void)writeObjectWithARDataOutput:(ARDataOutput *)bs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 25
- (ACProtoObject *)readObjectWithARDataInput:(ARDataInput *)bs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 27
- (IOSByteArray *)toByteArray {
  ARDataOutput *outputStream = new_ARDataOutput_init();
  @try {
    [self writeObjectWithARDataOutput:outputStream];
  }
  @catch (
#line 31
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    ARLog_wWithNSString_withNSString_(@"ProtoObject", JreStrcat("$$", @"Error: ", [e getMessage]));
  }
  return [outputStream toByteArray];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARDataInput:", "ProtoObject", NULL, 0x4, "Ljava.io.IOException;", NULL },
    { "init", "ProtoObject", NULL, 0x4, NULL, NULL },
    { "writeObjectWithARDataOutput:", "writeObject", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "readObjectWithARDataInput:", "readObject", "Lim.actor.core.network.mtp.entity.ProtoObject;", 0x401, "Ljava.io.IOException;", NULL },
    { "toByteArray", NULL, "[B", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACProtoObject = { 2, "ProtoObject", "im.actor.core.network.mtp.entity", NULL, 0x401, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACProtoObject;
}

@end


#line 15
void ACProtoObject_initWithARDataInput_(ACProtoObject *self, ARDataInput *stream) {
  (void) NSObject_init(self);
  
#line 16
  (void) [self readObjectWithARDataInput:stream];
}


#line 19
void ACProtoObject_init(ACProtoObject *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACProtoObject)

#pragma clang diagnostic pop

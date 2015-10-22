//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTextMessageEx.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiTextExMarkdown.h"
#include "im/actor/core/api/ApiTextMessageEx.h"
#include "im/actor/core/api/ApiTextMessageExUnsupported.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserParser.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/DataOutput.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiTextMessageEx.java"


#line 17
@implementation ARApiTextMessageEx


#line 18
+ (ARApiTextMessageEx *)fromBytesWithByteArray:(IOSByteArray *)src {
  return ARApiTextMessageEx_fromBytesWithByteArray_(src);
}


#line 27
- (jint)getHeader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 29
- (IOSByteArray *)buildContainer {
  ARDataOutput *res = new_ARDataOutput_init();
  ARBserWriter *writer = new_ARBserWriter_initWithARDataOutput_(res);
  [writer writeIntWithInt:1 withInt:[self getHeader]];
  [writer writeBytesWithInt:2 withByteArray:[self toByteArray]];
  return [res toByteArray];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARApiTextMessageEx_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.api.ApiTextMessageEx;", 0x9, "Ljava.io.IOException;", NULL },
    { "getHeader", NULL, "I", 0x401, NULL, NULL },
    { "buildContainer", NULL, "[B", 0x1, "Ljava.io.IOException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARApiTextMessageEx = { 2, "ApiTextMessageEx", "im.actor.core.api", NULL, 0x401, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARApiTextMessageEx;
}

@end


#line 18
ARApiTextMessageEx *ARApiTextMessageEx_fromBytesWithByteArray_(IOSByteArray *src) {
  ARApiTextMessageEx_initialize();
  
#line 19
  ARBserValues *values = new_ARBserValues_initWithARSparseArray_(ARBserParser_deserializeWithARDataInput_(new_ARDataInput_initWithByteArray_withInt_withInt_(src, 0, ((IOSByteArray *) nil_chk(src))->size_)));
  jint key = [values getIntWithInt:1];
  IOSByteArray *content = [values getBytesWithInt:2];
  switch (key) {
    case 1:
    
#line 23
    return ARBser_parseWithARBserObject_withByteArray_(new_ARApiTextExMarkdown_init(), content);
    default:
    
#line 24
    return new_ARApiTextMessageExUnsupported_initWithInt_withByteArray_(key, content);
  }
}

void ARApiTextMessageEx_init(ARApiTextMessageEx *self) {
  (void) ARBserObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARApiTextMessageEx)

#pragma clang diagnostic pop

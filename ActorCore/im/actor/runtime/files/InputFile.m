//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/files/InputFile.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/files/FileReadCallback.h"
#include "im/actor/runtime/files/InputFile.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARInputFile : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/files/InputFile.java"


#line 9
@implementation ARInputFile

+ (IOSObjectArray *)__annotations_readWithInt_withByteArray_withInt_withInt_withARFileReadCallback_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"readWithOffset:withData:withDataOffset:withLength:withCallback:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_close {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"close"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithOffset:withData:withDataOffset:withLength:withCallback:", "read", "V", 0x401, NULL, NULL },
    { "close", NULL, "Z", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARInputFile = { 2, "InputFile", "im.actor.runtime.files", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARInputFile;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARInputFile)

#pragma clang diagnostic pop

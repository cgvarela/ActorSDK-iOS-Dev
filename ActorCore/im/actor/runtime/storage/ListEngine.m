//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/ListEngine.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/storage/ListEngine.h"
#include "im/actor/runtime/storage/ListEngineItem.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARListEngine : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/ListEngine.java"


#line 13
@implementation ARListEngine

+ (IOSObjectArray *)__annotations_addOrUpdateItemWithARBserObject_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"addOrUpdateItem:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_addOrUpdateItemsWithJavaUtilList_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"addOrUpdateItems:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_replaceItemsWithJavaUtilList_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"replaceItems:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_removeItemWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"removeItemWithKey:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_removeItemsWithLongArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"removeItemsWithKeys:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_clear {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"clear"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getValueWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getValueWithKey:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getHeadValue {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getHeadValue"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_isEmpty {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"isEmpty"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getCount {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getCount"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addOrUpdateItem:", "addOrUpdateItem", "V", 0x401, NULL, "(TT;)V" },
    { "addOrUpdateItems:", "addOrUpdateItems", "V", 0x401, NULL, NULL },
    { "replaceItems:", "replaceItems", "V", 0x401, NULL, NULL },
    { "removeItemWithKey:", "removeItem", "V", 0x401, NULL, NULL },
    { "removeItemsWithKeys:", "removeItems", "V", 0x401, NULL, NULL },
    { "clear", NULL, "V", 0x401, NULL, NULL },
    { "getValueWithKey:", "getValue", "TT;", 0x401, NULL, "(J)TT;" },
    { "getHeadValue", NULL, "TT;", 0x401, NULL, "()TT;" },
    { "isEmpty", NULL, "Z", 0x401, NULL, NULL },
    { "getCount", NULL, "I", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARListEngine = { 2, "ListEngine", "im.actor.runtime.storage", NULL, 0x609, 10, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Lim/actor/runtime/bser/BserObject;:Lim/actor/runtime/storage/ListEngineItem;>Ljava/lang/Object;" };
  return &_ARListEngine;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARListEngine)

#pragma clang diagnostic pop
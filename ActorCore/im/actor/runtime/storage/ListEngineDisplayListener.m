//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/ListEngineDisplayListener.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/storage/ListEngineDisplayListener.h"
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARListEngineDisplayListener : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/ListEngineDisplayListener.java"


#line 11
@implementation ARListEngineDisplayListener

+ (IOSObjectArray *)__annotations_onItemRemovedWithLong_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onItemRemovedWithKey:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onItemsRemovedWithLongArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onItemsRemovedWithKeys:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_addOrUpdateWithId_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"addOrUpdate:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_addOrUpdateWithJavaUtilList_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"addOrUpdateWithList:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onItemsReplacedWithJavaUtilList_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onItemsReplacedWithList:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_onListClear {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"onListClear"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onItemRemovedWithKey:", "onItemRemoved", "V", 0x401, NULL, NULL },
    { "onItemsRemovedWithKeys:", "onItemsRemoved", "V", 0x401, NULL, NULL },
    { "addOrUpdate:", "addOrUpdate", "V", 0x401, NULL, "(TT;)V" },
    { "addOrUpdateWithList:", "addOrUpdate", "V", 0x401, NULL, NULL },
    { "onItemsReplacedWithList:", "onItemsReplaced", "V", 0x401, NULL, NULL },
    { "onListClear", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARListEngineDisplayListener = { 2, "ListEngineDisplayListener", "im.actor.runtime.storage", NULL, 0x609, 6, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_ARListEngineDisplayListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARListEngineDisplayListener)

#pragma clang diagnostic pop

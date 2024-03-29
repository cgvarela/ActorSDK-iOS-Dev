//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/StorageRuntime.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/StorageRuntime.h"
#include "im/actor/runtime/storage/IndexStorage.h"
#include "im/actor/runtime/storage/KeyValueStorage.h"
#include "im/actor/runtime/storage/ListStorage.h"
#include "im/actor/runtime/storage/PreferencesStorage.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARStorageRuntime : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/StorageRuntime.java"


#line 22
@implementation ARStorageRuntime

+ (IOSObjectArray *)__annotations_createPreferencesStorage {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"createPreferencesStorage"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_createIndexWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"createIndexWithName:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_createKeyValueWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"createKeyValueWithName:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_createListWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"createListWithName:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_resetStorage {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"resetStorage"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createPreferencesStorage", NULL, "Lim.actor.runtime.storage.PreferencesStorage;", 0x401, NULL, NULL },
    { "createIndexWithName:", "createIndex", "Lim.actor.runtime.storage.IndexStorage;", 0x401, NULL, NULL },
    { "createKeyValueWithName:", "createKeyValue", "Lim.actor.runtime.storage.KeyValueStorage;", 0x401, NULL, NULL },
    { "createListWithName:", "createList", "Lim.actor.runtime.storage.ListStorage;", 0x401, NULL, NULL },
    { "resetStorage", NULL, "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARStorageRuntime = { 2, "StorageRuntime", "im.actor.runtime", NULL, 0x609, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARStorageRuntime;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARStorageRuntime)

#pragma clang diagnostic pop

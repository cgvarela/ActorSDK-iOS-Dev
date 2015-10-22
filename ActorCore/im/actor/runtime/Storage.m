//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Storage.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/EnginesRuntime.h"
#include "im/actor/runtime/EnginesRuntimeProvider.h"
#include "im/actor/runtime/FileSystemRuntime.h"
#include "im/actor/runtime/FileSystemRuntimeProvider.h"
#include "im/actor/runtime/Storage.h"
#include "im/actor/runtime/StorageRuntime.h"
#include "im/actor/runtime/StorageRuntimeProvider.h"
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/files/FileSystemReference.h"
#include "im/actor/runtime/mvvm/MVVMCollection.h"
#include "im/actor/runtime/mvvm/PlatformDisplayList.h"
#include "im/actor/runtime/mvvm/ValueModelCreator.h"
#include "im/actor/runtime/storage/IndexStorage.h"
#include "im/actor/runtime/storage/KeyValueStorage.h"
#include "im/actor/runtime/storage/ListEngine.h"
#include "im/actor/runtime/storage/ListStorage.h"
#include "im/actor/runtime/storage/PreferencesStorage.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static id<ARStorageRuntime> ARStorage_storageRuntime_;
J2OBJC_STATIC_FIELD_GETTER(ARStorage, storageRuntime_, id<ARStorageRuntime>)

static id<AREnginesRuntime> ARStorage_enginesRuntime_;
J2OBJC_STATIC_FIELD_GETTER(ARStorage, enginesRuntime_, id<AREnginesRuntime>)

static id<ARFileSystemRuntime> ARStorage_fileSystemRuntime_;
J2OBJC_STATIC_FIELD_GETTER(ARStorage, fileSystemRuntime_, id<ARFileSystemRuntime>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Storage.java"

J2OBJC_INITIALIZED_DEFN(ARStorage)


#line 17
@implementation ARStorage


#line 25
+ (id<ARStorageRuntime>)getStorageRuntime {
  return ARStorage_getStorageRuntime();
}

+ (id<AREnginesRuntime>)getEnginesRuntime {
  return ARStorage_getEnginesRuntime();
}

+ (id<ARFileSystemRuntime>)getFileSystemRuntime {
  return ARStorage_getFileSystemRuntime();
}


#line 40
+ (id<ARPreferencesStorage>)createPreferencesStorage {
  return ARStorage_createPreferencesStorage();
}

+ (id<ARIndexStorage>)createIndexWithNSString:(NSString *)name {
  return ARStorage_createIndexWithNSString_(name);
}

+ (id<ARKeyValueStorage>)createKeyValueWithNSString:(NSString *)name {
  return ARStorage_createKeyValueWithNSString_(name);
}

+ (id<ARListEngine>)createListWithNSString:(NSString *)name
                         withARBserCreator:(id<ARBserCreator>)creator {
  return ARStorage_createListWithNSString_withARBserCreator_(name, creator);
}

+ (ARMVVMCollection *)createKeyValueWithNSString:(NSString *)name
                         withARValueModelCreator:(id<ARValueModelCreator>)wrapperCreator
                               withARBserCreator:(id<ARBserCreator>)creator {
  return ARStorage_createKeyValueWithNSString_withARValueModelCreator_withARBserCreator_(name, wrapperCreator, creator);
}

+ (id<ARPlatformDisplayList>)createDisplayListWithARListEngine:(id<ARListEngine>)engine
                                                   withBoolean:(jboolean)isSharedInstance
                                                  withNSString:(NSString *)entityName {
  return ARStorage_createDisplayListWithARListEngine_withBoolean_withNSString_(engine, isSharedInstance, entityName);
}

+ (void)resetStorage {
  ARStorage_resetStorage();
}


#line 75
+ (id<ARFileSystemReference>)createTempFile {
  return ARStorage_createTempFile();
}

+ (jboolean)isFsPersistent {
  return ARStorage_isFsPersistent();
}

+ (id<ARFileSystemReference>)fileFromDescriptorWithNSString:(NSString *)descriptor {
  return ARStorage_fileFromDescriptorWithNSString_(descriptor);
}

+ (id<ARFileSystemReference>)commitTempFileWithARFileSystemReference:(id<ARFileSystemReference>)sourceFile
                                                            withLong:(jlong)fileId
                                                        withNSString:(NSString *)fileName {
  return ARStorage_commitTempFileWithARFileSystemReference_withLong_withNSString_(sourceFile, fileId, fileName);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARStorage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [ARStorage class]) {
    ARStorage_storageRuntime_ = new_ARStorageRuntimeProvider_init();
    ARStorage_enginesRuntime_ = new_AREnginesRuntimeProvider_init();
    ARStorage_fileSystemRuntime_ = new_ARFileSystemRuntimeProvider_init();
    J2OBJC_SET_INITIALIZED(ARStorage)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getStorageRuntime", NULL, "Lim.actor.runtime.StorageRuntime;", 0x9, NULL, NULL },
    { "getEnginesRuntime", NULL, "Lim.actor.runtime.EnginesRuntime;", 0x9, NULL, NULL },
    { "getFileSystemRuntime", NULL, "Lim.actor.runtime.FileSystemRuntime;", 0x9, NULL, NULL },
    { "createPreferencesStorage", NULL, "Lim.actor.runtime.storage.PreferencesStorage;", 0x9, NULL, NULL },
    { "createIndexWithNSString:", "createIndex", "Lim.actor.runtime.storage.IndexStorage;", 0x9, NULL, NULL },
    { "createKeyValueWithNSString:", "createKeyValue", "Lim.actor.runtime.storage.KeyValueStorage;", 0x9, NULL, NULL },
    { "createListWithNSString:withARBserCreator:", "createList", "Lim.actor.runtime.storage.ListEngine;", 0x9, NULL, "<T:Lim/actor/runtime/bser/BserObject;:Lim/actor/runtime/storage/ListEngineItem;>(Ljava/lang/String;Lim/actor/runtime/bser/BserCreator<TT;>;)Lim/actor/runtime/storage/ListEngine<TT;>;" },
    { "createKeyValueWithNSString:withARValueModelCreator:withARBserCreator:", "createKeyValue", "Lim.actor.runtime.mvvm.MVVMCollection;", 0x9, NULL, "<V:Lim/actor/runtime/mvvm/BaseValueModel<TT;>;T:Lim/actor/runtime/bser/BserObject;:Lim/actor/runtime/storage/KeyValueItem;>(Ljava/lang/String;Lim/actor/runtime/mvvm/ValueModelCreator<TT;TV;>;Lim/actor/runtime/bser/BserCreator<TT;>;)Lim/actor/runtime/mvvm/MVVMCollection<TT;TV;>;" },
    { "createDisplayListWithARListEngine:withBoolean:withNSString:", "createDisplayList", "Lim.actor.runtime.mvvm.PlatformDisplayList;", 0x9, NULL, "<T:Lim/actor/runtime/bser/BserObject;:Lim/actor/runtime/storage/ListEngineItem;>(Lim/actor/runtime/storage/ListEngine<TT;>;ZLjava/lang/String;)Lim/actor/runtime/mvvm/PlatformDisplayList<TT;>;" },
    { "resetStorage", NULL, "V", 0x9, NULL, NULL },
    { "createTempFile", NULL, "Lim.actor.runtime.files.FileSystemReference;", 0x9, NULL, NULL },
    { "isFsPersistent", NULL, "Z", 0x9, NULL, NULL },
    { "fileFromDescriptorWithNSString:", "fileFromDescriptor", "Lim.actor.runtime.files.FileSystemReference;", 0x9, NULL, NULL },
    { "commitTempFileWithARFileSystemReference:withLong:withNSString:", "commitTempFile", "Lim.actor.runtime.files.FileSystemReference;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "storageRuntime_", NULL, 0x1a, "Lim.actor.runtime.StorageRuntime;", &ARStorage_storageRuntime_, NULL, .constantValue.asLong = 0 },
    { "enginesRuntime_", NULL, 0x1a, "Lim.actor.runtime.EnginesRuntime;", &ARStorage_enginesRuntime_, NULL, .constantValue.asLong = 0 },
    { "fileSystemRuntime_", NULL, 0x1a, "Lim.actor.runtime.FileSystemRuntime;", &ARStorage_fileSystemRuntime_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARStorage = { 2, "Storage", "im.actor.runtime", NULL, 0x1, 15, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARStorage;
}

@end


#line 25
id<ARStorageRuntime> ARStorage_getStorageRuntime() {
  ARStorage_initialize();
  
#line 26
  return ARStorage_storageRuntime_;
}


#line 29
id<AREnginesRuntime> ARStorage_getEnginesRuntime() {
  ARStorage_initialize();
  
#line 30
  return ARStorage_enginesRuntime_;
}


#line 33
id<ARFileSystemRuntime> ARStorage_getFileSystemRuntime() {
  ARStorage_initialize();
  
#line 34
  return ARStorage_fileSystemRuntime_;
}

id<ARPreferencesStorage> ARStorage_createPreferencesStorage() {
  ARStorage_initialize();
  
#line 41
  return [((id<ARStorageRuntime>) nil_chk(ARStorage_storageRuntime_)) createPreferencesStorage];
}


#line 44
id<ARIndexStorage> ARStorage_createIndexWithNSString_(NSString *name) {
  ARStorage_initialize();
  
#line 45
  return [((id<ARStorageRuntime>) nil_chk(ARStorage_storageRuntime_)) createIndexWithName:name];
}


#line 48
id<ARKeyValueStorage> ARStorage_createKeyValueWithNSString_(NSString *name) {
  ARStorage_initialize();
  
#line 49
  return [((id<ARStorageRuntime>) nil_chk(ARStorage_storageRuntime_)) createKeyValueWithName:name];
}


#line 52
id<ARListEngine> ARStorage_createListWithNSString_withARBserCreator_(NSString *name, id<ARBserCreator> creator) {
  ARStorage_initialize();
  
#line 53
  return [((id<AREnginesRuntime>) nil_chk(ARStorage_enginesRuntime_)) createListEngineWithARListStorage:[((id<ARStorageRuntime>) nil_chk(ARStorage_storageRuntime_)) createListWithName:name] withARBserCreator:creator];
}


#line 57
ARMVVMCollection *ARStorage_createKeyValueWithNSString_withARValueModelCreator_withARBserCreator_(NSString *name, id<ARValueModelCreator> wrapperCreator, id<ARBserCreator> creator) {
  ARStorage_initialize();
  
#line 60
  return new_ARMVVMCollection_initWithARKeyValueStorage_withARValueModelCreator_withARBserCreator_([((id<ARStorageRuntime>) nil_chk(ARStorage_storageRuntime_)) createKeyValueWithName:name], wrapperCreator, creator);
}


#line 63
id<ARPlatformDisplayList> ARStorage_createDisplayListWithARListEngine_withBoolean_withNSString_(id<ARListEngine> engine, jboolean isSharedInstance, NSString *entityName) {
  ARStorage_initialize();
  
#line 66
  return [((id<AREnginesRuntime>) nil_chk(ARStorage_enginesRuntime_)) createDisplayListWithARListEngine:engine withBoolean:isSharedInstance withNSString:entityName];
}


#line 69
void ARStorage_resetStorage() {
  ARStorage_initialize();
  
#line 70
  [((id<ARStorageRuntime>) nil_chk(ARStorage_storageRuntime_)) resetStorage];
}


#line 75
id<ARFileSystemReference> ARStorage_createTempFile() {
  ARStorage_initialize();
  
#line 76
  return [((id<ARFileSystemRuntime>) nil_chk(ARStorage_fileSystemRuntime_)) createTempFile];
}


#line 79
jboolean ARStorage_isFsPersistent() {
  ARStorage_initialize();
  
#line 80
  return [((id<ARFileSystemRuntime>) nil_chk(ARStorage_fileSystemRuntime_)) isFsPersistent];
}


#line 83
id<ARFileSystemReference> ARStorage_fileFromDescriptorWithNSString_(NSString *descriptor) {
  ARStorage_initialize();
  
#line 84
  return [((id<ARFileSystemRuntime>) nil_chk(ARStorage_fileSystemRuntime_)) fileFromDescriptor:descriptor];
}


#line 87
id<ARFileSystemReference> ARStorage_commitTempFileWithARFileSystemReference_withLong_withNSString_(id<ARFileSystemReference> sourceFile, jlong fileId, NSString *fileName) {
  ARStorage_initialize();
  
#line 88
  return [((id<ARFileSystemRuntime>) nil_chk(ARStorage_fileSystemRuntime_)) commitTempFile:sourceFile withFileId:fileId withFileName:fileName];
}

void ARStorage_init(ARStorage *self) {
  (void) NSObject_init(self);
}

ARStorage *new_ARStorage_init() {
  ARStorage *self = [ARStorage alloc];
  ARStorage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARStorage)

#pragma clang diagnostic pop
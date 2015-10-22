//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/memory/MemoryListEngine.java
//

#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserParser.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "im/actor/runtime/storage/ListEngineItem.h"
#include "im/actor/runtime/storage/ListEngineRecord.h"
#include "im/actor/runtime/storage/ObjectCache.h"
#include "im/actor/runtime/storage/memory/MemoryListEngine.h"
#include "im/actor/runtime/storage/memory/MemoryListStorage.h"
#include <j2objc/java/io/IOException.h>
#include <j2objc/java/lang/Long.h>
#include <j2objc/java/util/ArrayList.h>
#include <j2objc/java/util/List.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMemoryListEngine () {
 @public
  id LOCK_;
  ARObjectCache *cache_;
  ARMemoryListStorage *storage_;
  id<ARBserCreator> creator_;
}

- (id)loadValueWithLong:(jlong)key;

@end

J2OBJC_FIELD_SETTER(ARMemoryListEngine, LOCK_, id)
J2OBJC_FIELD_SETTER(ARMemoryListEngine, cache_, ARObjectCache *)
J2OBJC_FIELD_SETTER(ARMemoryListEngine, storage_, ARMemoryListStorage *)
J2OBJC_FIELD_SETTER(ARMemoryListEngine, creator_, id<ARBserCreator>)

__attribute__((unused)) static id ARMemoryListEngine_loadValueWithLong_(ARMemoryListEngine *self, jlong key);

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/memory/MemoryListEngine.java"


#line 17
@implementation ARMemoryListEngine


#line 24
- (instancetype)initWithARMemoryListStorage:(ARMemoryListStorage *)storage
                          withARBserCreator:(id<ARBserCreator>)creator {
  ARMemoryListEngine_initWithARMemoryListStorage_withARBserCreator_(self, storage, creator);
  return self;
}

- (void)addOrUpdateItem:(ARBserObject<ARListEngineItem> *)item {
  @synchronized(LOCK_) {
    [((ARObjectCache *) nil_chk(cache_)) onObjectUpdatedWithId:JavaLangLong_valueOfWithLong_([((ARBserObject<ARListEngineItem> *) nil_chk(item)) getEngineId]) withId:item];
    
#line 34
    [((ARMemoryListStorage *) nil_chk(storage_)) updateOrAddWithValue:new_ARListEngineRecord_initWithKey_withOrder_withQuery_withData_(
#line 35
    [item getEngineId],
#line 36
    [item getEngineSort],
#line 37
    [item getEngineSearch],
#line 38
    [item toByteArray])];
  }
}


#line 43
- (void)addOrUpdateItems:(id<JavaUtilList>)items {
  @synchronized(LOCK_) {
    JavaUtilArrayList *records = new_JavaUtilArrayList_init();
    for (ARBserObject<ARListEngineItem> * __strong item in nil_chk(items)) {
      [((ARObjectCache *) nil_chk(cache_)) onObjectUpdatedWithId:JavaLangLong_valueOfWithLong_([((ARBserObject<ARListEngineItem> *) nil_chk(item)) getEngineId]) withId:item];
      [records addWithId:new_ARListEngineRecord_initWithKey_withOrder_withQuery_withData_([item getEngineId],
#line 49
      [item getEngineSort],
#line 50
      [item getEngineSearch],
#line 51
      [item toByteArray])];
    }
    [((ARMemoryListStorage *) nil_chk(storage_)) updateOrAddWithList:records];
  }
}


#line 58
- (void)replaceItems:(id<JavaUtilList>)items {
  @synchronized(LOCK_) {
    [((ARObjectCache *) nil_chk(cache_)) clear];
    
#line 62
    JavaUtilArrayList *records = new_JavaUtilArrayList_init();
    for (ARBserObject<ARListEngineItem> * __strong item in nil_chk(items)) {
      [cache_ onObjectUpdatedWithId:JavaLangLong_valueOfWithLong_([((ARBserObject<ARListEngineItem> *) nil_chk(item)) getEngineId]) withId:item];
      [records addWithId:new_ARListEngineRecord_initWithKey_withOrder_withQuery_withData_([item getEngineId],
#line 66
      [item getEngineSort],
#line 67
      [item getEngineSearch],
#line 68
      [item toByteArray])];
    }
    [((ARMemoryListStorage *) nil_chk(storage_)) clear];
    [storage_ updateOrAddWithList:records];
  }
}


#line 76
- (void)removeItemWithKey:(jlong)key {
  @synchronized(LOCK_) {
    [((ARObjectCache *) nil_chk(cache_)) removeObjectWithId:JavaLangLong_valueOfWithLong_(key)];
    [((ARMemoryListStorage *) nil_chk(storage_)) deleteWithKey:key];
  }
}


#line 84
- (void)removeItemsWithKeys:(IOSLongArray *)keys {
  @synchronized(LOCK_) {
    {
      IOSLongArray *a__ =
#line 86
      keys;
      jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
      jlong const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jlong l = *b__++;
        
#line 87
        [((ARObjectCache *) nil_chk(cache_)) removeObjectWithId:JavaLangLong_valueOfWithLong_(l)];
      }
    }
    
#line 89
    [((ARMemoryListStorage *) nil_chk(storage_)) deleteWithKeys:keys];
  }
}


#line 94
- (void)clear {
  @synchronized(LOCK_) {
    [((ARObjectCache *) nil_chk(cache_)) clear];
    [((ARMemoryListStorage *) nil_chk(storage_)) clear];
  }
}


#line 102
- (id)getValueWithKey:(jlong)key {
  @synchronized(LOCK_) {
    return ARMemoryListEngine_loadValueWithLong_(self, key);
  }
}


#line 109
- (id)getHeadValue {
  @synchronized(LOCK_) {
    JavaLangLong *key = [((ARMemoryListStorage *) nil_chk(storage_)) getTopKey];
    if (key == nil) {
      return nil;
    }
    return ARMemoryListEngine_loadValueWithLong_(self, [((JavaLangLong *) nil_chk(key)) longLongValue]);
  }
}


#line 120
- (jboolean)isEmpty {
  return [((ARMemoryListStorage *) nil_chk(storage_)) isEmpty];
}


#line 125
- (jint)getCount {
  return [((ARMemoryListStorage *) nil_chk(storage_)) getCount];
}

- (id)loadValueWithLong:(jlong)key {
  return ARMemoryListEngine_loadValueWithLong_(self, key);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARMemoryListStorage:withARBserCreator:", "MemoryListEngine", NULL, 0x1, NULL, NULL },
    { "addOrUpdateItem:", "addOrUpdateItem", "V", 0x1, NULL, "(TT;)V" },
    { "addOrUpdateItems:", "addOrUpdateItems", "V", 0x1, NULL, NULL },
    { "replaceItems:", "replaceItems", "V", 0x1, NULL, NULL },
    { "removeItemWithKey:", "removeItem", "V", 0x1, NULL, NULL },
    { "removeItemsWithKeys:", "removeItems", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "getValueWithKey:", "getValue", "TT;", 0x1, NULL, "(J)TT;" },
    { "getHeadValue", NULL, "TT;", 0x1, NULL, "()TT;" },
    { "isEmpty", NULL, "Z", 0x1, NULL, NULL },
    { "getCount", NULL, "I", 0x1, NULL, NULL },
    { "loadValueWithLong:", "loadValue", "TT;", 0x2, NULL, "(J)TT;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOCK_", NULL, 0x12, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "cache_", NULL, 0x12, "Lim.actor.runtime.storage.ObjectCache;", NULL, "Lim/actor/runtime/storage/ObjectCache<Ljava/lang/Long;TT;>;", .constantValue.asLong = 0 },
    { "storage_", NULL, 0x12, "Lim.actor.runtime.storage.memory.MemoryListStorage;", NULL, NULL, .constantValue.asLong = 0 },
    { "creator_", NULL, 0x12, "Lim.actor.runtime.bser.BserCreator;", NULL, "Lim/actor/runtime/bser/BserCreator<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARMemoryListEngine = { 2, "MemoryListEngine", "im.actor.runtime.storage.memory", NULL, 0x1, 12, methods, 4, fields, 0, NULL, 0, NULL, NULL, "<T:Lim/actor/runtime/bser/BserObject;:Lim/actor/runtime/storage/ListEngineItem;>Ljava/lang/Object;Lim/actor/runtime/storage/ListEngine<TT;>;" };
  return &_ARMemoryListEngine;
}

@end


#line 24
void ARMemoryListEngine_initWithARMemoryListStorage_withARBserCreator_(ARMemoryListEngine *self, ARMemoryListStorage *storage, id<ARBserCreator> creator) {
  (void) NSObject_init(self);
  self->LOCK_ = new_NSObject_init();
  self->cache_ = new_ARObjectCache_init();
  
#line 25
  self->storage_ = storage;
  self->creator_ = creator;
}


#line 24
ARMemoryListEngine *new_ARMemoryListEngine_initWithARMemoryListStorage_withARBserCreator_(ARMemoryListStorage *storage, id<ARBserCreator> creator) {
  ARMemoryListEngine *self = [ARMemoryListEngine alloc];
  ARMemoryListEngine_initWithARMemoryListStorage_withARBserCreator_(self, storage, creator);
  return self;
}


#line 129
id ARMemoryListEngine_loadValueWithLong_(ARMemoryListEngine *self, jlong key) {
  ARBserObject<ARListEngineItem> *res = [((ARObjectCache *) nil_chk(self->cache_)) lookupWithId:JavaLangLong_valueOfWithLong_(key)];
  if (res != nil) {
    return res;
  }
  
#line 135
  ARListEngineRecord *record = [((ARMemoryListStorage *) nil_chk(self->storage_)) loadItemWithKey:key];
  if (record == nil) {
    return nil;
  }
  @try {
    res = [((id<ARBserCreator>) nil_chk(self->creator_)) createInstance];
    [((ARBserObject<ARListEngineItem> *) nil_chk(res)) parseWithARBserValues:new_ARBserValues_initWithARSparseArray_(ARBserParser_deserializeWithARDataInput_(new_ARDataInput_initWithByteArray_([((ARListEngineRecord *) nil_chk(record)) getData])))];
  }
  @catch (
#line 142
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    return nil;
  }
  
#line 147
  [self->cache_ onObjectLoadedWithId:JavaLangLong_valueOfWithLong_(key) withId:res];
  return res;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMemoryListEngine)

#pragma clang diagnostic pop

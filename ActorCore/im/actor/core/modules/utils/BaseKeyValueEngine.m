//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/utils/BaseKeyValueEngine.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/modules/utils/BaseKeyValueEngine.h"
#include "im/actor/runtime/storage/KeyValueItem.h"
#include "im/actor/runtime/storage/KeyValueRecord.h"
#include "im/actor/runtime/storage/KeyValueStorage.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACBaseKeyValueEngine () {
 @public
  JavaUtilHashMap *cache_;
  id<ARKeyValueStorage> storage_;
}

@end

J2OBJC_FIELD_SETTER(ACBaseKeyValueEngine, cache_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ACBaseKeyValueEngine, storage_, id<ARKeyValueStorage>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/utils/BaseKeyValueEngine.java"


#line 16
@implementation ACBaseKeyValueEngine


#line 21
- (instancetype)initWithARKeyValueStorage:(id<ARKeyValueStorage>)storage {
  ACBaseKeyValueEngine_initWithARKeyValueStorage_(self, storage);
  return self;
}


#line 25
- (IOSByteArray *)serializeWithARKeyValueItem:(id<ARKeyValueItem>)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 27
- (id)deserializeWithByteArray:(IOSByteArray *)data {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 30
- (void)addOrUpdateItem:(id<ARKeyValueItem>)item {
  @synchronized(self) {
    
#line 31
    (void) [((JavaUtilHashMap *) nil_chk(cache_)) putWithId:JavaLangLong_valueOfWithLong_([((id<ARKeyValueItem>) nil_chk(item)) getEngineId]) withId:item];
    IOSByteArray *data = [self serializeWithARKeyValueItem:item];
    [((id<ARKeyValueStorage>) nil_chk(storage_)) addOrUpdateItemWithKey:[item getEngineId] withData:data];
  }
}


#line 37
- (void)addOrUpdateItems:(id<JavaUtilList>)values {
  @synchronized(self) {
    
#line 38
    for (id<ARKeyValueItem> __strong t in nil_chk(values)) {
      (void) [((JavaUtilHashMap *) nil_chk(cache_)) putWithId:JavaLangLong_valueOfWithLong_([((id<ARKeyValueItem>) nil_chk(t)) getEngineId]) withId:t];
    }
    
#line 42
    JavaUtilArrayList *records = new_JavaUtilArrayList_init();
    for (id<ARKeyValueItem> __strong v in values) {
      [records addWithId:new_ARKeyValueRecord_initWithKey_withData_([((id<ARKeyValueItem>) nil_chk(v)) getEngineId], [self serializeWithARKeyValueItem:v])];
    }
    [((id<ARKeyValueStorage>) nil_chk(storage_)) addOrUpdateItems:records];
  }
}


#line 50
- (void)removeItemWithKey:(jlong)id_ {
  @synchronized(self) {
    
#line 51
    (void) [((JavaUtilHashMap *) nil_chk(cache_)) removeWithId:JavaLangLong_valueOfWithLong_(id_)];
    [((id<ARKeyValueStorage>) nil_chk(storage_)) removeItemWithKey:id_];
  }
}


#line 56
- (void)removeItemsWithKeys:(IOSLongArray *)ids {
  @synchronized(self) {
    {
      IOSLongArray *a__ =
#line 57
      ids;
      jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
      jlong const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jlong l = *b__++;
        
#line 58
        (void) [((JavaUtilHashMap *) nil_chk(cache_)) removeWithId:JavaLangLong_valueOfWithLong_(l)];
      }
    }
    
#line 60
    [((id<ARKeyValueStorage>) nil_chk(storage_)) removeItemsWithKeys:ids];
  }
}


#line 64
- (void)clear {
  @synchronized(self) {
    
#line 65
    [((JavaUtilHashMap *) nil_chk(cache_)) clear];
    [((id<ARKeyValueStorage>) nil_chk(storage_)) clear];
  }
}


#line 70
- (id)getValueWithKey:(jlong)id_ {
  @synchronized(self) {
    
#line 71
    if ([((JavaUtilHashMap *) nil_chk(cache_)) containsKeyWithId:JavaLangLong_valueOfWithLong_(id_)]) {
      return [cache_ getWithId:JavaLangLong_valueOfWithLong_(id_)];
    }
    
#line 75
    IOSByteArray *data = [((id<ARKeyValueStorage>) nil_chk(storage_)) loadItemWithKey:id_];
    if (data != nil) {
      id<ARKeyValueItem> res = [self deserializeWithByteArray:data];
      if (res != nil) {
        (void) [cache_ putWithId:JavaLangLong_valueOfWithLong_([res getEngineId]) withId:res];
        return res;
      }
    }
    return nil;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARKeyValueStorage:", "BaseKeyValueEngine", NULL, 0x4, NULL, NULL },
    { "serializeWithARKeyValueItem:", "serialize", "[B", 0x404, NULL, "(TT;)[B" },
    { "deserializeWithByteArray:", "deserialize", "TT;", 0x404, NULL, "([B)TT;" },
    { "addOrUpdateItem:", "addOrUpdateItem", "V", 0x21, NULL, "(TT;)V" },
    { "addOrUpdateItems:", "addOrUpdateItems", "V", 0x21, NULL, NULL },
    { "removeItemWithKey:", "removeItem", "V", 0x21, NULL, NULL },
    { "removeItemsWithKeys:", "removeItems", "V", 0x21, NULL, NULL },
    { "clear", NULL, "V", 0x21, NULL, NULL },
    { "getValueWithKey:", "getValue", "TT;", 0x21, NULL, "(J)TT;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cache_", NULL, 0x12, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/Long;TT;>;", .constantValue.asLong = 0 },
    { "storage_", NULL, 0x2, "Lim.actor.runtime.storage.KeyValueStorage;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACBaseKeyValueEngine = { 2, "BaseKeyValueEngine", "im.actor.core.modules.utils", NULL, 0x401, 9, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<T::Lim/actor/runtime/storage/KeyValueItem;>Ljava/lang/Object;Lim/actor/runtime/storage/KeyValueEngine<TT;>;" };
  return &_ACBaseKeyValueEngine;
}

@end


#line 21
void ACBaseKeyValueEngine_initWithARKeyValueStorage_(ACBaseKeyValueEngine *self, id<ARKeyValueStorage> storage) {
  (void) NSObject_init(self);
  self->cache_ = new_JavaUtilHashMap_init();
  
#line 22
  self->storage_ = storage;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACBaseKeyValueEngine)

#pragma clang diagnostic pop
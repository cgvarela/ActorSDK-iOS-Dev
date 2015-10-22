//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/memory/MemoryKeyValueStorage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/storage/KeyValueRecord.h"
#include "im/actor/runtime/storage/memory/MemoryKeyValueStorage.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Set.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMemoryKeyValueStorage () {
 @public
  JavaUtilHashMap *records_;
}

@end

J2OBJC_FIELD_SETTER(ARMemoryKeyValueStorage, records_, JavaUtilHashMap *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/memory/MemoryKeyValueStorage.java"


#line 10
@implementation ARMemoryKeyValueStorage


#line 15
- (void)addOrUpdateItemWithKey:(jlong)key
                      withData:(IOSByteArray *)data {
  (void) [((JavaUtilHashMap *) nil_chk(records_)) putWithId:JavaLangLong_valueOfWithLong_(key) withId:data];
}

- (void)addOrUpdateItems:(id<JavaUtilList>)values {
  for (ARKeyValueRecord * __strong r in nil_chk(values)) {
    (void) [((JavaUtilHashMap *) nil_chk(records_)) putWithId:JavaLangLong_valueOfWithLong_([((ARKeyValueRecord *) nil_chk(r)) getId]) withId:[r getData]];
  }
}


#line 27
- (void)removeItemWithKey:(jlong)key {
  (void) [((JavaUtilHashMap *) nil_chk(records_)) removeWithId:JavaLangLong_valueOfWithLong_(key)];
}


#line 32
- (void)removeItemsWithKeys:(IOSLongArray *)keys {
  {
    IOSLongArray *a__ =
#line 33
    keys;
    jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
    jlong const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jlong k = *b__++;
      
#line 34
      (void) [((JavaUtilHashMap *) nil_chk(records_)) removeWithId:JavaLangLong_valueOfWithLong_(k)];
    }
  }
}


#line 39
- (IOSByteArray *)loadItemWithKey:(jlong)key {
  return [((JavaUtilHashMap *) nil_chk(records_)) getWithId:JavaLangLong_valueOfWithLong_(key)];
}


#line 44
- (id<JavaUtilList>)loadItems:(IOSLongArray *)keys {
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  {
    IOSLongArray *a__ =
#line 46
    keys;
    jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
    jlong const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jlong id_ = *b__++;
      
#line 47
      IOSByteArray *data = [self loadItemWithKey:id_];
      if (data != nil) {
        [res addWithId:new_ARKeyValueRecord_initWithKey_withData_(id_, data)];
      }
    }
  }
  
#line 52
  return res;
}


#line 56
- (id<JavaUtilList>)loadAllItems {
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  for (JavaLangLong *boxed__ in nil_chk([((JavaUtilHashMap *) nil_chk(records_)) keySet])) {
    jlong id_ = [((JavaLangLong *) nil_chk(boxed__)) longLongValue];
    
#line 59
    [res addWithId:new_ARKeyValueRecord_initWithKey_withData_(id_, [records_ getWithId:JavaLangLong_valueOfWithLong_(id_)])];
  }
  return res;
}


#line 65
- (void)clear {
  [((JavaUtilHashMap *) nil_chk(records_)) clear];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARMemoryKeyValueStorage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addOrUpdateItemWithKey:withData:", "addOrUpdateItem", "V", 0x1, NULL, NULL },
    { "addOrUpdateItems:", "addOrUpdateItems", "V", 0x1, NULL, NULL },
    { "removeItemWithKey:", "removeItem", "V", 0x1, NULL, NULL },
    { "removeItemsWithKeys:", "removeItems", "V", 0x1, NULL, NULL },
    { "loadItemWithKey:", "loadItem", "[B", 0x1, NULL, NULL },
    { "loadItems:", "loadItems", "Ljava.util.List;", 0x1, NULL, NULL },
    { "loadAllItems", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "records_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Ljava/lang/Long;L[B;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARMemoryKeyValueStorage = { 2, "MemoryKeyValueStorage", "im.actor.runtime.storage.memory", NULL, 0x1, 9, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARMemoryKeyValueStorage;
}

@end

void ARMemoryKeyValueStorage_init(ARMemoryKeyValueStorage *self) {
  (void) NSObject_init(self);
  self->records_ = new_JavaUtilHashMap_init();
}

ARMemoryKeyValueStorage *new_ARMemoryKeyValueStorage_init() {
  ARMemoryKeyValueStorage *self = [ARMemoryKeyValueStorage alloc];
  ARMemoryKeyValueStorage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMemoryKeyValueStorage)

#pragma clang diagnostic pop
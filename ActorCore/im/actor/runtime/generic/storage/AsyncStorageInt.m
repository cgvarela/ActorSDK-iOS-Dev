//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/storage/AsyncStorageInt.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/ActorCreator.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorSystem.h"
#include "im/actor/runtime/actors/Props.h"
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/generic/storage/AsyncStorageActor.h"
#include "im/actor/runtime/generic/storage/AsyncStorageInt.h"
#include "im/actor/runtime/storage/ListEngineDisplayLoadCallback.h"
#include "im/actor/runtime/storage/ListEngineItem.h"
#include "im/actor/runtime/storage/ListStorageDisplayEx.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARAsyncStorageInt () {
 @public
  ARActorRef *storageActor_;
}

@end

J2OBJC_FIELD_SETTER(ARAsyncStorageInt, storageActor_, ARActorRef *)

static jint ARAsyncStorageInt_NEXT_ID_ = 0;
J2OBJC_STATIC_FIELD_GETTER(ARAsyncStorageInt, NEXT_ID_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(ARAsyncStorageInt, NEXT_ID_, jint)
@interface ARAsyncStorageInt_$1 : NSObject < ARActorCreator > {
 @public
  id<ARListStorageDisplayEx> val$storage_;
  id<ARBserCreator> val$creator_;
}

- (ARAsyncStorageActor *)create;

- (instancetype)initWithARListStorageDisplayEx:(id<ARListStorageDisplayEx>)capture$0
                             withARBserCreator:(id<ARBserCreator>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ARAsyncStorageInt_$1)

J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$1, val$storage_, id<ARListStorageDisplayEx>)
J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$1, val$creator_, id<ARBserCreator>)

__attribute__((unused)) static void ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(ARAsyncStorageInt_$1 *self, id<ARListStorageDisplayEx> capture$0, id<ARBserCreator> capture$1);

__attribute__((unused)) static ARAsyncStorageInt_$1 *new_ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(id<ARListStorageDisplayEx> capture$0, id<ARBserCreator> capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARAsyncStorageInt_$1)

@interface ARAsyncStorageInt_$2 : NSObject < ARAsyncStorageActor_LoadItemCallback > {
 @public
  id val$lock_;
  id<JavaUtilList> val$resultList_;
}

- (void)onLoadedWithARBserObject:(ARBserObject<ARListEngineItem> *)item;

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ARAsyncStorageInt_$2)

J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$2, val$lock_, id)
J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$2, val$resultList_, id<JavaUtilList>)

__attribute__((unused)) static void ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(ARAsyncStorageInt_$2 *self, id capture$0, id<JavaUtilList> capture$1);

__attribute__((unused)) static ARAsyncStorageInt_$2 *new_ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(id capture$0, id<JavaUtilList> capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARAsyncStorageInt_$2)

@interface ARAsyncStorageInt_$3 : NSObject < ARAsyncStorageActor_LoadItemCallback > {
 @public
  id val$lock_;
  id<JavaUtilList> val$resultList_;
}

- (void)onLoadedWithARBserObject:(ARBserObject<ARListEngineItem> *)item;

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ARAsyncStorageInt_$3)

J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$3, val$lock_, id)
J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$3, val$resultList_, id<JavaUtilList>)

__attribute__((unused)) static void ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(ARAsyncStorageInt_$3 *self, id capture$0, id<JavaUtilList> capture$1);

__attribute__((unused)) static ARAsyncStorageInt_$3 *new_ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(id capture$0, id<JavaUtilList> capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARAsyncStorageInt_$3)

@interface ARAsyncStorageInt_$4 : NSObject < ARAsyncStorageActor_LoadCountCallback > {
 @public
  id val$lock_;
  id<JavaUtilList> val$resultList_;
}

- (void)onLoadedWithInt:(jint)count;

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ARAsyncStorageInt_$4)

J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$4, val$lock_, id)
J2OBJC_FIELD_SETTER(ARAsyncStorageInt_$4, val$resultList_, id<JavaUtilList>)

__attribute__((unused)) static void ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(ARAsyncStorageInt_$4 *self, id capture$0, id<JavaUtilList> capture$1);

__attribute__((unused)) static ARAsyncStorageInt_$4 *new_ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(id capture$0, id<JavaUtilList> capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARAsyncStorageInt_$4)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/storage/AsyncStorageInt.java"


#line 21
@implementation ARAsyncStorageInt


#line 27
- (instancetype)initWithARListStorageDisplayEx:(id<ARListStorageDisplayEx>)storage
                             withARBserCreator:(id<ARBserCreator>)creator {
  ARAsyncStorageInt_initWithARListStorageDisplayEx_withARBserCreator_(self, storage, creator);
  return self;
}


#line 36
- (void)addOrUpdateItemsWithJavaUtilList:(id<JavaUtilList>)items {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_AddOrUpdate_initWithJavaUtilList_(items)];
}

- (void)replaceItemsWithJavaUtilList:(id<JavaUtilList>)items {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_Replace_initWithJavaUtilList_(items)];
}

- (void)removeWithLongArray:(IOSLongArray *)keys {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_Remove_initWithLongArray_(keys)];
}

- (void)clear {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_Clear_init()];
}


#line 54
- (id)getValueWithLong:(jlong)value {
  id lock = new_NSObject_init();
  id<JavaUtilList> resultList = new_JavaUtilArrayList_init();
  @synchronized(lock) {
    [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_LoadItem_initWithLong_withARAsyncStorageActor_LoadItemCallback_(value, new_ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(lock, resultList))];
    
#line 70
    @try {
      [lock wait];
    }
    @catch (
#line 72
    JavaLangInterruptedException *e) {
      return nil;
    }
    
#line 76
    if ([resultList size] > 0) {
      return [resultList getWithInt:0];
    }
    else {
      
#line 79
      return nil;
    }
  }
}


#line 84
- (id)getHeadValue {
  id lock = new_NSObject_init();
  id<JavaUtilList> resultList = new_JavaUtilArrayList_init();
  @synchronized(lock) {
    [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_LoadHead_initWithARAsyncStorageActor_LoadItemCallback_(new_ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(lock, resultList))];
    
#line 100
    @try {
      [lock wait];
    }
    @catch (
#line 102
    JavaLangInterruptedException *e) {
      return nil;
    }
    
#line 106
    if ([resultList size] > 0) {
      return [resultList getWithInt:0];
    }
    else {
      
#line 109
      return nil;
    }
  }
}


#line 114
- (jint)getCount {
  id lock = new_NSObject_init();
  id<JavaUtilList> resultList = new_JavaUtilArrayList_init();
  @synchronized(lock) {
    [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_LoadCount_initWithARAsyncStorageActor_LoadCountCallback_(new_ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(lock, resultList))];
    
#line 128
    @try {
      [lock wait];
    }
    @catch (
#line 130
    JavaLangInterruptedException *e) {
      return 0;
    }
    
#line 134
    if ([resultList size] > 0) {
      return [((JavaLangInteger *) nil_chk([resultList getWithInt:0])) intValue];
    }
    else {
      
#line 137
      return 0;
    }
  }
}


#line 144
- (void)loadForwardWithNSString:(NSString *)query
               withJavaLangLong:(JavaLangLong *)afterSortKey
                        withInt:(jint)limit
withARListEngineDisplayLoadCallback:(id<ARListEngineDisplayLoadCallback>)callback {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_LoadForward_initWithNSString_withJavaLangLong_withInt_withARListEngineDisplayLoadCallback_(query, afterSortKey, limit, callback)];
}


#line 148
- (void)loadBackwardWithNSString:(NSString *)query
                withJavaLangLong:(JavaLangLong *)beforeSortKey
                         withInt:(jint)limit
withARListEngineDisplayLoadCallback:(id<ARListEngineDisplayLoadCallback>)callback {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_LoadBackward_initWithNSString_withJavaLangLong_withInt_withARListEngineDisplayLoadCallback_(query, beforeSortKey, limit, callback)];
}


#line 152
- (void)loadCenterWithLong:(jlong)centerSortKey
                   withInt:(jint)limit
withARListEngineDisplayLoadCallback:(id<ARListEngineDisplayLoadCallback>)callback {
  [((ARActorRef *) nil_chk(storageActor_)) sendWithId:new_ARAsyncStorageActor_LoadCenter_initWithJavaLangLong_withInt_withARListEngineDisplayLoadCallback_(JavaLangLong_valueOfWithLong_(centerSortKey), limit, callback)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARListStorageDisplayEx:withARBserCreator:", "AsyncStorageInt", NULL, 0x1, NULL, NULL },
    { "addOrUpdateItemsWithJavaUtilList:", "addOrUpdateItems", "V", 0x1, NULL, NULL },
    { "replaceItemsWithJavaUtilList:", "replaceItems", "V", 0x1, NULL, NULL },
    { "removeWithLongArray:", "remove", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "getValueWithLong:", "getValue", "TT;", 0x1, NULL, "(J)TT;" },
    { "getHeadValue", NULL, "TT;", 0x1, NULL, "()TT;" },
    { "getCount", NULL, "I", 0x1, NULL, NULL },
    { "loadForwardWithNSString:withJavaLangLong:withInt:withARListEngineDisplayLoadCallback:", "loadForward", "V", 0x1, NULL, NULL },
    { "loadBackwardWithNSString:withJavaLangLong:withInt:withARListEngineDisplayLoadCallback:", "loadBackward", "V", 0x1, NULL, NULL },
    { "loadCenterWithLong:withInt:withARListEngineDisplayLoadCallback:", "loadCenter", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NEXT_ID_", NULL, 0xa, "I", &ARAsyncStorageInt_NEXT_ID_, NULL, .constantValue.asLong = 0 },
    { "storageActor_", NULL, 0x2, "Lim.actor.runtime.actors.ActorRef;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARAsyncStorageInt = { 2, "AsyncStorageInt", "im.actor.runtime.generic.storage", NULL, 0x0, 11, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<T:Lim/actor/runtime/bser/BserObject;:Lim/actor/runtime/storage/ListEngineItem;>Ljava/lang/Object;" };
  return &_ARAsyncStorageInt;
}

@end


#line 27
void ARAsyncStorageInt_initWithARListStorageDisplayEx_withARBserCreator_(ARAsyncStorageInt *self, id<ARListStorageDisplayEx> storage, id<ARBserCreator> creator) {
  (void) NSObject_init(self);
  
#line 28
  self->storageActor_ = [((ARActorSystem *) nil_chk(ARActorSystem_system())) actorOfWithARProps:[((ARProps *) nil_chk(ARProps_createWithIOSClass_withARActorCreator_(ARAsyncStorageActor_class_(), new_ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(storage, creator)))) changeDispatcherWithNSString:
#line 33
  @"db"] withNSString:JreStrcat("$I", @"list_engine/", ARAsyncStorageInt_NEXT_ID_++)];
}


#line 27
ARAsyncStorageInt *new_ARAsyncStorageInt_initWithARListStorageDisplayEx_withARBserCreator_(id<ARListStorageDisplayEx> storage, id<ARBserCreator> creator) {
  ARAsyncStorageInt *self = [ARAsyncStorageInt alloc];
  ARAsyncStorageInt_initWithARListStorageDisplayEx_withARBserCreator_(self, storage, creator);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncStorageInt)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/storage/AsyncStorageInt.java"

@implementation ARAsyncStorageInt_$1


#line 30
- (ARAsyncStorageActor *)create {
  return new_ARAsyncStorageActor_initWithARListStorageDisplayEx_withARBserCreator_(val$storage_, val$creator_);
}

- (instancetype)initWithARListStorageDisplayEx:(id<ARListStorageDisplayEx>)capture$0
                             withARBserCreator:(id<ARBserCreator>)capture$1 {
  ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lim.actor.runtime.generic.storage.AsyncStorageActor;", 0x1, NULL, NULL },
    { "initWithARListStorageDisplayEx:withARBserCreator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$storage_", NULL, 0x1012, "Lim.actor.runtime.storage.ListStorageDisplayEx;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$creator_", NULL, 0x1012, "Lim.actor.runtime.bser.BserCreator;", NULL, "Lim/actor/runtime/bser/BserCreator<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARAsyncStorageInt", "initWithARListStorageDisplayEx:withARBserCreator:" };
  static const J2ObjcClassInfo _ARAsyncStorageInt_$1 = { 2, "", "im.actor.runtime.generic.storage", "AsyncStorageInt", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/actors/ActorCreator<Lim/actor/runtime/generic/storage/AsyncStorageActor;>;" };
  return &_ARAsyncStorageInt_$1;
}

@end

void ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(ARAsyncStorageInt_$1 *self, id<ARListStorageDisplayEx> capture$0, id<ARBserCreator> capture$1) {
  self->val$storage_ = capture$0;
  self->val$creator_ = capture$1;
  (void) NSObject_init(self);
}

ARAsyncStorageInt_$1 *new_ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(id<ARListStorageDisplayEx> capture$0, id<ARBserCreator> capture$1) {
  ARAsyncStorageInt_$1 *self = [ARAsyncStorageInt_$1 alloc];
  ARAsyncStorageInt_$1_initWithARListStorageDisplayEx_withARBserCreator_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncStorageInt_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/storage/AsyncStorageInt.java"

@implementation ARAsyncStorageInt_$2


#line 60
- (void)onLoadedWithARBserObject:(ARBserObject<ARListEngineItem> *)item {
  @synchronized(val$lock_) {
    if (item != nil) {
      [((id<JavaUtilList>) nil_chk(val$resultList_)) addWithId:item];
    }
    [nil_chk(val$lock_) notify];
  }
}

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1 {
  ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onLoadedWithARBserObject:", "onLoaded", "V", 0x1, NULL, "(TT;)V" },
    { "initWithId:withJavaUtilList:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$lock_", NULL, 0x1012, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$resultList_", NULL, 0x1012, "Ljava.util.List;", NULL, "Ljava/util/List<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARAsyncStorageInt", "getValueWithLong:" };
  static const J2ObjcClassInfo _ARAsyncStorageInt_$2 = { 2, "", "im.actor.runtime.generic.storage", "AsyncStorageInt", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/generic/storage/AsyncStorageActor$LoadItemCallback<TT;>;" };
  return &_ARAsyncStorageInt_$2;
}

@end

void ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(ARAsyncStorageInt_$2 *self, id capture$0, id<JavaUtilList> capture$1) {
  self->val$lock_ = capture$0;
  self->val$resultList_ = capture$1;
  (void) NSObject_init(self);
}

ARAsyncStorageInt_$2 *new_ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(id capture$0, id<JavaUtilList> capture$1) {
  ARAsyncStorageInt_$2 *self = [ARAsyncStorageInt_$2 alloc];
  ARAsyncStorageInt_$2_initWithId_withJavaUtilList_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncStorageInt_$2)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/storage/AsyncStorageInt.java"

@implementation ARAsyncStorageInt_$3


#line 90
- (void)onLoadedWithARBserObject:(ARBserObject<ARListEngineItem> *)item {
  @synchronized(val$lock_) {
    if (item != nil) {
      [((id<JavaUtilList>) nil_chk(val$resultList_)) addWithId:item];
    }
    [nil_chk(val$lock_) notify];
  }
}

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1 {
  ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onLoadedWithARBserObject:", "onLoaded", "V", 0x1, NULL, "(TT;)V" },
    { "initWithId:withJavaUtilList:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$lock_", NULL, 0x1012, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$resultList_", NULL, 0x1012, "Ljava.util.List;", NULL, "Ljava/util/List<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARAsyncStorageInt", "getHeadValue" };
  static const J2ObjcClassInfo _ARAsyncStorageInt_$3 = { 2, "", "im.actor.runtime.generic.storage", "AsyncStorageInt", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lim/actor/runtime/generic/storage/AsyncStorageActor$LoadItemCallback<TT;>;" };
  return &_ARAsyncStorageInt_$3;
}

@end

void ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(ARAsyncStorageInt_$3 *self, id capture$0, id<JavaUtilList> capture$1) {
  self->val$lock_ = capture$0;
  self->val$resultList_ = capture$1;
  (void) NSObject_init(self);
}

ARAsyncStorageInt_$3 *new_ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(id capture$0, id<JavaUtilList> capture$1) {
  ARAsyncStorageInt_$3 *self = [ARAsyncStorageInt_$3 alloc];
  ARAsyncStorageInt_$3_initWithId_withJavaUtilList_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncStorageInt_$3)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/storage/AsyncStorageInt.java"

@implementation ARAsyncStorageInt_$4


#line 120
- (void)onLoadedWithInt:(jint)count {
  @synchronized(val$lock_) {
    [((id<JavaUtilList>) nil_chk(val$resultList_)) addWithId:JavaLangInteger_valueOfWithInt_(count)];
    [nil_chk(val$lock_) notify];
  }
}

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1 {
  ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onLoadedWithInt:", "onLoaded", "V", 0x1, NULL, NULL },
    { "initWithId:withJavaUtilList:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$lock_", NULL, 0x1012, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$resultList_", NULL, 0x1012, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ARAsyncStorageInt", "getCount" };
  static const J2ObjcClassInfo _ARAsyncStorageInt_$4 = { 2, "", "im.actor.runtime.generic.storage", "AsyncStorageInt", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_ARAsyncStorageInt_$4;
}

@end

void ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(ARAsyncStorageInt_$4 *self, id capture$0, id<JavaUtilList> capture$1) {
  self->val$lock_ = capture$0;
  self->val$resultList_ = capture$1;
  (void) NSObject_init(self);
}

ARAsyncStorageInt_$4 *new_ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(id capture$0, id<JavaUtilList> capture$1) {
  ARAsyncStorageInt_$4 *self = [ARAsyncStorageInt_$4 alloc];
  ARAsyncStorageInt_$4_initWithId_withJavaUtilList_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAsyncStorageInt_$4)

#pragma clang diagnostic pop
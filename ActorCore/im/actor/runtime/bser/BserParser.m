//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/BserParser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/bser/BserParser.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/bser/WireTypes.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARBserParser ()

+ (void)putWithInt:(jint)id_
            withId:(id)res
 withARSparseArray:(ARSparseArray *)hashMap;

- (instancetype)init;

@end

__attribute__((unused)) static void ARBserParser_putWithInt_withId_withARSparseArray_(jint id_, id res, ARSparseArray *hashMap);

__attribute__((unused)) static void ARBserParser_init(ARBserParser *self);

__attribute__((unused)) static ARBserParser *new_ARBserParser_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/BserParser.java"


#line 13
@implementation ARBserParser


#line 14
+ (ARSparseArray *)deserializeWithARDataInput:(ARDataInput *)is {
  return ARBserParser_deserializeWithARDataInput_(is);
}


#line 38
+ (void)putWithInt:(jint)id_
            withId:(id)res
 withARSparseArray:(ARSparseArray *)hashMap {
  ARBserParser_putWithInt_withId_withARSparseArray_(id_, res, hashMap);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 53
- (instancetype)init {
  ARBserParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "deserializeWithARDataInput:", "deserialize", "Lim.actor.runtime.collections.SparseArray;", 0x9, "Ljava.io.IOException;", NULL },
    { "putWithInt:withId:withARSparseArray:", "put", "V", 0xa, NULL, NULL },
    { "init", "BserParser", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARBserParser = { 2, "BserParser", "im.actor.runtime.bser", NULL, 0x11, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARBserParser;
}

@end


#line 14
ARSparseArray *ARBserParser_deserializeWithARDataInput_(ARDataInput *is) {
  ARBserParser_initialize();
  
#line 15
  ARSparseArray *hashMap = new_ARSparseArray_init();
  while (![((ARDataInput *) nil_chk(is)) isEOF]) {
    jlong currentTag = [is readVarInt];
    
#line 19
    jint id_ = (jint) (JreRShift64(currentTag, 3));
    jint type = (jint) (currentTag & (jint) 0x7);
    
#line 22
    if (type == ARWireTypes_TYPE_VARINT) {
      ARBserParser_putWithInt_withId_withARSparseArray_(id_, JavaLangLong_valueOfWithLong_([is readVarInt]), hashMap);
    }
    else
#line 24
    if (type == ARWireTypes_TYPE_LENGTH_DELIMITED) {
      jint size = (jint) [is readVarInt];
      ARBserParser_putWithInt_withId_withARSparseArray_(id_, [is readBytesWithInt:size], hashMap);
    }
    else
#line 27
    if (type == ARWireTypes_TYPE_64BIT) {
      ARBserParser_putWithInt_withId_withARSparseArray_(id_, JavaLangLong_valueOfWithLong_([is readLong]), hashMap);
    }
    else
#line 29
    if (type == ARWireTypes_TYPE_32BIT) {
      ARBserParser_putWithInt_withId_withARSparseArray_(id_, JavaLangLong_valueOfWithLong_([is readUInt]), hashMap);
    }
    else {
      
#line 32
      @throw new_JavaIoIOException_initWithNSString_(JreStrcat("$I", @"Unknown Wire Type #", type));
    }
  }
  return hashMap;
}


#line 38
void ARBserParser_putWithInt_withId_withARSparseArray_(jint id_, id res, ARSparseArray *hashMap) {
  ARBserParser_initialize();
  
#line 39
  if ([((ARSparseArray *) nil_chk(hashMap)) getWithInt:id_] != nil) {
    if ([JavaUtilList_class_() isInstance:[hashMap getWithInt:id_]]) {
      [((id<JavaUtilList>) nil_chk(((id<JavaUtilList>) check_protocol_cast([hashMap getWithInt:id_], JavaUtilList_class_())))) addWithId:res];
    }
    else {
      
#line 43
      JavaUtilArrayList *list = new_JavaUtilArrayList_init();
      [list addWithId:[hashMap getWithInt:id_]];
      [list addWithId:res];
      [hashMap putWithInt:id_ withId:list];
    }
  }
  else {
    
#line 49
    [hashMap putWithInt:id_ withId:res];
  }
}


#line 53
void ARBserParser_init(ARBserParser *self) {
  (void) NSObject_init(self);
}


#line 53
ARBserParser *new_ARBserParser_init() {
  ARBserParser *self = [ARBserParser alloc];
  ARBserParser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARBserParser)

#pragma clang diagnostic pop
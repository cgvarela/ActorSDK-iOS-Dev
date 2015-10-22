//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/collections/ArrayUtils.java
//

#include <j2objc/IOSObjectArray.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/collections/ArrayUtils.h"
#include <j2objc/java/lang/IllegalArgumentException.h>
#include <j2objc/java/lang/System.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ARArrayUtils_CACHE_SIZE 73

@interface ARArrayUtils ()

- (instancetype)init;

@end

static IOSObjectArray *ARArrayUtils_EMPTY_;
J2OBJC_STATIC_FIELD_GETTER(ARArrayUtils, EMPTY_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ARArrayUtils, EMPTY_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(ARArrayUtils, CACHE_SIZE, jint)

static IOSObjectArray *ARArrayUtils_sCache_;
J2OBJC_STATIC_FIELD_GETTER(ARArrayUtils, sCache_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ARArrayUtils, sCache_, IOSObjectArray *)

__attribute__((unused)) static void ARArrayUtils_init(ARArrayUtils *self);

__attribute__((unused)) static ARArrayUtils *new_ARArrayUtils_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/collections/ArrayUtils.java"

J2OBJC_INITIALIZED_DEFN(ARArrayUtils)


#line 27
@implementation ARArrayUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 32
- (instancetype)init {
  ARArrayUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 34
+ (jint)idealByteArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealByteArraySizeWithInt_(need);
}


#line 42
+ (jint)idealBooleanArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealBooleanArraySizeWithInt_(need);
}

+ (jint)idealShortArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealShortArraySizeWithInt_(need);
}

+ (jint)idealCharArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealCharArraySizeWithInt_(need);
}

+ (jint)idealIntArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealIntArraySizeWithInt_(need);
}

+ (jint)idealFloatArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealFloatArraySizeWithInt_(need);
}

+ (jint)idealObjectArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealObjectArraySizeWithInt_(need);
}

+ (jint)idealLongArraySizeWithInt:(jint)need {
  return ARArrayUtils_idealLongArraySizeWithInt_(need);
}


#line 78
+ (jboolean)equalsWithByteArray:(IOSByteArray *)array1
                  withByteArray:(IOSByteArray *)array2
                        withInt:(jint)length {
  return ARArrayUtils_equalsWithByteArray_withByteArray_withInt_(array1, array2, length);
}


#line 105
+ (jboolean)containsWithNSObjectArray:(IOSObjectArray *)array
                               withId:(id)value {
  return ARArrayUtils_containsWithNSObjectArray_withId_(array, value);
}


#line 113
+ (jint)indexOfWithNSObjectArray:(IOSObjectArray *)array
                          withId:(id)value {
  return ARArrayUtils_indexOfWithNSObjectArray_withId_(array, value);
}


#line 127
+ (jboolean)containsAllWithNSObjectArray:(IOSObjectArray *)array
                       withNSObjectArray:(IOSObjectArray *)check {
  return ARArrayUtils_containsAllWithNSObjectArray_withNSObjectArray_(array, check);
}


#line 136
+ (jboolean)containsWithIntArray:(IOSIntArray *)array
                         withInt:(jint)value {
  return ARArrayUtils_containsWithIntArray_withInt_(array, value);
}


#line 145
+ (jlong)totalWithLongArray:(IOSLongArray *)array {
  return ARArrayUtils_totalWithLongArray_(array);
}


#line 153
+ (IOSIntArray *)appendIntWithIntArray:(IOSIntArray *)cur
                               withInt:(jint)val {
  return ARArrayUtils_appendIntWithIntArray_withInt_(cur, val);
}


#line 169
+ (IOSIntArray *)removeIntWithIntArray:(IOSIntArray *)cur
                               withInt:(jint)val {
  return ARArrayUtils_removeIntWithIntArray_withInt_(cur, val);
}

+ (void)initialize {
  if (self == [ARArrayUtils class]) {
    ARArrayUtils_EMPTY_ = [IOSObjectArray newArrayWithLength:
#line 28
    0 type:NSObject_class_()];
    ARArrayUtils_sCache_ = [IOSObjectArray newArrayWithLength:
#line 30
    ARArrayUtils_CACHE_SIZE type:NSObject_class_()];
    J2OBJC_SET_INITIALIZED(ARArrayUtils)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ArrayUtils", NULL, 0x2, NULL, NULL },
    { "idealByteArraySizeWithInt:", "idealByteArraySize", "I", 0x9, NULL, NULL },
    { "idealBooleanArraySizeWithInt:", "idealBooleanArraySize", "I", 0x9, NULL, NULL },
    { "idealShortArraySizeWithInt:", "idealShortArraySize", "I", 0x9, NULL, NULL },
    { "idealCharArraySizeWithInt:", "idealCharArraySize", "I", 0x9, NULL, NULL },
    { "idealIntArraySizeWithInt:", "idealIntArraySize", "I", 0x9, NULL, NULL },
    { "idealFloatArraySizeWithInt:", "idealFloatArraySize", "I", 0x9, NULL, NULL },
    { "idealObjectArraySizeWithInt:", "idealObjectArraySize", "I", 0x9, NULL, NULL },
    { "idealLongArraySizeWithInt:", "idealLongArraySize", "I", 0x9, NULL, NULL },
    { "equalsWithByteArray:withByteArray:withInt:", "equals", "Z", 0x9, NULL, NULL },
    { "containsWithNSObjectArray:withId:", "contains", "Z", 0x9, NULL, "<T:Ljava/lang/Object;>([TT;TT;)Z" },
    { "indexOfWithNSObjectArray:withId:", "indexOf", "I", 0x9, NULL, "<T:Ljava/lang/Object;>([TT;TT;)I" },
    { "containsAllWithNSObjectArray:withNSObjectArray:", "containsAll", "Z", 0x9, NULL, "<T:Ljava/lang/Object;>([TT;[TT;)Z" },
    { "containsWithIntArray:withInt:", "contains", "Z", 0x9, NULL, NULL },
    { "totalWithLongArray:", "total", "J", 0x9, NULL, NULL },
    { "appendIntWithIntArray:withInt:", "appendInt", "[I", 0x9, NULL, NULL },
    { "removeIntWithIntArray:withInt:", "removeInt", "[I", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_", NULL, 0xa, "[Ljava.lang.Object;", &ARArrayUtils_EMPTY_, NULL, .constantValue.asLong = 0 },
    { "CACHE_SIZE", "CACHE_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = ARArrayUtils_CACHE_SIZE },
    { "sCache_", NULL, 0xa, "[Ljava.lang.Object;", &ARArrayUtils_sCache_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARArrayUtils = { 2, "ArrayUtils", "im.actor.runtime.collections", NULL, 0x1, 17, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARArrayUtils;
}

@end


#line 32
void ARArrayUtils_init(ARArrayUtils *self) {
  (void) NSObject_init(self);
}


#line 32
ARArrayUtils *new_ARArrayUtils_init() {
  ARArrayUtils *self = [ARArrayUtils alloc];
  ARArrayUtils_init(self);
  return self;
}


#line 34
jint ARArrayUtils_idealByteArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 35
  for (jint i = 4; i < 32; i++)
#line 36
  if (need <= (JreLShift32(1, i)) - 12)
#line 37
  return (JreLShift32(1, i)) - 12;
  
#line 39
  return need;
}


#line 42
jint ARArrayUtils_idealBooleanArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 43
  return ARArrayUtils_idealByteArraySizeWithInt_(need);
}


#line 46
jint ARArrayUtils_idealShortArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 47
  return ARArrayUtils_idealByteArraySizeWithInt_(need * 2) / 2;
}


#line 50
jint ARArrayUtils_idealCharArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 51
  return ARArrayUtils_idealByteArraySizeWithInt_(need * 2) / 2;
}


#line 54
jint ARArrayUtils_idealIntArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 55
  return ARArrayUtils_idealByteArraySizeWithInt_(need * 4) / 4;
}


#line 58
jint ARArrayUtils_idealFloatArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 59
  return ARArrayUtils_idealByteArraySizeWithInt_(need * 4) / 4;
}


#line 62
jint ARArrayUtils_idealObjectArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 63
  return ARArrayUtils_idealByteArraySizeWithInt_(need * 4) / 4;
}


#line 66
jint ARArrayUtils_idealLongArraySizeWithInt_(jint need) {
  ARArrayUtils_initialize();
  
#line 67
  return ARArrayUtils_idealByteArraySizeWithInt_(need * 8) / 8;
}


#line 78
jboolean ARArrayUtils_equalsWithByteArray_withByteArray_withInt_(IOSByteArray *array1, IOSByteArray *array2, jint length) {
  ARArrayUtils_initialize();
  
#line 79
  if (length < 0) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  
#line 83
  if (array1 == array2) {
    return true;
  }
  if (array1 == nil || array2 == nil || array1->size_ < length || array2->size_ < length) {
    return false;
  }
  for (jint i = 0; i < length; i++) {
    if (IOSByteArray_Get(nil_chk(array1), i) != IOSByteArray_Get(nil_chk(array2), i)) {
      return false;
    }
  }
  return true;
}


#line 105
jboolean ARArrayUtils_containsWithNSObjectArray_withId_(IOSObjectArray *array, id value) {
  ARArrayUtils_initialize();
  
#line 106
  return ARArrayUtils_indexOfWithNSObjectArray_withId_(array, value) != -1;
}


#line 113
jint ARArrayUtils_indexOfWithNSObjectArray_withId_(IOSObjectArray *array, id value) {
  ARArrayUtils_initialize();
  
#line 114
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(array))->size_; i++) {
    if (IOSObjectArray_Get(array, i) == nil) {
      if (value == nil) return i;
    }
    else {
      
#line 118
      if (value != nil && [nil_chk(IOSObjectArray_Get(array, i)) isEqual:value]) return i;
    }
  }
  return -1;
}


#line 127
jboolean ARArrayUtils_containsAllWithNSObjectArray_withNSObjectArray_(IOSObjectArray *array, IOSObjectArray *check) {
  ARArrayUtils_initialize();
  {
    IOSObjectArray *a__ =
#line 128
    check;
    id const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id checkItem = *b__++;
      
#line 129
      if (!ARArrayUtils_containsWithNSObjectArray_withId_(array, checkItem)) {
        return false;
      }
    }
  }
  
#line 133
  return true;
}


#line 136
jboolean ARArrayUtils_containsWithIntArray_withInt_(IOSIntArray *array, jint value) {
  ARArrayUtils_initialize();
  {
    IOSIntArray *a__ =
#line 137
    array;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint element = *b__++;
      
#line 138
      if (element == value) {
        return true;
      }
    }
  }
  
#line 142
  return false;
}


#line 145
jlong ARArrayUtils_totalWithLongArray_(IOSLongArray *array) {
  ARArrayUtils_initialize();
  
#line 146
  jlong total = 0;
  {
    IOSLongArray *a__ =
#line 147
    array;
    jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
    jlong const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jlong value = *b__++;
      
#line 148
      total += value;
    }
  }
  
#line 150
  return total;
}


#line 153
IOSIntArray *ARArrayUtils_appendIntWithIntArray_withInt_(IOSIntArray *cur, jint val) {
  ARArrayUtils_initialize();
  
#line 154
  if (cur == nil) {
    return [IOSIntArray newArrayWithInts:(jint[]){ val } count:1];
  }
  jint N = ((IOSIntArray *) nil_chk(cur))->size_;
  for (jint i = 0; i < N; i++) {
    if (IOSIntArray_Get(cur, i) == val) {
      return cur;
    }
  }
  IOSIntArray *ret = [IOSIntArray newArrayWithLength:N + 1];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(cur, 0, ret, 0, N);
  *IOSIntArray_GetRef(ret, N) = val;
  return ret;
}


#line 169
IOSIntArray *ARArrayUtils_removeIntWithIntArray_withInt_(IOSIntArray *cur, jint val) {
  ARArrayUtils_initialize();
  
#line 170
  if (cur == nil) {
    return nil;
  }
  jint N = ((IOSIntArray *) nil_chk(cur))->size_;
  for (jint i = 0; i < N; i++) {
    if (IOSIntArray_Get(cur, i) == val) {
      IOSIntArray *ret = [IOSIntArray newArrayWithLength:N - 1];
      if (i > 0) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(cur, 0, ret, 0, i);
      }
      if (i < (N - 1)) {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(cur, i + 1, ret, i, N - i - 1);
      }
      return ret;
    }
  }
  return cur;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARArrayUtils)

#pragma clang diagnostic pop

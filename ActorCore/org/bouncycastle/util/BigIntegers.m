//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/util/BigIntegers.java
//

#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/crypto/bouncycastle/RandomProvider.h"
#include <j2objc/java/lang/IllegalArgumentException.h>
#include <j2objc/java/lang/System.h>
#include <j2objc/java/math/BigInteger.h>
#include "org/bouncycastle/util/BigIntegers.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define OrgBouncycastleUtilBigIntegers_MAX_ITERATIONS 1000

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleUtilBigIntegers, MAX_ITERATIONS, jint)

static JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_ZERO_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleUtilBigIntegers, ZERO_, JavaMathBigInteger *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/util/BigIntegers.java"

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleUtilBigIntegers)


#line 10
@implementation OrgBouncycastleUtilBigIntegers


#line 20
+ (IOSByteArray *)asUnsignedByteArrayWithJavaMathBigInteger:(JavaMathBigInteger *)value {
  return OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithJavaMathBigInteger_(value);
}


#line 41
+ (IOSByteArray *)asUnsignedByteArrayWithInt:(jint)length
                      withJavaMathBigInteger:(JavaMathBigInteger *)value {
  return OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithInt_withJavaMathBigInteger_(length, value);
}


#line 67
+ (JavaMathBigInteger *)createRandomInRangeWithJavaMathBigInteger:(JavaMathBigInteger *)min
                                           withJavaMathBigInteger:(JavaMathBigInteger *)max
                                             withARRandomProvider:(id<ARRandomProvider>)random {
  return OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withARRandomProvider_(min, max, random);
}


#line 95
+ (JavaMathBigInteger *)fromUnsignedByteArrayWithByteArray:(IOSByteArray *)buf {
  return OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_(buf);
}

+ (JavaMathBigInteger *)fromUnsignedByteArrayWithByteArray:(IOSByteArray *)buf
                                                   withInt:(jint)off
                                                   withInt:(jint)length {
  return OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_withInt_withInt_(buf, off, length);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgBouncycastleUtilBigIntegers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgBouncycastleUtilBigIntegers class]) {
    OrgBouncycastleUtilBigIntegers_ZERO_ = JavaMathBigInteger_valueOfWithLong_(
#line 12
    0);
    J2OBJC_SET_INITIALIZED(OrgBouncycastleUtilBigIntegers)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "asUnsignedByteArrayWithJavaMathBigInteger:", "asUnsignedByteArray", "[B", 0x9, NULL, NULL },
    { "asUnsignedByteArrayWithInt:withJavaMathBigInteger:", "asUnsignedByteArray", "[B", 0x9, NULL, NULL },
    { "createRandomInRangeWithJavaMathBigInteger:withJavaMathBigInteger:withARRandomProvider:", "createRandomInRange", "Ljava.math.BigInteger;", 0x9, NULL, NULL },
    { "fromUnsignedByteArrayWithByteArray:", "fromUnsignedByteArray", "Ljava.math.BigInteger;", 0x9, NULL, NULL },
    { "fromUnsignedByteArrayWithByteArray:withInt:withInt:", "fromUnsignedByteArray", "Ljava.math.BigInteger;", 0x9, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_ITERATIONS", "MAX_ITERATIONS", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgBouncycastleUtilBigIntegers_MAX_ITERATIONS },
    { "ZERO_", NULL, 0x1a, "Ljava.math.BigInteger;", &OrgBouncycastleUtilBigIntegers_ZERO_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgBouncycastleUtilBigIntegers = { 2, "BigIntegers", "org.bouncycastle.util", NULL, 0x11, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgBouncycastleUtilBigIntegers;
}

@end


#line 20
IOSByteArray *OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithJavaMathBigInteger_(JavaMathBigInteger *value) {
  OrgBouncycastleUtilBigIntegers_initialize();
  IOSByteArray *bytes = [((JavaMathBigInteger *) nil_chk(value)) toByteArray];
  
#line 24
  if (IOSByteArray_Get(nil_chk(bytes), 0) == 0) {
    IOSByteArray *tmp = [IOSByteArray newArrayWithLength:bytes->size_ - 1];
    
#line 27
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes, 1, tmp, 0, tmp->size_);
    
#line 29
    return tmp;
  }
  
#line 32
  return bytes;
}


#line 41
IOSByteArray *OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithInt_withJavaMathBigInteger_(jint length, JavaMathBigInteger *value) {
  OrgBouncycastleUtilBigIntegers_initialize();
  
#line 42
  IOSByteArray *bytes = [((JavaMathBigInteger *) nil_chk(value)) toByteArray];
  if (((IOSByteArray *) nil_chk(bytes))->size_ == length) {
    return bytes;
  }
  
#line 47
  jint start = IOSByteArray_Get(bytes, 0) == 0 ? 1 : 0;
  jint count = bytes->size_ - start;
  
#line 50
  if (count > length) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"standard length exceeded for value");
  }
  
#line 54
  IOSByteArray *tmp = [IOSByteArray newArrayWithLength:length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes, start, tmp, tmp->size_ - count, count);
  return tmp;
}


#line 67
JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withARRandomProvider_(JavaMathBigInteger *min, JavaMathBigInteger *max, id<ARRandomProvider> random) {
  OrgBouncycastleUtilBigIntegers_initialize();
  
#line 71
  jint cmp = [((JavaMathBigInteger *) nil_chk(min)) compareToWithId:max];
  if (cmp >= 0) {
    if (cmp > 0) {
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'min' may not be greater than 'max'");
    }
    
#line 77
    return min;
  }
  
#line 80
  if ([min bitLength] > [((JavaMathBigInteger *) nil_chk(max)) bitLength] / 2) {
    return [((JavaMathBigInteger *) nil_chk(OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withARRandomProvider_(OrgBouncycastleUtilBigIntegers_ZERO_, [max subtractWithJavaMathBigInteger:min], random))) addWithJavaMathBigInteger:min];
  }
  
#line 84
  for (jint i = 0; i < OrgBouncycastleUtilBigIntegers_MAX_ITERATIONS; ++i) {
    JavaMathBigInteger *x = [((id<ARRandomProvider>) nil_chk(random)) generateBigIntegerWithInt:[max bitLength]];
    if ([((JavaMathBigInteger *) nil_chk(x)) compareToWithId:min] >= 0 && [x compareToWithId:max] <= 0) {
      return x;
    }
  }
  
#line 92
  return [((JavaMathBigInteger *) nil_chk([((id<ARRandomProvider>) nil_chk(random)) generateBigIntegerWithInt:[((JavaMathBigInteger *) nil_chk([max subtractWithJavaMathBigInteger:min])) bitLength] - 1])) addWithJavaMathBigInteger:min];
}


#line 95
JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_(IOSByteArray *buf) {
  OrgBouncycastleUtilBigIntegers_initialize();
  
#line 96
  return new_JavaMathBigInteger_initWithInt_withByteArray_(1, buf);
}


#line 99
JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_withInt_withInt_(IOSByteArray *buf, jint off, jint length) {
  OrgBouncycastleUtilBigIntegers_initialize();
  
#line 100
  IOSByteArray *mag = buf;
  if (off != 0 || length != ((IOSByteArray *) nil_chk(buf))->size_) {
    mag = [IOSByteArray newArrayWithLength:length];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, off, mag, 0, length);
  }
  return new_JavaMathBigInteger_initWithInt_withByteArray_(1, mag);
}

void OrgBouncycastleUtilBigIntegers_init(OrgBouncycastleUtilBigIntegers *self) {
  (void) NSObject_init(self);
}

OrgBouncycastleUtilBigIntegers *new_OrgBouncycastleUtilBigIntegers_init() {
  OrgBouncycastleUtilBigIntegers *self = [OrgBouncycastleUtilBigIntegers alloc];
  OrgBouncycastleUtilBigIntegers_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleUtilBigIntegers)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/Utils.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/Crypto.h"
#include "im/actor/runtime/bser/Utils.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARUtils ()

- (instancetype)init;

@end

__attribute__((unused)) static void ARUtils_init(ARUtils *self);

__attribute__((unused)) static ARUtils *new_ARUtils_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/Utils.java"


#line 11
@implementation ARUtils

+ (jint)convertIntWithLong:(jlong)val {
  return ARUtils_convertIntWithLong_(val);
}


#line 22
+ (NSString *)convertStringWithByteArray:(IOSByteArray *)data {
  return ARUtils_convertStringWithByteArray_(data);
}


#line 30
+ (NSString *)byteArrayToStringWithByteArray:(IOSByteArray *)data {
  return ARUtils_byteArrayToStringWithByteArray_(data);
}


#line 38
+ (NSString *)byteArrayToStringCompactWithByteArray:(IOSByteArray *)data {
  return ARUtils_byteArrayToStringCompactWithByteArray_(data);
}


#line 46
+ (IOSByteArray *)intToBytesWithInt:(jint)v {
  return ARUtils_intToBytesWithInt_(v);
}


#line 56
+ (jlong)bytesToIntWithByteArray:(IOSByteArray *)data {
  return ARUtils_bytesToIntWithByteArray_(data);
}


#line 65
+ (IOSByteArray *)longToBytesWithLong:(jlong)v {
  return ARUtils_longToBytesWithLong_(v);
}


#line 79
+ (jlong)bytesToLongWithByteArray:(IOSByteArray *)data {
  return ARUtils_bytesToLongWithByteArray_(data);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 100
- (instancetype)init {
  ARUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "convertIntWithLong:", "convertInt", "I", 0x9, "Ljava.io.IOException;", NULL },
    { "convertStringWithByteArray:", "convertString", "Ljava.lang.String;", 0x9, "Ljava.io.IOException;", NULL },
    { "byteArrayToStringWithByteArray:", "byteArrayToString", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "byteArrayToStringCompactWithByteArray:", "byteArrayToStringCompact", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "intToBytesWithInt:", "intToBytes", "[B", 0x9, NULL, NULL },
    { "bytesToIntWithByteArray:", "bytesToInt", "J", 0x9, NULL, NULL },
    { "longToBytesWithLong:", "longToBytes", "[B", 0x9, NULL, NULL },
    { "bytesToLongWithByteArray:", "bytesToLong", "J", 0x9, NULL, NULL },
    { "init", "Utils", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARUtils = { 2, "Utils", "im.actor.runtime.bser", NULL, 0x11, 9, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARUtils;
}

@end


#line 13
jint ARUtils_convertIntWithLong_(jlong val) {
  ARUtils_initialize();
  
#line 14
  if (val < JavaLangInteger_MIN_VALUE) {
    @throw new_JavaIoIOException_initWithNSString_(@"Too small value");
  }
  else
#line 16
  if (val > JavaLangInteger_MAX_VALUE) {
    @throw new_JavaIoIOException_initWithNSString_(@"Too big value");
  }
  return (jint) val;
}


#line 22
NSString *ARUtils_convertStringWithByteArray_(IOSByteArray *data) {
  ARUtils_initialize();
  
#line 23
  if (data == nil) {
    return nil;
  }
  else {
    
#line 26
    return [NSString stringWithBytes:data charsetName:@"utf-8"];
  }
}


#line 30
NSString *ARUtils_byteArrayToStringWithByteArray_(IOSByteArray *data) {
  ARUtils_initialize();
  
#line 31
  if (data == nil) {
    return @"null";
  }
  else {
    
#line 34
    return ARCrypto_hexWithByteArray_(data);
  }
}


#line 38
NSString *ARUtils_byteArrayToStringCompactWithByteArray_(IOSByteArray *data) {
  ARUtils_initialize();
  
#line 39
  if (data == nil) {
    return @"null";
  }
  else {
    
#line 42
    return ARCrypto_hexWithByteArray_(ARCrypto_MD5WithByteArray_(data));
  }
}


#line 46
IOSByteArray *ARUtils_intToBytesWithInt_(jint v) {
  ARUtils_initialize();
  
#line 47
  IOSByteArray *data = [IOSByteArray newArrayWithLength:4];
  jint offset = 0;
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift32(v, 24)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift32(v, 16)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift32(v, 8)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) (v & (jint) 0xFF);
  return data;
}


#line 56
jlong ARUtils_bytesToIntWithByteArray_(IOSByteArray *data) {
  ARUtils_initialize();
  
#line 57
  jint offset = 0;
  jint a1 = IOSByteArray_Get(nil_chk(data), offset + 3) & (jint) 0xFF;
  jint a2 = IOSByteArray_Get(data, offset + 2) & (jint) 0xFF;
  jint a3 = IOSByteArray_Get(data, offset + 1) & (jint) 0xFF;
  jint a4 = IOSByteArray_Get(data, offset + 0) & (jint) 0xFF;
  return (a1) + (JreLShift32(a2, 8)) + (JreLShift32(a3, 16)) + (JreLShift32(a4, 24));
}


#line 65
IOSByteArray *ARUtils_longToBytesWithLong_(jlong v) {
  ARUtils_initialize();
  
#line 66
  IOSByteArray *data = [IOSByteArray newArrayWithLength:8];
  jint offset = 0;
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 56)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 48)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 40)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 32)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 24)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 16)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) ((JreRShift64(v, 8)) & (jint) 0xFF);
  *IOSByteArray_GetRef(data, offset++) = (jbyte) (v & (jint) 0xFF);
  return data;
}


#line 79
jlong ARUtils_bytesToLongWithByteArray_(IOSByteArray *data) {
  ARUtils_initialize();
  
#line 80
  jint offset = 0;
  jlong a1 = IOSByteArray_Get(nil_chk(data), offset + 3) & (jint) 0xFF;
  jlong a2 = IOSByteArray_Get(data, offset + 2) & (jint) 0xFF;
  jlong a3 = IOSByteArray_Get(data, offset + 1) & (jint) 0xFF;
  jlong a4 = IOSByteArray_Get(data, offset + 0) & (jint) 0xFF;
  
#line 86
  jlong res1 = (a1) + (JreLShift64(a2, 8)) + (JreLShift64(a3, 16)) + (JreLShift64(a4, 24));
  offset += 4;
  
#line 89
  jlong b1 = IOSByteArray_Get(data, offset + 3) & (jint) 0xFF;
  jlong b2 = IOSByteArray_Get(data, offset + 2) & (jint) 0xFF;
  jlong b3 = IOSByteArray_Get(data, offset + 1) & (jint) 0xFF;
  jlong b4 = IOSByteArray_Get(data, offset + 0) & (jint) 0xFF;
  
#line 94
  jlong res2 = (b1) + (JreLShift64(b2, 8)) + (JreLShift64(b3, 16)) + (JreLShift64(b4, 24));
  offset += 4;
  
#line 97
  return res2 + (JreLShift64(res1, 32));
}


#line 100
void ARUtils_init(ARUtils *self) {
  (void) NSObject_init(self);
}


#line 100
ARUtils *new_ARUtils_init() {
  ARUtils *self = [ARUtils alloc];
  ARUtils_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUtils)

#pragma clang diagnostic pop
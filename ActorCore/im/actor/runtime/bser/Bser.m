//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/Bser.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserParser.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/DataInput.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARBser ()

- (instancetype)init;

@end

__attribute__((unused)) static void ARBser_init(ARBser *self);

__attribute__((unused)) static ARBser *new_ARBser_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/bser/Bser.java"


#line 9
@implementation ARBser

+ (id)parseWithARBserCreator:(id<ARBserCreator>)creator
               withByteArray:(IOSByteArray *)data {
  return ARBser_parseWithARBserCreator_withByteArray_(creator, data);
}


#line 15
+ (id)parseWithARBserObject:(ARBserObject *)res
              withByteArray:(IOSByteArray *)data {
  return ARBser_parseWithARBserObject_withByteArray_(res, data);
}


#line 19
+ (id)parseWithARBserObject:(ARBserObject *)res
            withARDataInput:(ARDataInput *)inputStream {
  return ARBser_parseWithARBserObject_withARDataInput_(res, inputStream);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARBser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithARBserCreator:withByteArray:", "parse", "TT;", 0x9, "Ljava.io.IOException;", "<T:Lim/actor/runtime/bser/BserObject;>(Lim/actor/runtime/bser/BserCreator<TT;>;[B)TT;" },
    { "parseWithARBserObject:withByteArray:", "parse", "TT;", 0x9, "Ljava.io.IOException;", "<T:Lim/actor/runtime/bser/BserObject;>(TT;[B)TT;" },
    { "parseWithARBserObject:withARDataInput:", "parse", "TT;", 0x9, "Ljava.io.IOException;", "<T:Lim/actor/runtime/bser/BserObject;>(TT;Lim/actor/runtime/bser/DataInput;)TT;" },
    { "init", "Bser", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARBser = { 2, "Bser", "im.actor.runtime.bser", NULL, 0x11, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARBser;
}

@end


#line 11
id ARBser_parseWithARBserCreator_withByteArray_(id<ARBserCreator> creator, IOSByteArray *data) {
  ARBser_initialize();
  
#line 12
  return ARBser_parseWithARBserObject_withARDataInput_([((id<ARBserCreator>) nil_chk(creator)) createInstance], new_ARDataInput_initWithByteArray_withInt_withInt_(data, 0, ((IOSByteArray *) nil_chk(data))->size_));
}


#line 15
id ARBser_parseWithARBserObject_withByteArray_(ARBserObject *res, IOSByteArray *data) {
  ARBser_initialize();
  
#line 16
  return ARBser_parseWithARBserObject_withARDataInput_(res, new_ARDataInput_initWithByteArray_withInt_withInt_(data, 0, ((IOSByteArray *) nil_chk(data))->size_));
}


#line 19
id ARBser_parseWithARBserObject_withARDataInput_(ARBserObject *res, ARDataInput *inputStream) {
  ARBser_initialize();
  
#line 20
  ARBserValues *reader = new_ARBserValues_initWithARSparseArray_(ARBserParser_deserializeWithARDataInput_(inputStream));
  [((ARBserObject *) nil_chk(res)) parseWithARBserValues:reader];
  return res;
}


#line 25
void ARBser_init(ARBser *self) {
  (void) NSObject_init(self);
}


#line 25
ARBser *new_ARBser_init() {
  ARBser *self = [ARBser alloc];
  ARBser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARBser)

#pragma clang diagnostic pop

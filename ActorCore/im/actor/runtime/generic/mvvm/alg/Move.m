//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/alg/Move.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/generic/mvvm/alg/Move.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMove () {
 @public
  jint sourceIndex_;
  jint destIndex_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/alg/Move.java"


#line 3
@implementation ARMove


#line 7
- (instancetype)initWithInt:(jint)sourceIndex
                    withInt:(jint)destIndex {
  ARMove_initWithInt_withInt_(self, sourceIndex, destIndex);
  return self;
}


#line 12
- (jint)getSourceIndex {
  return sourceIndex_;
}

- (jint)getDestIndex {
  return destIndex_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "Move", NULL, 0x1, NULL, NULL },
    { "getSourceIndex", NULL, "I", 0x1, NULL, NULL },
    { "getDestIndex", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sourceIndex_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "destIndex_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARMove = { 2, "Move", "im.actor.runtime.generic.mvvm.alg", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARMove;
}

@end


#line 7
void ARMove_initWithInt_withInt_(ARMove *self, jint sourceIndex, jint destIndex) {
  (void) NSObject_init(self);
  
#line 8
  self->sourceIndex_ = sourceIndex;
  self->destIndex_ = destIndex;
}


#line 7
ARMove *new_ARMove_initWithInt_withInt_(jint sourceIndex, jint destIndex) {
  ARMove *self = [ARMove alloc];
  ARMove_initWithInt_withInt_(self, sourceIndex, destIndex);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMove)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/StringMatch.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/util/StringMatch.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACStringMatch () {
 @public
  jint start_;
  jint length_;
}

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/StringMatch.java"


#line 3
@implementation ACStringMatch


#line 8
- (instancetype)initWithInt:(jint)start
                    withInt:(jint)length {
  ACStringMatch_initWithInt_withInt_(self, start, length);
  return self;
}


#line 13
- (jint)getStart {
  return start_;
}

- (jint)getLength {
  return length_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "StringMatch", NULL, 0x1, NULL, NULL },
    { "getStart", NULL, "I", 0x1, NULL, NULL },
    { "getLength", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "start_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACStringMatch = { 2, "StringMatch", "im.actor.core.util", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACStringMatch;
}

@end


#line 8
void ACStringMatch_initWithInt_withInt_(ACStringMatch *self, jint start, jint length) {
  (void) NSObject_init(self);
  
#line 9
  self->start_ = start;
  self->length_ = length;
}


#line 8
ACStringMatch *new_ACStringMatch_initWithInt_withInt_(jint start, jint length) {
  ACStringMatch *self = [ACStringMatch alloc];
  ACStringMatch_initWithInt_withInt_(self, start, length);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACStringMatch)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/regexp/PatternCompat.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/regexp/MatcherCompat.h"
#include "im/actor/runtime/regexp/PatternCompat.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/regexp/PatternCompat.java"


#line 3
@implementation ImActorRuntimeRegexpPatternCompat

- (instancetype)initWithNSString:(NSString *)pattern {
  ImActorRuntimeRegexpPatternCompat_initWithNSString_(self, pattern);
  return self;
}


#line 8
- (id<ImActorRuntimeRegexpMatcherCompat>)matcherWithNSString:(NSString *)input {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "PatternCompat", NULL, 0x1, NULL, NULL },
    { "matcherWithNSString:", "matcher", "Lim.actor.runtime.regexp.MatcherCompat;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ImActorRuntimeRegexpPatternCompat = { 2, "PatternCompat", "im.actor.runtime.regexp", NULL, 0x401, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorRuntimeRegexpPatternCompat;
}

@end


#line 5
void ImActorRuntimeRegexpPatternCompat_initWithNSString_(ImActorRuntimeRegexpPatternCompat *self, NSString *pattern) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorRuntimeRegexpPatternCompat)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDRawText.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/markdown/MDRawText.h"
#include "im/actor/runtime/markdown/MDText.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMDRawText () {
 @public
  NSString *rawText_;
}

@end

J2OBJC_FIELD_SETTER(ARMDRawText, rawText_, NSString *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDRawText.java"


#line 3
@implementation ARMDRawText


#line 6
- (instancetype)initWithNSString:(NSString *)rawText {
  ARMDRawText_initWithNSString_(self, rawText);
  return self;
}


#line 10
- (NSString *)getRawText {
  return rawText_;
}


#line 15
- (NSString *)toMarkdown {
  return rawText_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "MDRawText", NULL, 0x1, NULL, NULL },
    { "getRawText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toMarkdown", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "rawText_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARMDRawText = { 2, "MDRawText", "im.actor.runtime.markdown", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARMDRawText;
}

@end


#line 6
void ARMDRawText_initWithNSString_(ARMDRawText *self, NSString *rawText) {
  (void) ARMDText_init(self);
  
#line 7
  self->rawText_ = rawText;
}


#line 6
ARMDRawText *new_ARMDRawText_initWithNSString_(NSString *rawText) {
  ARMDRawText *self = [ARMDRawText alloc];
  ARMDRawText_initWithNSString_(self, rawText);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMDRawText)

#pragma clang diagnostic pop

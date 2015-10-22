//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDDocument.java
//

#include <j2objc/IOSObjectArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/markdown/MDDocument.h"
#include "im/actor/runtime/markdown/MDRawText.h"
#include "im/actor/runtime/markdown/MDSection.h"
#include "im/actor/runtime/markdown/MDText.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMDDocument () {
 @public
  IOSObjectArray *sections_;
}

@end

J2OBJC_FIELD_SETTER(ARMDDocument, sections_, IOSObjectArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDDocument.java"


#line 3
@implementation ARMDDocument


#line 6
- (instancetype)initWithARMDSectionArray:(IOSObjectArray *)sections {
  ARMDDocument_initWithARMDSectionArray_(self, sections);
  return self;
}


#line 10
- (IOSObjectArray *)getSections {
  return sections_;
}

- (jboolean)isTrivial {
  if (((IOSObjectArray *) nil_chk(sections_))->size_ == 1) {
    if ([((ARMDSection *) nil_chk(IOSObjectArray_Get(sections_, 0))) getType] == ARMDSection_TYPE_TEXT) {
      if (((IOSObjectArray *) nil_chk([((ARMDSection *) nil_chk(IOSObjectArray_Get(sections_, 0))) getText]))->size_ == 1) {
        if ([IOSObjectArray_Get(nil_chk([((ARMDSection *) nil_chk(IOSObjectArray_Get(sections_, 0))) getText]), 0) isKindOfClass:[ARMDRawText class]]) {
          return true;
        }
      }
    }
  }
  return false;
}

- (NSString *)toMarkdown {
  NSString *res = @"";
  {
    IOSObjectArray *a__ =
#line 29
    sections_;
    ARMDSection * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ARMDSection * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ARMDSection *section = *b__++;
      
#line 30
      if (((jint) [res length]) > 0) {
        (void) JreStrAppendStrong(&res, "$", @"\n");
      }
      (void) JreStrAppendStrong(&res, "$", [((ARMDSection *) nil_chk(section)) toMarkdown]);
    }
  }
  
#line 35
  return res;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARMDSectionArray:", "MDDocument", NULL, 0x1, NULL, NULL },
    { "getSections", NULL, "[Lim.actor.runtime.markdown.MDSection;", 0x1, NULL, NULL },
    { "isTrivial", NULL, "Z", 0x1, NULL, NULL },
    { "toMarkdown", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sections_", NULL, 0x2, "[Lim.actor.runtime.markdown.MDSection;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARMDDocument = { 2, "MDDocument", "im.actor.runtime.markdown", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARMDDocument;
}

@end


#line 6
void ARMDDocument_initWithARMDSectionArray_(ARMDDocument *self, IOSObjectArray *sections) {
  (void) NSObject_init(self);
  
#line 7
  self->sections_ = sections;
}


#line 6
ARMDDocument *new_ARMDDocument_initWithARMDSectionArray_(IOSObjectArray *sections) {
  ARMDDocument *self = [ARMDDocument alloc];
  ARMDDocument_initWithARMDSectionArray_(self, sections);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMDDocument)

#pragma clang diagnostic pop

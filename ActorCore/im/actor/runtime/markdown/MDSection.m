//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDSection.java
//

#include <j2objc/IOSObjectArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/markdown/MDCode.h"
#include "im/actor/runtime/markdown/MDSection.h"
#include "im/actor/runtime/markdown/MDText.h"
#include <j2objc/java/lang/RuntimeException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMDSection () {
 @public
  jint type_;
  ARMDCode *code_;
  IOSObjectArray *text_;
}

@end

J2OBJC_FIELD_SETTER(ARMDSection, code_, ARMDCode *)
J2OBJC_FIELD_SETTER(ARMDSection, text_, IOSObjectArray *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/MDSection.java"


#line 3
@implementation ARMDSection

+ (jint)TYPE_TEXT {
  return ARMDSection_TYPE_TEXT;
}

+ (jint)TYPE_CODE {
  return ARMDSection_TYPE_CODE;
}


#line 12
- (instancetype)initWithARMDCode:(ARMDCode *)code {
  ARMDSection_initWithARMDCode_(self, code);
  return self;
}

- (instancetype)initWithARMDTextArray:(IOSObjectArray *)text {
  ARMDSection_initWithARMDTextArray_(self, text);
  return self;
}

- (jint)getType {
  return type_;
}

- (ARMDCode *)getCode {
  return code_;
}

- (IOSObjectArray *)getText {
  return text_;
}

- (NSString *)toMarkdown {
  if (type_ == ARMDSection_TYPE_TEXT) {
    NSString *res = @"";
    {
      IOSObjectArray *a__ =
#line 37
      text_;
      ARMDText * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      ARMDText * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        ARMDText *t = *b__++;
        
#line 38
        (void) JreStrAppendStrong(&res, "$", [((ARMDText *) nil_chk(t)) toMarkdown]);
      }
    }
    
#line 40
    return res;
  }
  else
#line 41
  if (type_ == ARMDSection_TYPE_CODE) {
    return JreStrcat("$$$", @"```\n",
#line 43
    [((ARMDCode *) nil_chk(code_)) getCode], @"\n```");
  }
  else {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Unknown type");
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARMDCode:", "MDSection", NULL, 0x1, NULL, NULL },
    { "initWithARMDTextArray:", "MDSection", NULL, 0x1, NULL, NULL },
    { "getType", NULL, "I", 0x1, NULL, NULL },
    { "getCode", NULL, "Lim.actor.runtime.markdown.MDCode;", 0x1, NULL, NULL },
    { "getText", NULL, "[Lim.actor.runtime.markdown.MDText;", 0x1, NULL, NULL },
    { "toMarkdown", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_TEXT", "TYPE_TEXT", 0x19, "I", NULL, NULL, .constantValue.asInt = ARMDSection_TYPE_TEXT },
    { "TYPE_CODE", "TYPE_CODE", 0x19, "I", NULL, NULL, .constantValue.asInt = ARMDSection_TYPE_CODE },
    { "type_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "code_", NULL, 0x2, "Lim.actor.runtime.markdown.MDCode;", NULL, NULL, .constantValue.asLong = 0 },
    { "text_", NULL, 0x2, "[Lim.actor.runtime.markdown.MDText;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARMDSection = { 2, "MDSection", "im.actor.runtime.markdown", NULL, 0x1, 6, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARMDSection;
}

@end


#line 12
void ARMDSection_initWithARMDCode_(ARMDSection *self, ARMDCode *code) {
  (void) NSObject_init(self);
  
#line 13
  self->code_ = code;
  self->type_ = ARMDSection_TYPE_CODE;
}


#line 12
ARMDSection *new_ARMDSection_initWithARMDCode_(ARMDCode *code) {
  ARMDSection *self = [ARMDSection alloc];
  ARMDSection_initWithARMDCode_(self, code);
  return self;
}


#line 17
void ARMDSection_initWithARMDTextArray_(ARMDSection *self, IOSObjectArray *text) {
  (void) NSObject_init(self);
  
#line 18
  self->text_ = text;
  self->type_ = ARMDSection_TYPE_TEXT;
}


#line 17
ARMDSection *new_ARMDSection_initWithARMDTextArray_(IOSObjectArray *text) {
  ARMDSection *self = [ARMDSection alloc];
  ARMDSection_initWithARMDTextArray_(self, text);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMDSection)

#pragma clang diagnostic pop

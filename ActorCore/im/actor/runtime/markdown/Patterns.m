//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/Patterns.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/RegExpRuntimeProvider.h"
#include "im/actor/runtime/markdown/Patterns.h"
#include "im/actor/runtime/regexp/MatcherCompat.h"
#include "im/actor/runtime/regexp/PatternCompat.h"
#include <j2objc/java/lang/Character.h>
#include <j2objc/java/lang/StringBuilder.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARPatterns ()

/*!
 @brief Do not create this static utility class.
 */
- (instancetype)init;

@end

static ARRegExpRuntimeProvider *ARPatterns_regExpProvider_;
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, regExpProvider_, ARRegExpRuntimeProvider *)

static NSString *ARPatterns_IP_ADDRESS_CHAR_ = @"((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))";
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, IP_ADDRESS_CHAR_, NSString *)

static NSString *ARPatterns_IRI_;
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, IRI_, NSString *)

static NSString *ARPatterns_GOOD_GTLD_CHAR_;
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, GOOD_GTLD_CHAR_, NSString *)

static NSString *ARPatterns_GTLD_;
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, GTLD_, NSString *)

static NSString *ARPatterns_HOST_NAME_;
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, HOST_NAME_, NSString *)

static NSString *ARPatterns_DOMAIN_NAME_CHAR_;
J2OBJC_STATIC_FIELD_GETTER(ARPatterns, DOMAIN_NAME_CHAR_, NSString *)

__attribute__((unused)) static void ARPatterns_init(ARPatterns *self);

__attribute__((unused)) static ARPatterns *new_ARPatterns_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/markdown/Patterns.java"

J2OBJC_INITIALIZED_DEFN(ARPatterns)

NSString *ARPatterns_GOOD_IRI_CHAR_;
ImActorRuntimeRegexpPatternCompat *ARPatterns_IP_ADDRESS_;
ImActorRuntimeRegexpPatternCompat *ARPatterns_DOMAIN_NAME_;
NSString *ARPatterns_WEB_URL_CHAR_;
NSString *ARPatterns_WEB_URL_START_CHAR_;
ImActorRuntimeRegexpPatternCompat *ARPatterns_WEB_URL_;
ImActorRuntimeRegexpPatternCompat *ARPatterns_WEB_URL_START_;
ImActorRuntimeRegexpPatternCompat *ARPatterns_EMAIL_ADDRESS_;
ImActorRuntimeRegexpPatternCompat *ARPatterns_PHONE_;


#line 25
@implementation ARPatterns

+ (NSString *)GOOD_IRI_CHAR {
  return ARPatterns_GOOD_IRI_CHAR_;
}

+ (ImActorRuntimeRegexpPatternCompat *)IP_ADDRESS {
  return ARPatterns_IP_ADDRESS_;
}

+ (ImActorRuntimeRegexpPatternCompat *)DOMAIN_NAME {
  return ARPatterns_DOMAIN_NAME_;
}

+ (NSString *)WEB_URL_CHAR {
  return ARPatterns_WEB_URL_CHAR_;
}

+ (NSString *)WEB_URL_START_CHAR {
  return ARPatterns_WEB_URL_START_CHAR_;
}

+ (ImActorRuntimeRegexpPatternCompat *)WEB_URL {
  return ARPatterns_WEB_URL_;
}

+ (ImActorRuntimeRegexpPatternCompat *)WEB_URL_START {
  return ARPatterns_WEB_URL_START_;
}

+ (ImActorRuntimeRegexpPatternCompat *)EMAIL_ADDRESS {
  return ARPatterns_EMAIL_ADDRESS_;
}

+ (ImActorRuntimeRegexpPatternCompat *)PHONE {
  return ARPatterns_PHONE_;
}


#line 114
+ (NSString *)concatGroupsWithImActorRuntimeRegexpMatcherCompat:(id<ImActorRuntimeRegexpMatcherCompat>)matcher {
  return ARPatterns_concatGroupsWithImActorRuntimeRegexpMatcherCompat_(matcher);
}


#line 135
+ (NSString *)digitsAndPlusOnlyWithImActorRuntimeRegexpMatcherCompat:(id<ImActorRuntimeRegexpMatcherCompat>)matcher {
  return ARPatterns_digitsAndPlusOnlyWithImActorRuntimeRegexpMatcherCompat_(matcher);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 149
- (instancetype)init {
  ARPatterns_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [ARPatterns class]) {
    ARPatterns_regExpProvider_ = new_ARRegExpRuntimeProvider_init();
    ARPatterns_GOOD_IRI_CHAR_ =
#line 35
    [NSString stringWithCharacters:(jchar[]) { (int) 0x61, (int) 0x2d, (int) 0x7a, (int) 0x41, (int) 0x2d, (int) 0x5a, (int) 0x30, (int) 0x2d, (int) 0x39, (int) 0xa0, (int) 0x2d, (int) 0xd7ff, (int) 0xf900, (int) 0x2d, (int) 0xfdcf, (int) 0xfdf0, (int) 0x2d, (int) 0xffef } length:18];
    ARPatterns_IP_ADDRESS_ =
#line 40
    [ARPatterns_regExpProvider_ getPatternWithPattern:ARPatterns_IP_ADDRESS_CHAR_];
    ARPatterns_IRI_ = JreStrcat("C$$$$$$", '[',
#line 45
    ARPatterns_GOOD_IRI_CHAR_, @"]([", ARPatterns_GOOD_IRI_CHAR_, @"\\-]{0,61}[", ARPatterns_GOOD_IRI_CHAR_, @"]){0,1}");
    ARPatterns_GOOD_GTLD_CHAR_ =
#line 47
    [NSString stringWithCharacters:(jchar[]) { (int) 0x61, (int) 0x2d, (int) 0x7a, (int) 0x41, (int) 0x2d, (int) 0x5a, (int) 0xa0, (int) 0x2d, (int) 0xd7ff, (int) 0xf900, (int) 0x2d, (int) 0xfdcf, (int) 0xfdf0, (int) 0x2d, (int) 0xffef } length:15];
    ARPatterns_GTLD_ = JreStrcat("C$$", '[',
#line 48
    ARPatterns_GOOD_GTLD_CHAR_, @"]{2,63}");
    ARPatterns_HOST_NAME_ = JreStrcat("C$$$", '(',
#line 49
    ARPatterns_IRI_, @"\\.)+", ARPatterns_GTLD_);
    ARPatterns_DOMAIN_NAME_CHAR_ = JreStrcat("C$C$C", '(',
#line 51
    ARPatterns_HOST_NAME_, '|', ARPatterns_IP_ADDRESS_CHAR_, ')');
    ARPatterns_DOMAIN_NAME_ =
#line 52
    [ARPatterns_regExpProvider_ getPatternWithPattern:ARPatterns_DOMAIN_NAME_CHAR_];
    ARPatterns_WEB_URL_CHAR_ = JreStrcat("$$$$$", @"((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:",
#line 57
    ARPatterns_DOMAIN_NAME_CHAR_, @")(?:\\:\\d{1,5})?)(\\/(?:(?:[",
#line 59
    ARPatterns_GOOD_IRI_CHAR_, @"\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)");
    ARPatterns_WEB_URL_START_CHAR_ = JreStrcat("C$", '^',
#line 63
    ARPatterns_WEB_URL_CHAR_);
    ARPatterns_WEB_URL_ =
#line 70
    [ARPatterns_regExpProvider_ getPatternWithPattern:ARPatterns_WEB_URL_CHAR_];
    ARPatterns_WEB_URL_START_ =
#line 71
    [ARPatterns_regExpProvider_ getPatternWithPattern:ARPatterns_WEB_URL_START_CHAR_];
    ARPatterns_EMAIL_ADDRESS_ =
#line 76
    [ARPatterns_regExpProvider_ getPatternWithPattern:@"[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"];
    ARPatterns_PHONE_ =
#line 100
    [ARPatterns_regExpProvider_ getPatternWithPattern:@"(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]+[0-9])"];
    J2OBJC_SET_INITIALIZED(ARPatterns)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "concatGroupsWithImActorRuntimeRegexpMatcherCompat:", "concatGroups", "Ljava.lang.String;", 0x19, NULL, NULL },
    { "digitsAndPlusOnlyWithImActorRuntimeRegexpMatcherCompat:", "digitsAndPlusOnly", "Ljava.lang.String;", 0x19, NULL, NULL },
    { "init", "Patterns", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "regExpProvider_", NULL, 0x1a, "Lim.actor.runtime.RegExpRuntimeProvider;", &ARPatterns_regExpProvider_, NULL, .constantValue.asLong = 0 },
    { "GOOD_IRI_CHAR_", NULL, 0x19, "Ljava.lang.String;", &ARPatterns_GOOD_IRI_CHAR_, NULL, .constantValue.asLong = 0 },
    { "IP_ADDRESS_CHAR_", NULL, 0x1a, "Ljava.lang.String;", &ARPatterns_IP_ADDRESS_CHAR_, NULL, .constantValue.asLong = 0 },
    { "IP_ADDRESS_", NULL, 0x19, "Lim.actor.runtime.regexp.PatternCompat;", &ARPatterns_IP_ADDRESS_, NULL, .constantValue.asLong = 0 },
    { "IRI_", NULL, 0x1a, "Ljava.lang.String;", &ARPatterns_IRI_, NULL, .constantValue.asLong = 0 },
    { "GOOD_GTLD_CHAR_", NULL, 0x1a, "Ljava.lang.String;", &ARPatterns_GOOD_GTLD_CHAR_, NULL, .constantValue.asLong = 0 },
    { "GTLD_", NULL, 0x1a, "Ljava.lang.String;", &ARPatterns_GTLD_, NULL, .constantValue.asLong = 0 },
    { "HOST_NAME_", NULL, 0x1a, "Ljava.lang.String;", &ARPatterns_HOST_NAME_, NULL, .constantValue.asLong = 0 },
    { "DOMAIN_NAME_CHAR_", NULL, 0x1a, "Ljava.lang.String;", &ARPatterns_DOMAIN_NAME_CHAR_, NULL, .constantValue.asLong = 0 },
    { "DOMAIN_NAME_", NULL, 0x19, "Lim.actor.runtime.regexp.PatternCompat;", &ARPatterns_DOMAIN_NAME_, NULL, .constantValue.asLong = 0 },
    { "WEB_URL_CHAR_", NULL, 0x19, "Ljava.lang.String;", &ARPatterns_WEB_URL_CHAR_, NULL, .constantValue.asLong = 0 },
    { "WEB_URL_START_CHAR_", NULL, 0x19, "Ljava.lang.String;", &ARPatterns_WEB_URL_START_CHAR_, NULL, .constantValue.asLong = 0 },
    { "WEB_URL_", NULL, 0x19, "Lim.actor.runtime.regexp.PatternCompat;", &ARPatterns_WEB_URL_, NULL, .constantValue.asLong = 0 },
    { "WEB_URL_START_", NULL, 0x19, "Lim.actor.runtime.regexp.PatternCompat;", &ARPatterns_WEB_URL_START_, NULL, .constantValue.asLong = 0 },
    { "EMAIL_ADDRESS_", NULL, 0x19, "Lim.actor.runtime.regexp.PatternCompat;", &ARPatterns_EMAIL_ADDRESS_, NULL, .constantValue.asLong = 0 },
    { "PHONE_", NULL, 0x19, "Lim.actor.runtime.regexp.PatternCompat;", &ARPatterns_PHONE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARPatterns = { 2, "Patterns", "im.actor.runtime.markdown", NULL, 0x1, 3, methods, 16, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARPatterns;
}

@end


#line 114
NSString *ARPatterns_concatGroupsWithImActorRuntimeRegexpMatcherCompat_(id<ImActorRuntimeRegexpMatcherCompat> matcher) {
  ARPatterns_initialize();
  
#line 115
  JavaLangStringBuilder *b = new_JavaLangStringBuilder_init();
  jint numGroups = [((id<ImActorRuntimeRegexpMatcherCompat>) nil_chk(matcher)) groupCount];
  for (jint i = 1; i <= numGroups; i++) {
    NSString *s = [matcher groupWithInt:i];
    if (s != nil) {
      (void) [b appendWithNSString:s];
    }
  }
  return [b description];
}


#line 135
NSString *ARPatterns_digitsAndPlusOnlyWithImActorRuntimeRegexpMatcherCompat_(id<ImActorRuntimeRegexpMatcherCompat> matcher) {
  ARPatterns_initialize();
  
#line 136
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_init();
  NSString *matchingRegion = [((id<ImActorRuntimeRegexpMatcherCompat>) nil_chk(matcher)) group];
  for (jint i = 0, size = ((jint) [((NSString *) nil_chk(matchingRegion)) length]); i < size; i++) {
    jchar character = [matchingRegion charAtWithInt:i];
    if (character == '+' || JavaLangCharacter_isDigitWithChar_(character)) {
      (void) [buffer appendWithChar:character];
    }
  }
  return [buffer description];
}


#line 149
void ARPatterns_init(ARPatterns *self) {
  (void) NSObject_init(self);
}


#line 149
ARPatterns *new_ARPatterns_init() {
  ARPatterns *self = [ARPatterns alloc];
  ARPatterns_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARPatterns)

#pragma clang diagnostic pop

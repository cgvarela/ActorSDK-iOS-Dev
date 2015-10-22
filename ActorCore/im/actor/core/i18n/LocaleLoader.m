//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/i18n/LocaleLoader.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/i18n/LocaleLoader.h"
#include "im/actor/runtime/Assets.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/i18n/LocaleLoader.java"


#line 8
@implementation ACLocaleLoader

+ (JavaUtilHashMap *)loadPropertiesFileWithNSString:(NSString *)name {
  return ACLocaleLoader_loadPropertiesFileWithNSString_(name);
}


#line 26
+ (IOSObjectArray *)linesWorkaroundWithNSString:(NSString *)s {
  return ACLocaleLoader_linesWorkaroundWithNSString_(s);
}


#line 37
+ (IOSObjectArray *)valuesWorkaroundWithNSString:(NSString *)s {
  return ACLocaleLoader_valuesWorkaroundWithNSString_(s);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACLocaleLoader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "loadPropertiesFileWithNSString:", "loadPropertiesFile", "Ljava.util.HashMap;", 0x9, NULL, NULL },
    { "linesWorkaroundWithNSString:", "linesWorkaround", "[Ljava.lang.String;", 0x8, NULL, NULL },
    { "valuesWorkaroundWithNSString:", "valuesWorkaround", "[Ljava.lang.String;", 0x8, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACLocaleLoader = { 2, "LocaleLoader", "im.actor.core.i18n", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACLocaleLoader;
}

@end


#line 10
JavaUtilHashMap *ACLocaleLoader_loadPropertiesFileWithNSString_(NSString *name) {
  ACLocaleLoader_initialize();
  
#line 11
  NSString *fileContent = ARAssets_loadAssetWithNSString_(name);
  JavaUtilHashMap *res = new_JavaUtilHashMap_init();
  IOSObjectArray *lines = ACLocaleLoader_linesWorkaroundWithNSString_(fileContent);
  {
    IOSObjectArray *a__ =
#line 14
    lines;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *line = *b__++;
      
#line 15
      if ([((NSString *) nil_chk(line)) hasPrefix:@"#"]) {
        continue;
      }
      IOSObjectArray *lineVal = ACLocaleLoader_valuesWorkaroundWithNSString_(line);
      if (((IOSObjectArray *) nil_chk(lineVal))->size_ == 2) {
        (void) [res putWithId:IOSObjectArray_Get(lineVal, 0) withId:IOSObjectArray_Get(lineVal, 1)];
      }
    }
  }
  
#line 23
  return res;
}


#line 26
IOSObjectArray *ACLocaleLoader_linesWorkaroundWithNSString_(NSString *s) {
  ACLocaleLoader_initialize();
  
#line 27
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  jint index;
  while ((index = [((NSString *) nil_chk(s)) indexOfString:@"\n"]) >= 0) {
    [res addWithId:[s substring:0 endIndex:index]];
    s = [s substring:index + 1];
  }
  [res addWithId:s];
  return [res toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[res size] type:NSString_class_()]];
}


#line 37
IOSObjectArray *ACLocaleLoader_valuesWorkaroundWithNSString_(NSString *s) {
  ACLocaleLoader_initialize();
  
#line 38
  jint index;
  if ((index = [((NSString *) nil_chk(s)) indexOfString:@"="]) >= 0) {
    return [IOSObjectArray newArrayWithObjects:(id[]){ [s substring:0 endIndex:index],
#line 41
    [s substring:index + 1] } count:2 type:NSString_class_()];
  }
  
#line 44
  return [IOSObjectArray newArrayWithObjects:(id[]){ s } count:1 type:NSString_class_()];
}

void ACLocaleLoader_init(ACLocaleLoader *self) {
  (void) NSObject_init(self);
}

ACLocaleLoader *new_ACLocaleLoader_init() {
  ACLocaleLoader *self = [ACLocaleLoader alloc];
  ACLocaleLoader_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACLocaleLoader)

#pragma clang diagnostic pop

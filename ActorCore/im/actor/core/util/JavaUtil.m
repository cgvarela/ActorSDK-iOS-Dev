//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/JavaUtil.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/util/JavaUtil.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/JavaUtil.java"


#line 13
@implementation ACJavaUtil


#line 22
+ (jboolean)containsWithNSStringArray:(IOSObjectArray *)vals
                         withNSString:(NSString *)value {
  return ACJavaUtil_containsWithNSStringArray_withNSString_(vals, value);
}


#line 38
+ (jboolean)equalsEWithId:(id)a
                   withId:(id)b {
  return ACJavaUtil_equalsEWithId_withId_(a, b);
}


#line 59
+ (id<JavaUtilList>)lastWithJavaUtilList:(id<JavaUtilList>)elements
                                 withInt:(jint)limit {
  return ACJavaUtil_lastWithJavaUtilList_withInt_(elements, limit);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACJavaUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "containsWithNSStringArray:withNSString:", "contains", "Z", 0x9, NULL, NULL },
    { "equalsEWithId:withId:", "equalsE", "Z", 0x9, NULL, "<T:Ljava/lang/Object;>(TT;TT;)Z" },
    { "lastWithJavaUtilList:withInt:", "last", "Ljava.util.List;", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/util/List<TT;>;I)Ljava/util/List<TT;>;" },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACJavaUtil = { 2, "JavaUtil", "im.actor.core.util", NULL, 0x1, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACJavaUtil;
}

@end


#line 22
jboolean ACJavaUtil_containsWithNSStringArray_withNSString_(IOSObjectArray *vals, NSString *value) {
  ACJavaUtil_initialize();
  
#line 23
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(vals))->size_; i++) {
    if ([((NSString *) nil_chk(IOSObjectArray_Get(vals, i))) isEqual:value]) {
      return true;
    }
  }
  return false;
}


#line 38
jboolean ACJavaUtil_equalsEWithId_withId_(id a, id b) {
  ACJavaUtil_initialize();
  
#line 39
  if (a == nil && b == nil) {
    return true;
  }
  if (a != nil && b == nil) {
    return false;
  }
  if (a == nil) {
    return false;
  }
  return [nil_chk(a) isEqual:b];
}


#line 59
id<JavaUtilList> ACJavaUtil_lastWithJavaUtilList_withInt_(id<JavaUtilList> elements, jint limit) {
  ACJavaUtil_initialize();
  
#line 60
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(elements)) size]; i++) {
    if ([res size] >= limit) {
      break;
    }
    [res addWithId:[elements getWithInt:[elements size] - 1 - i]];
  }
  return res;
}

void ACJavaUtil_init(ACJavaUtil *self) {
  (void) NSObject_init(self);
}

ACJavaUtil *new_ACJavaUtil_init() {
  ACJavaUtil *self = [ACJavaUtil alloc];
  ACJavaUtil_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACJavaUtil)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//com/google/j2objc/annotations/ObjectiveCName.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSObjectArray.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include <j2objc/java/lang/annotation/ElementType.h>
#include <j2objc/java/lang/annotation/Retention.h>
#include <j2objc/java/lang/annotation/RetentionPolicy.h>
#include <j2objc/java/lang/annotation/Target.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//com/google/j2objc/annotations/ObjectiveCName.java"


#line 38
@implementation ComGoogleJ2objcAnnotationsObjectiveCName

@synthesize value = value_;

- (instancetype)initWithValue:(NSString *)value__ {
  if ((self = [super init])) {
    self->value_ = RETAIN_(value__);
  }
  return self;
}

- (IOSClass *)annotationType {
  return ComGoogleJ2objcAnnotationsObjectiveCName_class_();
}

- (NSString *)description {
  return @"@com.google.j2objc.annotations.ObjectiveCName()";
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangAnnotationTarget alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { JavaLangAnnotationElementTypeEnum_get_TYPE(), JavaLangAnnotationElementTypeEnum_get_METHOD(), JavaLangAnnotationElementTypeEnum_get_CONSTRUCTOR(), JavaLangAnnotationElementTypeEnum_get_PACKAGE() } count:4 type:NSObject_class_()]], [[JavaLangAnnotationRetention alloc] initWithValue:JavaLangAnnotationRetentionPolicyEnum_get_RUNTIME()] } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "value", "value", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "valueDefault", "value", "Ljava.lang.String;", 0x100a, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleJ2objcAnnotationsObjectiveCName = { 2, "ObjectiveCName", "com.google.j2objc.annotations", NULL, 0x2609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleJ2objcAnnotationsObjectiveCName;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleJ2objcAnnotationsObjectiveCName)

#pragma clang diagnostic pop

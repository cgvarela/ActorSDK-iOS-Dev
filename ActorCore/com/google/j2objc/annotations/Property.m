//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//com/google/j2objc/annotations/Property.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/J2ObjC_source.h>
#include "com/google/j2objc/annotations/Property.h"
#include <j2objc/java/lang/annotation/ElementType.h>
#include <j2objc/java/lang/annotation/Retention.h>
#include <j2objc/java/lang/annotation/RetentionPolicy.h>
#include <j2objc/java/lang/annotation/Target.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ComGoogleJ2objcAnnotationsProperty : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//com/google/j2objc/annotations/Property.java"


#line 51
@implementation ComGoogleJ2objcAnnotationsProperty

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangAnnotationRetention alloc] initWithValue:JavaLangAnnotationRetentionPolicyEnum_get_SOURCE()], [[JavaLangAnnotationTarget alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { JavaLangAnnotationElementTypeEnum_get_FIELD() } count:1 type:NSObject_class_()]] } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "value", "value", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "valueDefault", "value", "Ljava.lang.String;", 0x100a, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleJ2objcAnnotationsProperty = { 2, "Property", "com.google.j2objc.annotations", NULL, 0x2609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleJ2objcAnnotationsProperty;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleJ2objcAnnotationsProperty)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//com/google/j2objc/annotations/ObjectiveCName.java
//

#ifndef _ComGoogleJ2objcAnnotationsObjectiveCName_H_
#define _ComGoogleJ2objcAnnotationsObjectiveCName_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <j2objc/java/lang/annotation/Annotation.h>

/*!
 @brief Annotation that specifies what the Objective-C class, protocol, method,
 constructor or package declaration should be when translated.
 Though this interface is marked with <code>RetentionPolicy.RUNTIME</code>,
 it will not be emitted in transpiled output from the J2ObjC transpiler.
 This is the only annotation ignored in this way.
 @author Tom Ball
 */
@protocol ComGoogleJ2objcAnnotationsObjectiveCName < JavaLangAnnotationAnnotation >

@property (readonly) NSString *value;

@end

@interface ComGoogleJ2objcAnnotationsObjectiveCName : NSObject < ComGoogleJ2objcAnnotationsObjectiveCName > {
 @private
  NSString *value_;
}

- (instancetype)initWithValue:(NSString *)value__;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleJ2objcAnnotationsObjectiveCName)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleJ2objcAnnotationsObjectiveCName)


#pragma clang diagnostic pop
#endif // _ComGoogleJ2objcAnnotationsObjectiveCName_H_

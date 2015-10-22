//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/Log.java
//

#ifndef _ImActorRuntimeLog_H_
#define _ImActorRuntimeLog_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class JavaLangThrowable;

@interface ARLog : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)eWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)throwable;

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

@end

J2OBJC_STATIC_INIT(ARLog)

FOUNDATION_EXPORT void ARLog_wWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void ARLog_eWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *throwable);

FOUNDATION_EXPORT void ARLog_dWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void ARLog_vWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void ARLog_init(ARLog *self);

FOUNDATION_EXPORT ARLog *new_ARLog_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARLog)

@compatibility_alias ImActorRuntimeLog ARLog;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeLog_H_

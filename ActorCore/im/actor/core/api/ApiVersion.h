//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiVersion.java
//

#ifndef _ImActorCoreApiApiVersion_H_
#define _ImActorCoreApiApiVersion_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

#define ARApiVersion_VERSION_MAJOR 1
#define ARApiVersion_VERSION_MINOR 6

@interface ARApiVersion : NSObject

+ (NSString *)VERSION;

+ (jint)VERSION_MAJOR;

+ (jint)VERSION_MINOR;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiVersion)

FOUNDATION_EXPORT NSString *ARApiVersion_VERSION_;
J2OBJC_STATIC_FIELD_GETTER(ARApiVersion, VERSION_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ARApiVersion, VERSION_MAJOR, jint)

J2OBJC_STATIC_FIELD_GETTER(ARApiVersion, VERSION_MINOR, jint)

J2OBJC_TYPE_LITERAL_HEADER(ARApiVersion)

@compatibility_alias ImActorCoreApiApiVersion ARApiVersion;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiVersion_H_
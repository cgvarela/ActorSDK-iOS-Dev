//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/storage/KeyValueRecord.java
//

#ifndef _ImActorRuntimeStorageKeyValueRecord_H_
#define _ImActorRuntimeStorageKeyValueRecord_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

@interface ARKeyValueRecord : NSObject

#pragma mark Public

- (instancetype)initWithKey:(jlong)id_
                   withData:(IOSByteArray *)data;

- (IOSByteArray *)getData;

- (jlong)getId;

@end

J2OBJC_EMPTY_STATIC_INIT(ARKeyValueRecord)

FOUNDATION_EXPORT void ARKeyValueRecord_initWithKey_withData_(ARKeyValueRecord *self, jlong id_, IOSByteArray *data);

FOUNDATION_EXPORT ARKeyValueRecord *new_ARKeyValueRecord_initWithKey_withData_(jlong id_, IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARKeyValueRecord)

@compatibility_alias ImActorRuntimeStorageKeyValueRecord ARKeyValueRecord;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeStorageKeyValueRecord_H_
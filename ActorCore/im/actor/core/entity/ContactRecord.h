//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContactRecord.java
//

#ifndef _ImActorCoreEntityContactRecord_H_
#define _ImActorCoreEntityContactRecord_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACContactRecordTypeEnum;

@interface ACContactRecord : NSObject
@property (readonly, nonatomic, getter=getRecordType) ACContactRecordTypeEnum *recordType;
@property (readonly, copy, nonatomic, getter=getRecordTypeSpec) NSString *recordTypeSpec;
@property (readonly, copy, nonatomic, getter=getRecordData) NSString *recordData;
@property (readonly, copy, nonatomic, getter=getRecordTitle) NSString *recordTitle;
@property (readonly, copy, nonatomic, getter=getRecordSubtitle) NSString *recordSubtitle;

#pragma mark Public

- (instancetype)initWithACContactRecordTypeEnum:(ACContactRecordTypeEnum *)recordType
                                   withNSString:(NSString *)recordTypeSpec
                                   withNSString:(NSString *)recordData
                                   withNSString:(NSString *)recordTitle
                                   withNSString:(NSString *)recordSubtitle;

- (NSString *)getRecordData;

- (NSString *)getRecordSubtitle;

- (NSString *)getRecordTitle;

- (ACContactRecordTypeEnum *)getRecordType;

- (NSString *)getRecordTypeSpec;

@end

J2OBJC_EMPTY_STATIC_INIT(ACContactRecord)

FOUNDATION_EXPORT void ACContactRecord_initWithACContactRecordTypeEnum_withNSString_withNSString_withNSString_withNSString_(ACContactRecord *self, ACContactRecordTypeEnum *recordType, NSString *recordTypeSpec, NSString *recordData, NSString *recordTitle, NSString *recordSubtitle);

FOUNDATION_EXPORT ACContactRecord *new_ACContactRecord_initWithACContactRecordTypeEnum_withNSString_withNSString_withNSString_withNSString_(ACContactRecordTypeEnum *recordType, NSString *recordTypeSpec, NSString *recordData, NSString *recordTitle, NSString *recordSubtitle) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACContactRecord)

@compatibility_alias ImActorCoreEntityContactRecord ACContactRecord;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContactRecord_H_

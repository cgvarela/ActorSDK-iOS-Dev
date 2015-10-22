//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContentDescription.java
//

#ifndef _ImActorCoreEntityContentDescription_H_
#define _ImActorCoreEntityContentDescription_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ACAbsContent;
@class ACContentTypeEnum;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ACContentDescription : ARBserObject
@property (readonly, nonatomic, getter=getContentType) ACContentTypeEnum *contentType;
@property (readonly, copy, nonatomic, getter=getText) NSString *text;
@property (readonly, nonatomic, getter=getRelatedUser) jint relatedUser;
@property (readonly, nonatomic, getter=isSilent) jboolean isSilent;

#pragma mark Public

- (instancetype)initWithACContentTypeEnum:(ACContentTypeEnum *)contentType;

- (instancetype)initWithACContentTypeEnum:(ACContentTypeEnum *)contentType
                             withNSString:(NSString *)text;

- (instancetype)initWithACContentTypeEnum:(ACContentTypeEnum *)contentType
                             withNSString:(NSString *)text
                                  withInt:(jint)relatedUser
                              withBoolean:(jboolean)isSilent;

+ (ACContentDescription *)fromBytesWithByteArray:(IOSByteArray *)data;

+ (ACContentDescription *)fromContentWithACAbsContent:(ACAbsContent *)msg;

- (ACContentTypeEnum *)getContentType;

- (jint)getRelatedUser;

- (NSString *)getText;

- (jboolean)isSilent;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACContentDescription)

FOUNDATION_EXPORT ACContentDescription *ACContentDescription_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT ACContentDescription *ACContentDescription_fromContentWithACAbsContent_(ACAbsContent *msg);

FOUNDATION_EXPORT void ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(ACContentDescription *self, ACContentTypeEnum *contentType, NSString *text, jint relatedUser, jboolean isSilent);

FOUNDATION_EXPORT ACContentDescription *new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(ACContentTypeEnum *contentType, NSString *text, jint relatedUser, jboolean isSilent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACContentDescription_initWithACContentTypeEnum_withNSString_(ACContentDescription *self, ACContentTypeEnum *contentType, NSString *text);

FOUNDATION_EXPORT ACContentDescription *new_ACContentDescription_initWithACContentTypeEnum_withNSString_(ACContentTypeEnum *contentType, NSString *text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACContentDescription_initWithACContentTypeEnum_(ACContentDescription *self, ACContentTypeEnum *contentType);

FOUNDATION_EXPORT ACContentDescription *new_ACContentDescription_initWithACContentTypeEnum_(ACContentTypeEnum *contentType) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACContentDescription)

@compatibility_alias ImActorCoreEntityContentDescription ACContentDescription;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentDescription_H_
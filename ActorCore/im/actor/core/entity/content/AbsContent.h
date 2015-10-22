//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/AbsContent.java
//

#ifndef _ImActorCoreEntityContentAbsContent_H_
#define _ImActorCoreEntityContentAbsContent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACAbsContentContainer;
@class ACContentLocalContainer;
@class ACContentRemoteContainer;
@class ARApiMessage;
@class IOSByteArray;
@protocol ACContentConverter;

@interface ACAbsContent : NSObject

#pragma mark Public

- (instancetype)initWithACContentLocalContainer:(ACContentLocalContainer *)contentContainer;

- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)contentContainer;

+ (ACAbsContent *)fromMessageWithARApiMessage:(ARApiMessage *)message;

- (ACAbsContentContainer *)getContentContainer;

+ (ACAbsContent *)parseWithByteArray:(IOSByteArray *)data;

+ (void)registerConverterWithACContentConverter:(id<ACContentConverter>)contentConverter;

+ (IOSByteArray *)serializeWithACAbsContent:(ACAbsContent *)content;

#pragma mark Protected

+ (ACAbsContent *)convertDataWithACAbsContentContainer:(ACAbsContentContainer *)container;

@end

J2OBJC_STATIC_INIT(ACAbsContent)

FOUNDATION_EXPORT void ACAbsContent_registerConverterWithACContentConverter_(id<ACContentConverter> contentConverter);

FOUNDATION_EXPORT IOSByteArray *ACAbsContent_serializeWithACAbsContent_(ACAbsContent *content);

FOUNDATION_EXPORT ACAbsContent *ACAbsContent_fromMessageWithARApiMessage_(ARApiMessage *message);

FOUNDATION_EXPORT ACAbsContent *ACAbsContent_parseWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT ACAbsContent *ACAbsContent_convertDataWithACAbsContentContainer_(ACAbsContentContainer *container);

FOUNDATION_EXPORT void ACAbsContent_initWithACContentRemoteContainer_(ACAbsContent *self, ACContentRemoteContainer *contentContainer);

FOUNDATION_EXPORT void ACAbsContent_initWithACContentLocalContainer_(ACAbsContent *self, ACContentLocalContainer *contentContainer);

J2OBJC_TYPE_LITERAL_HEADER(ACAbsContent)

@compatibility_alias ImActorCoreEntityContentAbsContent ACAbsContent;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentAbsContent_H_

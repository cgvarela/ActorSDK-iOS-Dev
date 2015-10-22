//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/TextContent.java
//

#ifndef _ImActorCoreEntityContentTextContent_H_
#define _ImActorCoreEntityContentTextContent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/entity/content/AbsContent.h>

@class ACContentRemoteContainer;
@class ARApiTextMessageEx;
@class JavaUtilArrayList;

@interface ACTextContent : ACAbsContent
@property (readonly, copy, nonatomic, getter=getText) NSString *text;
@property (readonly, nonatomic, getter=getTextMessageEx) ARApiTextMessageEx *textMessageEx;

#pragma mark Public

- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)remoteContainer;

+ (ACTextContent *)createWithNSString:(NSString *)text
                         withNSString:(NSString *)markDownText
                withJavaUtilArrayList:(JavaUtilArrayList *)mentions;

- (JavaUtilArrayList *)getMentions;

- (NSString *)getText;

- (ARApiTextMessageEx *)getTextMessageEx;

@end

J2OBJC_EMPTY_STATIC_INIT(ACTextContent)

FOUNDATION_EXPORT ACTextContent *ACTextContent_createWithNSString_withNSString_withJavaUtilArrayList_(NSString *text, NSString *markDownText, JavaUtilArrayList *mentions);

FOUNDATION_EXPORT void ACTextContent_initWithACContentRemoteContainer_(ACTextContent *self, ACContentRemoteContainer *remoteContainer);

FOUNDATION_EXPORT ACTextContent *new_ACTextContent_initWithACContentRemoteContainer_(ACContentRemoteContainer *remoteContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACTextContent)

@compatibility_alias ImActorCoreEntityContentTextContent ACTextContent;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentTextContent_H_

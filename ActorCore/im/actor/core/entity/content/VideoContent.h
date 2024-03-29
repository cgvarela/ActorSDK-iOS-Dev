//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/content/VideoContent.java
//

#ifndef _ImActorCoreEntityContentVideoContent_H_
#define _ImActorCoreEntityContentVideoContent_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/entity/content/DocumentContent.h"

@class ACContentLocalContainer;
@class ACContentRemoteContainer;
@class ACFastThumb;
@class ACFileReference;

@interface ACVideoContent : ACDocumentContent

#pragma mark Public

- (instancetype)initWithACContentLocalContainer:(ACContentLocalContainer *)contentContainer;

- (instancetype)initWithACContentRemoteContainer:(ACContentRemoteContainer *)contentContainer;

+ (ACVideoContent *)createLocalVideoWithNSString:(NSString *)descriptor
                                    withNSString:(NSString *)fileName
                                         withInt:(jint)fileSize
                                         withInt:(jint)w
                                         withInt:(jint)h
                                         withInt:(jint)duration
                                 withACFastThumb:(ACFastThumb *)fastThumb;

+ (ACVideoContent *)createRemoteVideoWithACFileReference:(ACFileReference *)reference
                                                 withInt:(jint)w
                                                 withInt:(jint)h
                                                 withInt:(jint)duration
                                         withACFastThumb:(ACFastThumb *)fastThumb;

- (jint)getDuration;

- (jint)getH;

- (jint)getW;

@end

J2OBJC_EMPTY_STATIC_INIT(ACVideoContent)

FOUNDATION_EXPORT ACVideoContent *ACVideoContent_createLocalVideoWithNSString_withNSString_withInt_withInt_withInt_withInt_withACFastThumb_(NSString *descriptor, NSString *fileName, jint fileSize, jint w, jint h, jint duration, ACFastThumb *fastThumb);

FOUNDATION_EXPORT ACVideoContent *ACVideoContent_createRemoteVideoWithACFileReference_withInt_withInt_withInt_withACFastThumb_(ACFileReference *reference, jint w, jint h, jint duration, ACFastThumb *fastThumb);

FOUNDATION_EXPORT void ACVideoContent_initWithACContentRemoteContainer_(ACVideoContent *self, ACContentRemoteContainer *contentContainer);

FOUNDATION_EXPORT ACVideoContent *new_ACVideoContent_initWithACContentRemoteContainer_(ACContentRemoteContainer *contentContainer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACVideoContent_initWithACContentLocalContainer_(ACVideoContent *self, ACContentLocalContainer *contentContainer);

FOUNDATION_EXPORT ACVideoContent *new_ACVideoContent_initWithACContentLocalContainer_(ACContentLocalContainer *contentContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACVideoContent)

@compatibility_alias ImActorCoreEntityContentVideoContent ACVideoContent;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityContentVideoContent_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/TypingProcessor.java
//

#ifndef _ImActorCoreModulesUpdatesTypingProcessor_H_
#define _ImActorCoreModulesUpdatesTypingProcessor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/modules/AbsModule.h>

@class ARApiPeer;
@class ARApiTypingTypeEnum;
@protocol ACModuleContext;

@interface ACTypingProcessor : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)modules;

- (void)onMessageWithARApiPeer:(ARApiPeer *)peer
                       withInt:(jint)uid;

- (void)onTypingWithARApiPeer:(ARApiPeer *)peer
                      withInt:(jint)uid
      withARApiTypingTypeEnum:(ARApiTypingTypeEnum *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(ACTypingProcessor)

FOUNDATION_EXPORT void ACTypingProcessor_initWithACModuleContext_(ACTypingProcessor *self, id<ACModuleContext> modules);

FOUNDATION_EXPORT ACTypingProcessor *new_ACTypingProcessor_initWithACModuleContext_(id<ACModuleContext> modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACTypingProcessor)

@compatibility_alias ImActorCoreModulesUpdatesTypingProcessor ACTypingProcessor;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesTypingProcessor_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/updates/internal/MessagesHistoryLoaded.java
//

#ifndef _ImActorCoreModulesUpdatesInternalMessagesHistoryLoaded_H_
#define _ImActorCoreModulesUpdatesInternalMessagesHistoryLoaded_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/updates/internal/InternalUpdate.h"

@class ACPeer;
@class ARResponseLoadHistory;

@interface ACMessagesHistoryLoaded : ACInternalUpdate

#pragma mark Public

- (instancetype)initWithACPeer:(ACPeer *)peer
     withARResponseLoadHistory:(ARResponseLoadHistory *)loadHistory;

- (ARResponseLoadHistory *)getLoadHistory;

- (ACPeer *)getPeer;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMessagesHistoryLoaded)

FOUNDATION_EXPORT void ACMessagesHistoryLoaded_initWithACPeer_withARResponseLoadHistory_(ACMessagesHistoryLoaded *self, ACPeer *peer, ARResponseLoadHistory *loadHistory);

FOUNDATION_EXPORT ACMessagesHistoryLoaded *new_ACMessagesHistoryLoaded_initWithACPeer_withARResponseLoadHistory_(ACPeer *peer, ARResponseLoadHistory *loadHistory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMessagesHistoryLoaded)

@compatibility_alias ImActorCoreModulesUpdatesInternalMessagesHistoryLoaded ACMessagesHistoryLoaded;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesUpdatesInternalMessagesHistoryLoaded_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/MailboxesQueue.java
//

#ifndef _ImActorRuntimeActorsMailboxMailboxesQueue_H_
#define _ImActorRuntimeActorsMailboxMailboxesQueue_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/actors/dispatch/AbstractDispatchQueue.h"

@class AREnvelopeRoot;
@class ARMailbox;
@class ImActorRuntimeActorsDispatchDispatchResult;

/*!
 @brief Queue of multiple mailboxes for MailboxesDispatcher
 */
@interface ARMailboxesQueue : ImActorRuntimeActorsDispatchAbstractDispatchQueue

#pragma mark Public

- (instancetype)init;

- (void)disconnectMailboxWithARMailbox:(ARMailbox *)mailbox;

- (ImActorRuntimeActorsDispatchDispatchResult *)dispatchWithLong:(jlong)time;

- (AREnvelopeRoot *)getEnvelopeRoot;

- (void)notifyQueueChanged;

- (void)unlockMailboxWithARMailbox:(ARMailbox *)mailbox;

@end

J2OBJC_EMPTY_STATIC_INIT(ARMailboxesQueue)

FOUNDATION_EXPORT void ARMailboxesQueue_init(ARMailboxesQueue *self);

FOUNDATION_EXPORT ARMailboxesQueue *new_ARMailboxesQueue_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARMailboxesQueue)

@compatibility_alias ImActorRuntimeActorsMailboxMailboxesQueue ARMailboxesQueue;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeActorsMailboxMailboxesQueue_H_

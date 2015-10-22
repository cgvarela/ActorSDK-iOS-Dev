//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/MailboxesQueue.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/actors/dispatch/AbstractDispatchQueue.h"
#include "im/actor/runtime/actors/dispatch/DispatchResult.h"
#include "im/actor/runtime/actors/mailbox/Envelope.h"
#include "im/actor/runtime/actors/mailbox/Mailbox.h"
#include "im/actor/runtime/actors/mailbox/MailboxesQueue.h"
#include "im/actor/runtime/actors/mailbox/collections/EnvelopeCollection.h"
#include "im/actor/runtime/actors/mailbox/collections/EnvelopeRoot.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMailboxesQueue () {
 @public
  AREnvelopeRoot *envelopeRoot_;
}

@end

J2OBJC_FIELD_SETTER(ARMailboxesQueue, envelopeRoot_, AREnvelopeRoot *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/mailbox/MailboxesQueue.java"


#line 14
@implementation ARMailboxesQueue

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 18
- (instancetype)init {
  ARMailboxesQueue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 22
- (AREnvelopeRoot *)getEnvelopeRoot {
  return envelopeRoot_;
}

- (void)unlockMailboxWithARMailbox:(ARMailbox *)mailbox {
  [((AREnvelopeRoot *) nil_chk(envelopeRoot_)) attachCollectionWithAREnvelopeCollection:[((ARMailbox *) nil_chk(mailbox)) getEnvelopes]];
}

- (void)disconnectMailboxWithARMailbox:(ARMailbox *)mailbox {
  [((AREnvelopeRoot *) nil_chk(envelopeRoot_)) detachCollectionWithAREnvelopeCollection:[((ARMailbox *) nil_chk(mailbox)) getEnvelopes]];
}

- (void)notifyQueueChanged {
  [super notifyQueueChanged];
}


#line 39
- (ImActorRuntimeActorsDispatchDispatchResult *)dispatchWithLong:(jlong)time {
  AREnvelopeRoot_FetchResult *res = [((AREnvelopeRoot *) nil_chk(envelopeRoot_)) fetchCollectionWithLong:time];
  if (res == nil) {
    return [self delayWithLong:ImActorRuntimeActorsDispatchAbstractDispatchQueue_FOREVER];
  }
  
#line 45
  if ([((AREnvelopeRoot_FetchResult *) nil_chk(res)) getEnvelope] != nil) {
    ImActorRuntimeActorsDispatchDispatchResult *result = [self resultWithId:[res getEnvelope]];
    [res recycle];
    return result;
  }
  else {
    
#line 50
    ImActorRuntimeActorsDispatchDispatchResult *result = [self delayWithLong:[res getDelay]];
    [res recycle];
    return result;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MailboxesQueue", NULL, 0x1, NULL, NULL },
    { "getEnvelopeRoot", NULL, "Lim.actor.runtime.actors.mailbox.collections.EnvelopeRoot;", 0x1, NULL, NULL },
    { "unlockMailboxWithARMailbox:", "unlockMailbox", "V", 0x1, NULL, NULL },
    { "disconnectMailboxWithARMailbox:", "disconnectMailbox", "V", 0x1, NULL, NULL },
    { "notifyQueueChanged", NULL, "V", 0x1, NULL, NULL },
    { "dispatchWithLong:", "dispatch", "Lim.actor.runtime.actors.dispatch.DispatchResult;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "envelopeRoot_", NULL, 0x2, "Lim.actor.runtime.actors.mailbox.collections.EnvelopeRoot;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.runtime.actors.mailbox.Envelope;"};
  static const J2ObjcClassInfo _ARMailboxesQueue = { 2, "MailboxesQueue", "im.actor.runtime.actors.mailbox", NULL, 0x1, 6, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/runtime/actors/dispatch/AbstractDispatchQueue<Lim/actor/runtime/actors/mailbox/Envelope;>;" };
  return &_ARMailboxesQueue;
}

@end


#line 18
void ARMailboxesQueue_init(ARMailboxesQueue *self) {
  (void) ImActorRuntimeActorsDispatchAbstractDispatchQueue_init(self);
  
#line 19
  self->envelopeRoot_ = new_AREnvelopeRoot_initWithARMailboxesQueue_(self);
}


#line 18
ARMailboxesQueue *new_ARMailboxesQueue_init() {
  ARMailboxesQueue *self = [ARMailboxesQueue alloc];
  ARMailboxesQueue_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARMailboxesQueue)

#pragma clang diagnostic pop

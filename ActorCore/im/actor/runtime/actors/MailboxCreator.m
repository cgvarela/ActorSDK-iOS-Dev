//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/MailboxCreator.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/actors/MailboxCreator.h"
#include "im/actor/runtime/actors/mailbox/Mailbox.h"
#include "im/actor/runtime/actors/mailbox/MailboxesQueue.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARMailboxCreator : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/MailboxCreator.java"


#line 13
@implementation ARMailboxCreator

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createMailboxWithARMailboxesQueue:", "createMailbox", "Lim.actor.runtime.actors.mailbox.Mailbox;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARMailboxCreator = { 2, "MailboxCreator", "im.actor.runtime.actors", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARMailboxCreator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARMailboxCreator)

#pragma clang diagnostic pop

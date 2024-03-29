//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/ActorTrace.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/util/ActorTrace.h"
#include "im/actor/runtime/Log.h"
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/ActorTime.h"
#include "im/actor/runtime/actors/mailbox/Envelope.h"
#include <j2objc/java/lang/Exception.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ACActorTrace_PROCESS_THRESHOLD 100

static NSString *ACActorTrace_TAG_ = @"ACTOR_SYSTEM";
J2OBJC_STATIC_FIELD_GETTER(ACActorTrace, TAG_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ACActorTrace, PROCESS_THRESHOLD, jint)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/util/ActorTrace.java"


#line 17
@implementation ACActorTrace


#line 24
- (void)onEnvelopeDeliveredWithAREnvelope:(AREnvelope *)envelope {
}


#line 29
- (void)onEnvelopeProcessedWithAREnvelope:(AREnvelope *)envelope
                                 withLong:(jlong)duration {
  jlong sendDuration = ARActorTime_currentTime() - [((AREnvelope *) nil_chk(envelope)) getSendTime] - duration;
}


#line 38
- (void)onDropWithARActorRef:(ARActorRef *)sender
                      withId:(id)message
                 withARActor:(ARActor *)actor {
  ARLog_wWithNSString_withNSString_(ACActorTrace_TAG_, JreStrcat("$@", @"Drop: ", message));
}


#line 43
- (void)onDeadLetterWithARActorRef:(ARActorRef *)receiver
                            withId:(id)message {
  ARLog_wWithNSString_withNSString_(ACActorTrace_TAG_, JreStrcat("$@", @"Dead Letter: ", message));
}

- (void)onActorDieWithARActorRef:(ARActorRef *)ref
                  withAREnvelope:(AREnvelope *)envelope
           withJavaLangException:(JavaLangException *)e {
  ARLog_wWithNSString_withNSString_(ACActorTrace_TAG_, JreStrcat("$$$@", @"Die(", [((ARActorRef *) nil_chk(ref)) getPath], @") by ", [((AREnvelope *) nil_chk(envelope)) getMessage]));
  ARLog_eWithNSString_withJavaLangThrowable_(ACActorTrace_TAG_, e);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACActorTrace_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onEnvelopeDeliveredWithAREnvelope:", "onEnvelopeDelivered", "V", 0x1, NULL, NULL },
    { "onEnvelopeProcessedWithAREnvelope:withLong:", "onEnvelopeProcessed", "V", 0x1, NULL, NULL },
    { "onDropWithARActorRef:withId:withARActor:", "onDrop", "V", 0x1, NULL, NULL },
    { "onDeadLetterWithARActorRef:withId:", "onDeadLetter", "V", 0x1, NULL, NULL },
    { "onActorDieWithARActorRef:withAREnvelope:withJavaLangException:", "onActorDie", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_", NULL, 0x1a, "Ljava.lang.String;", &ACActorTrace_TAG_, NULL, .constantValue.asLong = 0 },
    { "PROCESS_THRESHOLD", "PROCESS_THRESHOLD", 0x1a, "I", NULL, NULL, .constantValue.asInt = ACActorTrace_PROCESS_THRESHOLD },
  };
  static const J2ObjcClassInfo _ACActorTrace = { 2, "ActorTrace", "im.actor.core.util", NULL, 0x1, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACActorTrace;
}

@end

void ACActorTrace_init(ACActorTrace *self) {
  (void) NSObject_init(self);
}

ACActorTrace *new_ACActorTrace_init() {
  ACActorTrace *self = [ACActorTrace alloc];
  ACActorTrace_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACActorTrace)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/TraceInterface.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/runtime/actors/Actor.h"
#include "im/actor/runtime/actors/ActorRef.h"
#include "im/actor/runtime/actors/TraceInterface.h"
#include "im/actor/runtime/actors/mailbox/Envelope.h"
#include <j2objc/java/lang/Exception.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARTraceInterface : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/actors/TraceInterface.java"


#line 9
@implementation ARTraceInterface

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onEnvelopeDeliveredWithAREnvelope:", "onEnvelopeDelivered", "V", 0x401, NULL, NULL },
    { "onEnvelopeProcessedWithAREnvelope:withLong:", "onEnvelopeProcessed", "V", 0x401, NULL, NULL },
    { "onDropWithARActorRef:withId:withARActor:", "onDrop", "V", 0x401, NULL, NULL },
    { "onDeadLetterWithARActorRef:withId:", "onDeadLetter", "V", 0x401, NULL, NULL },
    { "onActorDieWithARActorRef:withAREnvelope:withJavaLangException:", "onActorDie", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ARTraceInterface = { 2, "TraceInterface", "im.actor.runtime.actors", NULL, 0x609, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARTraceInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ARTraceInterface)

#pragma clang diagnostic pop

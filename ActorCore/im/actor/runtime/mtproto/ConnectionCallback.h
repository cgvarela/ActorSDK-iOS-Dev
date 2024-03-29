//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ConnectionCallback.java
//

#ifndef _ImActorRuntimeMtprotoConnectionCallback_H_
#define _ImActorRuntimeMtprotoConnectionCallback_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class IOSByteArray;

@protocol ARConnectionCallback < NSObject, JavaObject >

- (void)onConnectionRedirectWithHost:(NSString *)host
                            withPort:(jint)port
                         withTimeout:(jint)timeout;

- (void)onMessageWithData:(IOSByteArray *)data
               withOffset:(jint)offset
               withLength:(jint)len;

- (void)onConnectionDie;

@end

J2OBJC_EMPTY_STATIC_INIT(ARConnectionCallback)

J2OBJC_TYPE_LITERAL_HEADER(ARConnectionCallback)

#define ImActorRuntimeMtprotoConnectionCallback ARConnectionCallback


#pragma clang diagnostic pop
#endif // _ImActorRuntimeMtprotoConnectionCallback_H_

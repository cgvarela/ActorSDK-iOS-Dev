//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/mtp/actors/ManagerActor.java
//

#ifndef _ImActorCoreNetworkMtpActorsManagerActor_H_
#define _ImActorCoreNetworkMtpActorsManagerActor_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/runtime/actors/Actor.h"

@class ACMTProto;
@class ACNetworkStateEnum;
@class ARActorRef;
@class IOSByteArray;

/*!
 @brief Possible problems
 * Creating connections after actor kill
 */
@interface ACManagerActor : ARActor

#pragma mark Public

- (instancetype)initWithACMTProto:(ACMTProto *)mtProto;

+ (ARActorRef *)managerWithACMTProto:(ACMTProto *)mtProto;

- (void)onReceiveWithId:(id)message;

- (void)postStop;

- (void)preStart;

@end

J2OBJC_STATIC_INIT(ACManagerActor)

FOUNDATION_EXPORT ARActorRef *ACManagerActor_managerWithACMTProto_(ACMTProto *mtProto);

FOUNDATION_EXPORT void ACManagerActor_initWithACMTProto_(ACManagerActor *self, ACMTProto *mtProto);

FOUNDATION_EXPORT ACManagerActor *new_ACManagerActor_initWithACMTProto_(ACMTProto *mtProto) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACManagerActor)

@compatibility_alias ImActorCoreNetworkMtpActorsManagerActor ACManagerActor;

@interface ACManagerActor_OutMessage : NSObject

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)message
                          withInt:(jint)offset
                          withInt:(jint)len;

- (jint)getLen;

- (IOSByteArray *)getMessage;

- (jint)getOffset;

@end

J2OBJC_EMPTY_STATIC_INIT(ACManagerActor_OutMessage)

FOUNDATION_EXPORT void ACManagerActor_OutMessage_initWithByteArray_withInt_withInt_(ACManagerActor_OutMessage *self, IOSByteArray *message, jint offset, jint len);

FOUNDATION_EXPORT ACManagerActor_OutMessage *new_ACManagerActor_OutMessage_initWithByteArray_withInt_withInt_(IOSByteArray *message, jint offset, jint len) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACManagerActor_OutMessage)

@interface ACManagerActor_InMessage : NSObject

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data
                          withInt:(jint)offset
                          withInt:(jint)len;

- (IOSByteArray *)getData;

- (jint)getLen;

- (jint)getOffset;

@end

J2OBJC_EMPTY_STATIC_INIT(ACManagerActor_InMessage)

FOUNDATION_EXPORT void ACManagerActor_InMessage_initWithByteArray_withInt_withInt_(ACManagerActor_InMessage *self, IOSByteArray *data, jint offset, jint len);

FOUNDATION_EXPORT ACManagerActor_InMessage *new_ACManagerActor_InMessage_initWithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint len) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACManagerActor_InMessage)

@interface ACManagerActor_NetworkChanged : NSObject

#pragma mark Public

- (instancetype)initWithACNetworkStateEnum:(ACNetworkStateEnum *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(ACManagerActor_NetworkChanged)

FOUNDATION_EXPORT void ACManagerActor_NetworkChanged_initWithACNetworkStateEnum_(ACManagerActor_NetworkChanged *self, ACNetworkStateEnum *state);

FOUNDATION_EXPORT ACManagerActor_NetworkChanged *new_ACManagerActor_NetworkChanged_initWithACNetworkStateEnum_(ACNetworkStateEnum *state) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACManagerActor_NetworkChanged)

@interface ACManagerActor_ForceNetworkCheck : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACManagerActor_ForceNetworkCheck)

FOUNDATION_EXPORT void ACManagerActor_ForceNetworkCheck_init(ACManagerActor_ForceNetworkCheck *self);

FOUNDATION_EXPORT ACManagerActor_ForceNetworkCheck *new_ACManagerActor_ForceNetworkCheck_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACManagerActor_ForceNetworkCheck)


#pragma clang diagnostic pop
#endif // _ImActorCoreNetworkMtpActorsManagerActor_H_

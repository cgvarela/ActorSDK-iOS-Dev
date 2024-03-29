//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/rpc/RequestTyping.java
//

#ifndef _ImActorCoreApiRpcRequestTyping_H_
#define _ImActorCoreApiRpcRequestTyping_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Request.h"

@class ARApiOutPeer;
@class ARApiTypingTypeEnum;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARRequestTyping_HEADER 27

@interface ARRequestTyping : ACRequest

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithARApiOutPeer:(ARApiOutPeer *)peer
             withARApiTypingTypeEnum:(ARApiTypingTypeEnum *)typingType;

+ (ARRequestTyping *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (ARApiOutPeer *)getPeer;

- (ARApiTypingTypeEnum *)getTypingType;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRequestTyping)

J2OBJC_STATIC_FIELD_GETTER(ARRequestTyping, HEADER, jint)

FOUNDATION_EXPORT ARRequestTyping *ARRequestTyping_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(ARRequestTyping *self, ARApiOutPeer *peer, ARApiTypingTypeEnum *typingType);

FOUNDATION_EXPORT ARRequestTyping *new_ARRequestTyping_initWithARApiOutPeer_withARApiTypingTypeEnum_(ARApiOutPeer *peer, ARApiTypingTypeEnum *typingType) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARRequestTyping_init(ARRequestTyping *self);

FOUNDATION_EXPORT ARRequestTyping *new_ARRequestTyping_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRequestTyping)

@compatibility_alias ImActorCoreApiRpcRequestTyping ARRequestTyping;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiRpcRequestTyping_H_

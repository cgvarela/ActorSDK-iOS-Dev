//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/parser/RpcParser.java
//

#ifndef _ImActorCoreApiParserRpcParser_H_
#define _ImActorCoreApiParserRpcParser_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/BaseParser.h>

@class ACRpcScope;
@class IOSByteArray;

@interface ARRpcParser : ACBaseParser

#pragma mark Public

- (instancetype)init;

- (ACRpcScope *)readWithInt:(jint)type
              withByteArray:(IOSByteArray *)payload;

@end

J2OBJC_EMPTY_STATIC_INIT(ARRpcParser)

FOUNDATION_EXPORT void ARRpcParser_init(ARRpcParser *self);

FOUNDATION_EXPORT ARRpcParser *new_ARRpcParser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARRpcParser)

@compatibility_alias ImActorCoreApiParserRpcParser ARRpcParser;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiParserRpcParser_H_
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/parser/UpdatesParser.java
//

#ifndef _ImActorCoreApiParserUpdatesParser_H_
#define _ImActorCoreApiParserUpdatesParser_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/BaseParser.h"

@class ACUpdate;
@class IOSByteArray;

@interface ARUpdatesParser : ACBaseParser

#pragma mark Public

- (instancetype)init;

- (ACUpdate *)readWithInt:(jint)type
            withByteArray:(IOSByteArray *)payload;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdatesParser)

FOUNDATION_EXPORT void ARUpdatesParser_init(ARUpdatesParser *self);

FOUNDATION_EXPORT ARUpdatesParser *new_ARUpdatesParser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdatesParser)

@compatibility_alias ImActorCoreApiParserUpdatesParser ARUpdatesParser;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiParserUpdatesParser_H_

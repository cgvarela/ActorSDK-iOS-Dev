//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/parser/ParsingExtension.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/network/parser/BaseParser.h"
#include "im/actor/core/network/parser/ParsingExtension.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACParsingExtension () {
 @public
  ACBaseParser *rpcScopeParser_;
  ACBaseParser *updateScopeParser_;
}

@end

J2OBJC_FIELD_SETTER(ACParsingExtension, rpcScopeParser_, ACBaseParser *)
J2OBJC_FIELD_SETTER(ACParsingExtension, updateScopeParser_, ACBaseParser *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/parser/ParsingExtension.java"


#line 3
@implementation ACParsingExtension


#line 9
- (instancetype)initWithACBaseParser:(ACBaseParser *)rpcScopeParser
                    withACBaseParser:(ACBaseParser *)updateScopeParser {
  ACParsingExtension_initWithACBaseParser_withACBaseParser_(self, rpcScopeParser, updateScopeParser);
  return self;
}


#line 14
- (ACBaseParser *)getRpcScopeParser {
  return rpcScopeParser_;
}

- (ACBaseParser *)getUpdateScopeParser {
  return updateScopeParser_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACBaseParser:withACBaseParser:", "ParsingExtension", NULL, 0x1, NULL, NULL },
    { "getRpcScopeParser", NULL, "Lim.actor.core.network.parser.BaseParser;", 0x1, NULL, NULL },
    { "getUpdateScopeParser", NULL, "Lim.actor.core.network.parser.BaseParser;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "rpcScopeParser_", NULL, 0x2, "Lim.actor.core.network.parser.BaseParser;", NULL, "Lim/actor/core/network/parser/BaseParser<Lim/actor/core/network/parser/RpcScope;>;", .constantValue.asLong = 0 },
    { "updateScopeParser_", NULL, 0x2, "Lim.actor.core.network.parser.BaseParser;", NULL, "Lim/actor/core/network/parser/BaseParser<Lim/actor/core/network/parser/Update;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACParsingExtension = { 2, "ParsingExtension", "im.actor.core.network.parser", NULL, 0x1, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACParsingExtension;
}

@end


#line 9
void ACParsingExtension_initWithACBaseParser_withACBaseParser_(ACParsingExtension *self, ACBaseParser *rpcScopeParser, ACBaseParser *updateScopeParser) {
  (void) NSObject_init(self);
  
#line 10
  self->rpcScopeParser_ = rpcScopeParser;
  self->updateScopeParser_ = updateScopeParser;
}


#line 9
ACParsingExtension *new_ACParsingExtension_initWithACBaseParser_withACBaseParser_(ACBaseParser *rpcScopeParser, ACBaseParser *updateScopeParser) {
  ACParsingExtension *self = [ACParsingExtension alloc];
  ACParsingExtension_initWithACBaseParser_withACBaseParser_(self, rpcScopeParser, updateScopeParser);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACParsingExtension)

#pragma clang diagnostic pop

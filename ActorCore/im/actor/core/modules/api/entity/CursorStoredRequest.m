//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/entity/CursorStoredRequest.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/modules/api/entity/CursorStoredRequest.h"
#include "im/actor/core/modules/api/entity/StoredRequest.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ImActorCoreModulesApiEntityCursorStoredRequest () {
 @public
  NSString *name_;
  jlong currentKey_;
  ImActorCoreModulesApiEntityStoredRequest *request_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ImActorCoreModulesApiEntityCursorStoredRequest, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorCoreModulesApiEntityCursorStoredRequest, request_, ImActorCoreModulesApiEntityStoredRequest *)

__attribute__((unused)) static void ImActorCoreModulesApiEntityCursorStoredRequest_init(ImActorCoreModulesApiEntityCursorStoredRequest *self);

__attribute__((unused)) static ImActorCoreModulesApiEntityCursorStoredRequest *new_ImActorCoreModulesApiEntityCursorStoredRequest_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/api/entity/CursorStoredRequest.java"


#line 10
@implementation ImActorCoreModulesApiEntityCursorStoredRequest

+ (ImActorCoreModulesApiEntityCursorStoredRequest *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorCoreModulesApiEntityCursorStoredRequest_fromBytesWithByteArray_(data);
}


#line 20
- (instancetype)initWithNSString:(NSString *)name
                        withLong:(jlong)currentKey
withImActorCoreModulesApiEntityStoredRequest:(ImActorCoreModulesApiEntityStoredRequest *)request {
  ImActorCoreModulesApiEntityCursorStoredRequest_initWithNSString_withLong_withImActorCoreModulesApiEntityStoredRequest_(self, name, currentKey, request);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 26
- (instancetype)init {
  ImActorCoreModulesApiEntityCursorStoredRequest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 30
- (NSString *)getName {
  return name_;
}

- (jlong)getCurrentKey {
  return currentKey_;
}

- (ImActorCoreModulesApiEntityStoredRequest *)getRequest {
  return request_;
}


#line 43
- (void)parseWithARBserValues:(ARBserValues *)values {
  name_ = [((ARBserValues *) nil_chk(values)) getStringWithInt:1];
  currentKey_ = [values getLongWithInt:2];
  
#line 47
  IOSByteArray *rawBytes = [values getBytesWithInt:3];
  if (rawBytes != nil) {
    request_ = ImActorCoreModulesApiEntityStoredRequest_fromBytesWithByteArray_(rawBytes);
  }
}

- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:name_];
  [writer writeLongWithInt:2 withLong:currentKey_];
  
#line 58
  if (request_ != nil) {
    [writer writeObjectWithInt:3 withARBserObject:request_];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.modules.api.entity.CursorStoredRequest;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithNSString:withLong:withImActorCoreModulesApiEntityStoredRequest:", "CursorStoredRequest", NULL, 0x1, NULL, NULL },
    { "init", "CursorStoredRequest", NULL, 0x2, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getCurrentKey", NULL, "J", 0x1, NULL, NULL },
    { "getRequest", NULL, "Lim.actor.core.modules.api.entity.StoredRequest;", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "currentKey_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "request_", NULL, 0x2, "Lim.actor.core.modules.api.entity.StoredRequest;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ImActorCoreModulesApiEntityCursorStoredRequest = { 2, "CursorStoredRequest", "im.actor.core.modules.api.entity", NULL, 0x1, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ImActorCoreModulesApiEntityCursorStoredRequest;
}

@end


#line 12
ImActorCoreModulesApiEntityCursorStoredRequest *ImActorCoreModulesApiEntityCursorStoredRequest_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorCoreModulesApiEntityCursorStoredRequest_initialize();
  
#line 13
  return ARBser_parseWithARBserObject_withByteArray_(new_ImActorCoreModulesApiEntityCursorStoredRequest_init(), data);
}


#line 20
void ImActorCoreModulesApiEntityCursorStoredRequest_initWithNSString_withLong_withImActorCoreModulesApiEntityStoredRequest_(ImActorCoreModulesApiEntityCursorStoredRequest *self, NSString *name, jlong currentKey, ImActorCoreModulesApiEntityStoredRequest *request) {
  (void) ARBserObject_init(self);
  
#line 21
  self->name_ = name;
  self->currentKey_ = currentKey;
  self->request_ = request;
}


#line 20
ImActorCoreModulesApiEntityCursorStoredRequest *new_ImActorCoreModulesApiEntityCursorStoredRequest_initWithNSString_withLong_withImActorCoreModulesApiEntityStoredRequest_(NSString *name, jlong currentKey, ImActorCoreModulesApiEntityStoredRequest *request) {
  ImActorCoreModulesApiEntityCursorStoredRequest *self = [ImActorCoreModulesApiEntityCursorStoredRequest alloc];
  ImActorCoreModulesApiEntityCursorStoredRequest_initWithNSString_withLong_withImActorCoreModulesApiEntityStoredRequest_(self, name, currentKey, request);
  return self;
}

void ImActorCoreModulesApiEntityCursorStoredRequest_init(ImActorCoreModulesApiEntityCursorStoredRequest *self) {
  (void) ARBserObject_init(self);
}


#line 26
ImActorCoreModulesApiEntityCursorStoredRequest *new_ImActorCoreModulesApiEntityCursorStoredRequest_init() {
  ImActorCoreModulesApiEntityCursorStoredRequest *self = [ImActorCoreModulesApiEntityCursorStoredRequest alloc];
  ImActorCoreModulesApiEntityCursorStoredRequest_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorCoreModulesApiEntityCursorStoredRequest)

#pragma clang diagnostic pop

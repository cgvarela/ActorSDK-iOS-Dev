//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ConnectionEndpoint.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/mtproto/ConnectionEndpoint.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARConnectionEndpoint () {
 @public
  NSString *host_;
  jint port_;
  ARConnectionEndpoint_TypeEnum *type_;
}

@end

J2OBJC_FIELD_SETTER(ARConnectionEndpoint, host_, NSString *)
J2OBJC_FIELD_SETTER(ARConnectionEndpoint, type_, ARConnectionEndpoint_TypeEnum *)

__attribute__((unused)) static void ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(ARConnectionEndpoint_TypeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ARConnectionEndpoint_TypeEnum *new_ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ConnectionEndpoint.java"


#line 9
@implementation ARConnectionEndpoint


#line 15
- (instancetype)initWithHost:(NSString *)host
                    withPort:(jint)port
                    withType:(ARConnectionEndpoint_TypeEnum *)type {
  ARConnectionEndpoint_initWithHost_withPort_withType_(self, host, port, type);
  return self;
}


#line 21
- (ARConnectionEndpoint_TypeEnum *)getType {
  return type_;
}

- (NSString *)getHost {
  return host_;
}

- (jint)getPort {
  return port_;
}

+ (IOSObjectArray *)__annotations_initWithNSString_withInt_withARConnectionEndpoint_TypeEnum_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"initWithHost:withPort:withType:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithHost:withPort:withType:", "ConnectionEndpoint", NULL, 0x1, NULL, NULL },
    { "getType", NULL, "Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;", 0x1, NULL, NULL },
    { "getHost", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getPort", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "host_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "port_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "type_", NULL, 0x2, "Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;"};
  static const J2ObjcClassInfo _ARConnectionEndpoint = { 2, "ConnectionEndpoint", "im.actor.runtime.mtproto", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ARConnectionEndpoint;
}

@end


#line 15
void ARConnectionEndpoint_initWithHost_withPort_withType_(ARConnectionEndpoint *self, NSString *host, jint port, ARConnectionEndpoint_TypeEnum *type) {
  (void) NSObject_init(self);
  
#line 16
  self->host_ = host;
  self->port_ = port;
  self->type_ = type;
}


#line 15
ARConnectionEndpoint *new_ARConnectionEndpoint_initWithHost_withPort_withType_(NSString *host, jint port, ARConnectionEndpoint_TypeEnum *type) {
  ARConnectionEndpoint *self = [ARConnectionEndpoint alloc];
  ARConnectionEndpoint_initWithHost_withPort_withType_(self, host, port, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARConnectionEndpoint)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/mtproto/ConnectionEndpoint.java"

J2OBJC_INITIALIZED_DEFN(ARConnectionEndpoint_TypeEnum)

ARConnectionEndpoint_TypeEnum *ARConnectionEndpoint_TypeEnum_values_[4];


#line 33
@implementation ARConnectionEndpoint_TypeEnum

+ (ARConnectionEndpoint_TypeEnum *)TCP {
  return ARConnectionEndpoint_TypeEnum_TCP;
}

+ (ARConnectionEndpoint_TypeEnum *)TCP_TLS {
  return ARConnectionEndpoint_TypeEnum_TCP_TLS;
}

+ (ARConnectionEndpoint_TypeEnum *)WS {
  return ARConnectionEndpoint_TypeEnum_WS;
}

+ (ARConnectionEndpoint_TypeEnum *)WS_TLS {
  return ARConnectionEndpoint_TypeEnum_WS_TLS;
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ARConnectionEndpoint_TypeEnum_values() {
  ARConnectionEndpoint_TypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ARConnectionEndpoint_TypeEnum_values_ count:4 type:ARConnectionEndpoint_TypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ARConnectionEndpoint_TypeEnum_values();
}

+ (ARConnectionEndpoint_TypeEnum *)valueOfWithNSString:(NSString *)name {
  return ARConnectionEndpoint_TypeEnum_valueOfWithNSString_(name);
}

ARConnectionEndpoint_TypeEnum *ARConnectionEndpoint_TypeEnum_valueOfWithNSString_(NSString *name) {
  ARConnectionEndpoint_TypeEnum_initialize();
  for (int i = 0; i < 4; i++) {
    ARConnectionEndpoint_TypeEnum *e = ARConnectionEndpoint_TypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ARConnectionEndpoint_TypeEnum class]) {
    ARConnectionEndpoint_TypeEnum_TCP = new_ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(@"TCP", 0);
    ARConnectionEndpoint_TypeEnum_TCP_TLS = new_ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(@"TCP_TLS", 1);
    ARConnectionEndpoint_TypeEnum_WS = new_ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(@"WS", 2);
    ARConnectionEndpoint_TypeEnum_WS_TLS = new_ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(@"WS_TLS", 3);
    J2OBJC_SET_INITIALIZED(ARConnectionEndpoint_TypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "TCP", "TCP", 0x4019, "Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;", &ARConnectionEndpoint_TypeEnum_TCP, NULL, .constantValue.asLong = 0 },
    { "TCP_TLS", "TCP_TLS", 0x4019, "Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;", &ARConnectionEndpoint_TypeEnum_TCP_TLS, NULL, .constantValue.asLong = 0 },
    { "WS", "WS", 0x4019, "Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;", &ARConnectionEndpoint_TypeEnum_WS, NULL, .constantValue.asLong = 0 },
    { "WS_TLS", "WS_TLS", 0x4019, "Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;", &ARConnectionEndpoint_TypeEnum_WS_TLS, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.runtime.mtproto.ConnectionEndpoint$Type;"};
  static const J2ObjcClassInfo _ARConnectionEndpoint_TypeEnum = { 2, "Type", "im.actor.runtime.mtproto", "ConnectionEndpoint", 0x4019, 0, NULL, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/runtime/mtproto/ConnectionEndpoint$Type;>;" };
  return &_ARConnectionEndpoint_TypeEnum;
}

@end

void ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(ARConnectionEndpoint_TypeEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ARConnectionEndpoint_TypeEnum *new_ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ARConnectionEndpoint_TypeEnum *self = [ARConnectionEndpoint_TypeEnum alloc];
  ARConnectionEndpoint_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARConnectionEndpoint_TypeEnum)

#pragma clang diagnostic pop
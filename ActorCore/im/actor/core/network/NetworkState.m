//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/NetworkState.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/core/network/NetworkState.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

__attribute__((unused)) static void ACNetworkStateEnum_initWithNSString_withInt_(ACNetworkStateEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ACNetworkStateEnum *new_ACNetworkStateEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/network/NetworkState.java"

J2OBJC_INITIALIZED_DEFN(ACNetworkStateEnum)

ACNetworkStateEnum *ACNetworkStateEnum_values_[4];


#line 10
@implementation ACNetworkStateEnum

+ (ACNetworkStateEnum *)UNKNOWN {
  return ACNetworkStateEnum_UNKNOWN;
}

+ (ACNetworkStateEnum *)MOBILE {
  return ACNetworkStateEnum_MOBILE;
}

+ (ACNetworkStateEnum *)WI_FI {
  return ACNetworkStateEnum_WI_FI;
}

+ (ACNetworkStateEnum *)NO_CONNECTION {
  return ACNetworkStateEnum_NO_CONNECTION;
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  ACNetworkStateEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ACNetworkStateEnum_values() {
  ACNetworkStateEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ACNetworkStateEnum_values_ count:4 type:ACNetworkStateEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ACNetworkStateEnum_values();
}

+ (ACNetworkStateEnum *)valueOfWithNSString:(NSString *)name {
  return ACNetworkStateEnum_valueOfWithNSString_(name);
}

ACNetworkStateEnum *ACNetworkStateEnum_valueOfWithNSString_(NSString *name) {
  ACNetworkStateEnum_initialize();
  for (int i = 0; i < 4; i++) {
    ACNetworkStateEnum *e = ACNetworkStateEnum_values_[i];
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
  if (self == [ACNetworkStateEnum class]) {
    ACNetworkStateEnum_UNKNOWN = new_ACNetworkStateEnum_initWithNSString_withInt_(@"UNKNOWN", 0);
    ACNetworkStateEnum_MOBILE = new_ACNetworkStateEnum_initWithNSString_withInt_(@"MOBILE", 1);
    ACNetworkStateEnum_WI_FI = new_ACNetworkStateEnum_initWithNSString_withInt_(@"WI_FI", 2);
    ACNetworkStateEnum_NO_CONNECTION = new_ACNetworkStateEnum_initWithNSString_withInt_(@"NO_CONNECTION", 3);
    J2OBJC_SET_INITIALIZED(ACNetworkStateEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "UNKNOWN", "UNKNOWN", 0x4019, "Lim.actor.core.network.NetworkState;", &ACNetworkStateEnum_UNKNOWN, NULL, .constantValue.asLong = 0 },
    { "MOBILE", "MOBILE", 0x4019, "Lim.actor.core.network.NetworkState;", &ACNetworkStateEnum_MOBILE, NULL, .constantValue.asLong = 0 },
    { "WI_FI", "WI_FI", 0x4019, "Lim.actor.core.network.NetworkState;", &ACNetworkStateEnum_WI_FI, NULL, .constantValue.asLong = 0 },
    { "NO_CONNECTION", "NO_CONNECTION", 0x4019, "Lim.actor.core.network.NetworkState;", &ACNetworkStateEnum_NO_CONNECTION, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.network.NetworkState;"};
  static const J2ObjcClassInfo _ACNetworkStateEnum = { 2, "NetworkState", "im.actor.core.network", NULL, 0x4011, 0, NULL, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lim/actor/core/network/NetworkState;>;" };
  return &_ACNetworkStateEnum;
}

@end

void ACNetworkStateEnum_initWithNSString_withInt_(ACNetworkStateEnum *self, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ACNetworkStateEnum *new_ACNetworkStateEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ACNetworkStateEnum *self = [ACNetworkStateEnum alloc];
  ACNetworkStateEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACNetworkStateEnum)

#pragma clang diagnostic pop
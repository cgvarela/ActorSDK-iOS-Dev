//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaAssetsProxyProvider.java
//

#include "J2ObjC_source.h"
#include "im/actor/runtime/AssetsRuntime.h"
#include "im/actor/runtime/cocoa/CocoaAssetsProxyProvider.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static id<ARAssetsRuntime> ARCocoaAssetsProxyProvider_assetsRuntime_;
J2OBJC_STATIC_FIELD_GETTER(ARCocoaAssetsProxyProvider, assetsRuntime_, id<ARAssetsRuntime>)
J2OBJC_STATIC_FIELD_SETTER(ARCocoaAssetsProxyProvider, assetsRuntime_, id<ARAssetsRuntime>)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-cocoa/src/main/java//im/actor/runtime/cocoa/CocoaAssetsProxyProvider.java"


#line 5
@implementation ARCocoaAssetsProxyProvider


#line 9
+ (void)setAssetsRuntimeWithARAssetsRuntime:(id<ARAssetsRuntime>)assetsRuntime {
  ARCocoaAssetsProxyProvider_setAssetsRuntimeWithARAssetsRuntime_(assetsRuntime);
}


#line 14
- (jboolean)hasAssetWithNSString:(NSString *)name {
  return [((id<ARAssetsRuntime>) nil_chk(ARCocoaAssetsProxyProvider_assetsRuntime_)) hasAssetWithNSString:name];
}


#line 19
- (NSString *)loadAssetWithNSString:(NSString *)name {
  return [((id<ARAssetsRuntime>) nil_chk(ARCocoaAssetsProxyProvider_assetsRuntime_)) loadAssetWithNSString:name];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARCocoaAssetsProxyProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setAssetsRuntimeWithARAssetsRuntime:", "setAssetsRuntime", "V", 0x9, NULL, NULL },
    { "hasAssetWithNSString:", "hasAsset", "Z", 0x1, NULL, NULL },
    { "loadAssetWithNSString:", "loadAsset", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "assetsRuntime_", NULL, 0xa, "Lim.actor.runtime.AssetsRuntime;", &ARCocoaAssetsProxyProvider_assetsRuntime_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARCocoaAssetsProxyProvider = { 2, "CocoaAssetsProxyProvider", "im.actor.runtime.cocoa", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARCocoaAssetsProxyProvider;
}

@end


#line 9
void ARCocoaAssetsProxyProvider_setAssetsRuntimeWithARAssetsRuntime_(id<ARAssetsRuntime> assetsRuntime) {
  ARCocoaAssetsProxyProvider_initialize();
  
#line 10
  ARCocoaAssetsProxyProvider_assetsRuntime_ = assetsRuntime;
}

void ARCocoaAssetsProxyProvider_init(ARCocoaAssetsProxyProvider *self) {
  (void) NSObject_init(self);
}

ARCocoaAssetsProxyProvider *new_ARCocoaAssetsProxyProvider_init() {
  ARCocoaAssetsProxyProvider *self = [ARCocoaAssetsProxyProvider alloc];
  ARCocoaAssetsProxyProvider_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARCocoaAssetsProxyProvider)

#pragma clang diagnostic pop

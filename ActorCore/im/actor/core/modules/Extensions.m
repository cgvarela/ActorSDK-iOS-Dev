//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/Extensions.java
//

#include "J2ObjC_source.h"
#include "im/actor/core/Extension.h"
#include "im/actor/core/modules/AbsModule.h"
#include "im/actor/core/modules/Extensions.h"
#include "im/actor/core/modules/ModuleContext.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACExtensions () {
 @public
  JavaUtilArrayList *extensionRefs_;
}

@end

J2OBJC_FIELD_SETTER(ACExtensions, extensionRefs_, JavaUtilArrayList *)

@interface ACExtensions_ExtensionRef : NSObject {
 @public
  NSString *key_;
  id<ACExtension> extension_;
}

- (instancetype)initWithACExtensions:(ACExtensions *)outer$
                        withNSString:(NSString *)key
                     withACExtension:(id<ACExtension>)extension;

- (NSString *)getKey;

- (id<ACExtension>)getExtension;

@end

J2OBJC_EMPTY_STATIC_INIT(ACExtensions_ExtensionRef)

J2OBJC_FIELD_SETTER(ACExtensions_ExtensionRef, key_, NSString *)
J2OBJC_FIELD_SETTER(ACExtensions_ExtensionRef, extension_, id<ACExtension>)

__attribute__((unused)) static void ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(ACExtensions_ExtensionRef *self, ACExtensions *outer$, NSString *key, id<ACExtension> extension);

__attribute__((unused)) static ACExtensions_ExtensionRef *new_ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(ACExtensions *outer$, NSString *key, id<ACExtension> extension) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACExtensions_ExtensionRef)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/Extensions.java"


#line 7
@implementation ACExtensions


#line 11
- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context {
  ACExtensions_initWithACModuleContext_(self, context);
  return self;
}


#line 15
- (void)registerExtensionWithNSString:(NSString *)key
                      withACExtension:(id<ACExtension>)extension {
  [((JavaUtilArrayList *) nil_chk(extensionRefs_)) addWithId:new_ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(self, key, extension)];
}


#line 19
- (id<ACExtension>)findExtensionWithNSString:(NSString *)key {
  for (ACExtensions_ExtensionRef * __strong r in nil_chk(extensionRefs_)) {
    if ([((NSString *) nil_chk([((ACExtensions_ExtensionRef *) nil_chk(r)) getKey])) isEqual:key]) {
      return [r getExtension];
    }
  }
  return nil;
}

- (void)registerExtensions {
  for (ACExtensions_ExtensionRef * __strong r in nil_chk(extensionRefs_)) {
    [((id<ACExtension>) nil_chk([((ACExtensions_ExtensionRef *) nil_chk(r)) getExtension])) registerExtensionWithACModuleContext:[self context]];
  }
}

- (void)runExtensions {
  for (ACExtensions_ExtensionRef * __strong r in nil_chk(extensionRefs_)) {
    [((id<ACExtension>) nil_chk([((ACExtensions_ExtensionRef *) nil_chk(r)) getExtension])) runExtension];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACModuleContext:", "Extensions", NULL, 0x1, NULL, NULL },
    { "registerExtensionWithNSString:withACExtension:", "registerExtension", "V", 0x1, NULL, NULL },
    { "findExtensionWithNSString:", "findExtension", "Lim.actor.core.Extension;", 0x1, NULL, NULL },
    { "registerExtensions", NULL, "V", 0x1, NULL, NULL },
    { "runExtensions", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "extensionRefs_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/core/modules/Extensions$ExtensionRef;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lim.actor.core.modules.Extensions$ExtensionRef;"};
  static const J2ObjcClassInfo _ACExtensions = { 2, "Extensions", "im.actor.core.modules", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ACExtensions;
}

@end


#line 11
void ACExtensions_initWithACModuleContext_(ACExtensions *self, id<ACModuleContext> context) {
  (void) ACAbsModule_initWithACModuleContext_(self, context);
  self->extensionRefs_ = new_JavaUtilArrayList_init();
}


#line 11
ACExtensions *new_ACExtensions_initWithACModuleContext_(id<ACModuleContext> context) {
  ACExtensions *self = [ACExtensions alloc];
  ACExtensions_initWithACModuleContext_(self, context);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACExtensions)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/Extensions.java"


#line 40
@implementation ACExtensions_ExtensionRef


#line 44
- (instancetype)initWithACExtensions:(ACExtensions *)outer$
                        withNSString:(NSString *)key
                     withACExtension:(id<ACExtension>)extension {
  ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(self, outer$, key, extension);
  return self;
}


#line 49
- (NSString *)getKey {
  return key_;
}

- (id<ACExtension>)getExtension {
  return extension_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithACExtensions:withNSString:withACExtension:", "ExtensionRef", NULL, 0x1, NULL, NULL },
    { "getKey", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getExtension", NULL, "Lim.actor.core.Extension;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "key_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "extension_", NULL, 0x2, "Lim.actor.core.Extension;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACExtensions_ExtensionRef = { 2, "ExtensionRef", "im.actor.core.modules", "Extensions", 0x2, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACExtensions_ExtensionRef;
}

@end


#line 44
void ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(ACExtensions_ExtensionRef *self, ACExtensions *outer$, NSString *key, id<ACExtension> extension) {
  (void) NSObject_init(self);
  
#line 45
  self->key_ = key;
  self->extension_ = extension;
}


#line 44
ACExtensions_ExtensionRef *new_ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(ACExtensions *outer$, NSString *key, id<ACExtension> extension) {
  ACExtensions_ExtensionRef *self = [ACExtensions_ExtensionRef alloc];
  ACExtensions_ExtensionRef_initWithACExtensions_withNSString_withACExtension_(self, outer$, key, extension);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACExtensions_ExtensionRef)

#pragma clang diagnostic pop

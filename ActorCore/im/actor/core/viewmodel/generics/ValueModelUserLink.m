//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelUserLink.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/viewmodel/generics/ArrayListUserLink.h"
#include "im/actor/core/viewmodel/generics/ValueModelUserLink.h"
#include "im/actor/runtime/mvvm/ValueChangedListener.h"
#include "im/actor/runtime/mvvm/ValueModel.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelUserLink.java"


#line 10
@implementation ACValueModelUserLink


#line 17
- (instancetype)initWithNSString:(NSString *)name
         withACArrayListUserLink:(ACArrayListUserLink *)defaultValue {
  ACValueModelUserLink_initWithNSString_withACArrayListUserLink_(self, name, defaultValue);
  return self;
}


#line 22
- (ACArrayListUserLink *)get {
  return [super get];
}


#line 27
- (void)subscribeWithListener:(id<ARValueChangedListener>)listener {
  [super subscribeWithListener:listener];
}


#line 32
- (void)subscribeWithListener:(id<ARValueChangedListener>)listener
                       notify:(jboolean)notify {
  [super subscribeWithListener:listener notify:notify];
}

- (void)unsubscribeWithListener:(id<ARValueChangedListener>)listener {
  [super unsubscribeWithListener:listener];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withACArrayListUserLink:", "ValueModelUserLink", NULL, 0x1, NULL, NULL },
    { "get", NULL, "Lim.actor.core.viewmodel.generics.ArrayListUserLink;", 0x1, NULL, NULL },
    { "subscribeWithListener:", "subscribe", "V", 0x1, NULL, NULL },
    { "subscribeWithListener:notify:", "subscribe", "V", 0x1, NULL, NULL },
    { "unsubscribeWithListener:", "unsubscribe", "V", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.viewmodel.generics.ArrayListUserLink;"};
  static const J2ObjcClassInfo _ACValueModelUserLink = { 2, "ValueModelUserLink", "im.actor.core.viewmodel.generics", NULL, 0x1, 5, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/runtime/mvvm/ValueModel<Lim/actor/core/viewmodel/generics/ArrayListUserLink;>;" };
  return &_ACValueModelUserLink;
}

@end


#line 17
void ACValueModelUserLink_initWithNSString_withACArrayListUserLink_(ACValueModelUserLink *self, NSString *name, ACArrayListUserLink *defaultValue) {
  (void) ARValueModel_initWithNSString_withId_(self, name, defaultValue);
}


#line 17
ACValueModelUserLink *new_ACValueModelUserLink_initWithNSString_withACArrayListUserLink_(NSString *name, ACArrayListUserLink *defaultValue) {
  ACValueModelUserLink *self = [ACValueModelUserLink alloc];
  ACValueModelUserLink_initWithNSString_withACArrayListUserLink_(self, name, defaultValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACValueModelUserLink)

#pragma clang diagnostic pop

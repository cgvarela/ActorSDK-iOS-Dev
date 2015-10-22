//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelContactRecord.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/viewmodel/generics/ArrayListContactRecord.h"
#include "im/actor/core/viewmodel/generics/ValueModelContactRecord.h"
#include "im/actor/runtime/mvvm/ValueChangedListener.h"
#include "im/actor/runtime/mvvm/ValueModel.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelContactRecord.java"


#line 9
@implementation ACValueModelContactRecord


#line 16
- (instancetype)initWithNSString:(NSString *)name
    withACArrayListContactRecord:(ACArrayListContactRecord *)defaultValue {
  ACValueModelContactRecord_initWithNSString_withACArrayListContactRecord_(self, name, defaultValue);
  return self;
}


#line 21
- (ACArrayListContactRecord *)get {
  return [super get];
}


#line 26
- (void)subscribeWithListener:(id<ARValueChangedListener>)listener {
  [super subscribeWithListener:listener];
}


#line 31
- (void)subscribeWithListener:(id<ARValueChangedListener>)listener
                       notify:(jboolean)notify {
  [super subscribeWithListener:listener notify:notify];
}

- (void)unsubscribeWithListener:(id<ARValueChangedListener>)listener {
  [super unsubscribeWithListener:listener];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withACArrayListContactRecord:", "ValueModelContactRecord", NULL, 0x1, NULL, NULL },
    { "get", NULL, "Lim.actor.core.viewmodel.generics.ArrayListContactRecord;", 0x1, NULL, NULL },
    { "subscribeWithListener:", "subscribe", "V", 0x1, NULL, NULL },
    { "subscribeWithListener:notify:", "subscribe", "V", 0x1, NULL, NULL },
    { "unsubscribeWithListener:", "unsubscribe", "V", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.viewmodel.generics.ArrayListContactRecord;"};
  static const J2ObjcClassInfo _ACValueModelContactRecord = { 2, "ValueModelContactRecord", "im.actor.core.viewmodel.generics", NULL, 0x1, 5, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/runtime/mvvm/ValueModel<Lim/actor/core/viewmodel/generics/ArrayListContactRecord;>;" };
  return &_ACValueModelContactRecord;
}

@end


#line 16
void ACValueModelContactRecord_initWithNSString_withACArrayListContactRecord_(ACValueModelContactRecord *self, NSString *name, ACArrayListContactRecord *defaultValue) {
  (void) ARValueModel_initWithNSString_withId_(self, name, defaultValue);
}


#line 16
ACValueModelContactRecord *new_ACValueModelContactRecord_initWithNSString_withACArrayListContactRecord_(NSString *name, ACArrayListContactRecord *defaultValue) {
  ACValueModelContactRecord *self = [ACValueModelContactRecord alloc];
  ACValueModelContactRecord_initWithNSString_withACArrayListContactRecord_(self, name, defaultValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACValueModelContactRecord)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelUserPresence.java
//

#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/viewmodel/UserPresence.h"
#include "im/actor/core/viewmodel/generics/ValueModelUserPresence.h"
#include "im/actor/runtime/mvvm/ValueModel.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/generics/ValueModelUserPresence.java"


#line 10
@implementation ACValueModelUserPresence


#line 17
- (instancetype)initWithNSString:(NSString *)name
              withACUserPresence:(ACUserPresence *)defaultValue {
  ACValueModelUserPresence_initWithNSString_withACUserPresence_(self, name, defaultValue);
  return self;
}


#line 22
- (ACUserPresence *)get {
  return [super get];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withACUserPresence:", "ValueModelUserPresence", NULL, 0x1, NULL, NULL },
    { "get", NULL, "Lim.actor.core.viewmodel.UserPresence;", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.viewmodel.UserPresence;"};
  static const J2ObjcClassInfo _ACValueModelUserPresence = { 2, "ValueModelUserPresence", "im.actor.core.viewmodel.generics", NULL, 0x1, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/runtime/mvvm/ValueModel<Lim/actor/core/viewmodel/UserPresence;>;" };
  return &_ACValueModelUserPresence;
}

@end


#line 17
void ACValueModelUserPresence_initWithNSString_withACUserPresence_(ACValueModelUserPresence *self, NSString *name, ACUserPresence *defaultValue) {
  (void) ARValueModel_initWithNSString_withId_(self, name, defaultValue);
}


#line 17
ACValueModelUserPresence *new_ACValueModelUserPresence_initWithNSString_withACUserPresence_(NSString *name, ACUserPresence *defaultValue) {
  ACValueModelUserPresence *self = [ACValueModelUserPresence alloc];
  ACValueModelUserPresence_initWithNSString_withACUserPresence_(self, name, defaultValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACValueModelUserPresence)

#pragma clang diagnostic pop

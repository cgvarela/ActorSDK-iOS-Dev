//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/Command.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/core/viewmodel/Command.h"
#include "im/actor/core/viewmodel/CommandCallback.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACCommand : NSObject

@end

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/viewmodel/Command.java"


#line 9
@implementation ACCommand

+ (IOSObjectArray *)__annotations_startWithACCommandCallback_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"startWithCallback:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startWithCallback:", "start", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACCommand = { 2, "Command", "im.actor.core.viewmodel", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_ACCommand;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ACCommand)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/AppleListUpdate.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/j2objc/annotations/ObjectiveCName.h"
#include "im/actor/runtime/generic/mvvm/AppleListUpdate.h"
#include "im/actor/runtime/generic/mvvm/alg/Move.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARAppleListUpdate () {
 @public
  JavaUtilArrayList *removed_;
  JavaUtilArrayList *added_;
  JavaUtilArrayList *moved_;
  JavaUtilArrayList *updated_;
  jboolean isLoadMore_;
}

@end

J2OBJC_FIELD_SETTER(ARAppleListUpdate, removed_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ARAppleListUpdate, added_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ARAppleListUpdate, moved_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ARAppleListUpdate, updated_, JavaUtilArrayList *)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/mvvm/AppleListUpdate.java"


#line 14
@implementation ARAppleListUpdate

@synthesize removed = removed_;
@synthesize added = added_;
@synthesize moved = moved_;
@synthesize updated = updated_;
@synthesize isLoadMore = isLoadMore_;


#line 28
- (instancetype)initWithRemoved:(JavaUtilArrayList *)removed
                      withAdded:(JavaUtilArrayList *)added
                      withMoved:(JavaUtilArrayList *)moved
                    withUpdated:(JavaUtilArrayList *)updated
                   withLoadMore:(jboolean)isLoadMore {
  ARAppleListUpdate_initWithRemoved_withAdded_withMoved_withUpdated_withLoadMore_(self, removed, added, moved, updated, isLoadMore);
  return self;
}


#line 40
- (jint)removedCount {
  return [((JavaUtilArrayList *) nil_chk(removed_)) size];
}


#line 45
- (jint)getRemoved:(jint)index {
  return [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(removed_)) getWithInt:index])) intValue];
}


#line 50
- (jint)addedCount {
  return [((JavaUtilArrayList *) nil_chk(added_)) size];
}


#line 55
- (jint)getAdded:(jint)index {
  return [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(added_)) getWithInt:index])) intValue];
}


#line 60
- (jint)movedCount {
  return [((JavaUtilArrayList *) nil_chk(moved_)) size];
}


#line 65
- (ARMove *)getMoved:(jint)index {
  return [((JavaUtilArrayList *) nil_chk(moved_)) getWithInt:index];
}


#line 70
- (jint)updatedCount {
  return [((JavaUtilArrayList *) nil_chk(updated_)) size];
}


#line 75
- (jint)getUpdated:(jint)index {
  return [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(updated_)) getWithInt:index])) intValue];
}


#line 80
- (jint)size {
  return [((JavaUtilArrayList *) nil_chk(removed_)) size] + [((JavaUtilArrayList *) nil_chk(added_)) size] + [((JavaUtilArrayList *) nil_chk(moved_)) size] + [((JavaUtilArrayList *) nil_chk(updated_)) size];
}


#line 85
- (jint)nonUpdateCount {
  return [((JavaUtilArrayList *) nil_chk(removed_)) size] + [((JavaUtilArrayList *) nil_chk(added_)) size] + [((JavaUtilArrayList *) nil_chk(moved_)) size];
}


#line 90
- (jboolean)isLoadMore {
  return isLoadMore_;
}

+ (IOSObjectArray *)__annotations_initWithJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withJavaUtilArrayList_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"initWithRemoved:withAdded:withMoved:withUpdated:withLoadMore:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_removedCount {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"removedCount"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getRemovedWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getRemoved:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_addedCount {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"addedCount"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getAddedWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getAdded:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_movedCount {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"movedCount"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getMovedWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getMoved:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_updatedCount {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"updatedCount"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_getUpdatedWithInt_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"getUpdated:"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_size {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"size"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_nonUpdateCount {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"nonUpdateCount"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_isLoadMore {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[ComGoogleJ2objcAnnotationsObjectiveCName alloc] initWithValue:@"isLoadMore"] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRemoved:withAdded:withMoved:withUpdated:withLoadMore:", "AppleListUpdate", NULL, 0x1, NULL, NULL },
    { "removedCount", NULL, "I", 0x1, NULL, NULL },
    { "getRemoved:", "getRemoved", "I", 0x1, NULL, NULL },
    { "addedCount", NULL, "I", 0x1, NULL, NULL },
    { "getAdded:", "getAdded", "I", 0x1, NULL, NULL },
    { "movedCount", NULL, "I", 0x1, NULL, NULL },
    { "getMoved:", "getMoved", "Lim.actor.runtime.generic.mvvm.alg.Move;", 0x1, NULL, NULL },
    { "updatedCount", NULL, "I", 0x1, NULL, NULL },
    { "getUpdated:", "getUpdated", "I", 0x1, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "nonUpdateCount", NULL, "I", 0x1, NULL, NULL },
    { "isLoadMore", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "removed_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "added_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "moved_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lim/actor/runtime/generic/mvvm/alg/Move;>;", .constantValue.asLong = 0 },
    { "updated_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "isLoadMore_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARAppleListUpdate = { 2, "AppleListUpdate", "im.actor.runtime.generic.mvvm", NULL, 0x1, 12, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARAppleListUpdate;
}

@end


#line 28
void ARAppleListUpdate_initWithRemoved_withAdded_withMoved_withUpdated_withLoadMore_(ARAppleListUpdate *self, JavaUtilArrayList *removed, JavaUtilArrayList *added, JavaUtilArrayList *moved, JavaUtilArrayList *updated, jboolean isLoadMore) {
  (void) NSObject_init(self);
  
#line 32
  self->removed_ = removed;
  self->added_ = added;
  self->moved_ = moved;
  self->updated_ = updated;
  self->isLoadMore_ = isLoadMore;
}


#line 28
ARAppleListUpdate *new_ARAppleListUpdate_initWithRemoved_withAdded_withMoved_withUpdated_withLoadMore_(JavaUtilArrayList *removed, JavaUtilArrayList *added, JavaUtilArrayList *moved, JavaUtilArrayList *updated, jboolean isLoadMore) {
  ARAppleListUpdate *self = [ARAppleListUpdate alloc];
  ARAppleListUpdate_initWithRemoved_withAdded_withMoved_withUpdated_withLoadMore_(self, removed, added, moved, updated, isLoadMore);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARAppleListUpdate)

#pragma clang diagnostic pop
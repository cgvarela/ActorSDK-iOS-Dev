//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherThreads.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/runtime/actors/ActorTime.h"
#include "im/actor/runtime/actors/ThreadPriority.h"
#include "im/actor/runtime/actors/dispatch/AbstractDispatchQueue.h"
#include "im/actor/runtime/actors/dispatch/AbstractDispatcher.h"
#include "im/actor/runtime/actors/dispatch/Dispatch.h"
#include "im/actor/runtime/actors/dispatch/DispatchResult.h"
#include "im/actor/runtime/generic/threading/GenericDispatcherThreads.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ARGenericDispatcherThreads () {
 @public
  IOSObjectArray *threads_;
  jint count_;
  ARThreadPriorityEnum *priority_;
  jboolean isClosed_;
  jint id__;
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(ARGenericDispatcherThreads, threads_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ARGenericDispatcherThreads, priority_, ARThreadPriorityEnum *)
J2OBJC_FIELD_SETTER(ARGenericDispatcherThreads, name_, NSString *)

static JavaUtilConcurrentAtomicAtomicInteger *ARGenericDispatcherThreads_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(ARGenericDispatcherThreads, INDEX_, JavaUtilConcurrentAtomicAtomicInteger *)

/*!
 @brief Thread class for dispatching
 */
@interface ARGenericDispatcherThreads_DispatcherThread : JavaLangThread {
 @public
  ARGenericDispatcherThreads *this$0_;
  jboolean isChanged_;
}

- (jboolean)isChanged;

- (void)setChangedWithBoolean:(jboolean)isChanged;

- (void)run;

- (instancetype)initWithARGenericDispatcherThreads:(ARGenericDispatcherThreads *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ARGenericDispatcherThreads_DispatcherThread)

J2OBJC_FIELD_SETTER(ARGenericDispatcherThreads_DispatcherThread, this$0_, ARGenericDispatcherThreads *)

__attribute__((unused)) static void ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(ARGenericDispatcherThreads_DispatcherThread *self, ARGenericDispatcherThreads *outer$);

__attribute__((unused)) static ARGenericDispatcherThreads_DispatcherThread *new_ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(ARGenericDispatcherThreads *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARGenericDispatcherThreads_DispatcherThread)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherThreads.java"

J2OBJC_INITIALIZED_DEFN(ARGenericDispatcherThreads)


#line 21
@implementation ARGenericDispatcherThreads


#line 45
- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)count
        withARThreadPriorityEnum:(ARThreadPriorityEnum *)priority
withImActorRuntimeActorsDispatchAbstractDispatchQueue:(ImActorRuntimeActorsDispatchAbstractDispatchQueue *)queue
withImActorRuntimeActorsDispatchDispatch:(id<ImActorRuntimeActorsDispatchDispatch>)dispatch
                     withBoolean:(jboolean)createThreads {
  ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_(self, name, count, priority, queue, dispatch, createThreads);
  return self;
}


#line 58
- (void)startPool {
  if (self->threads_ != nil) {
    return;
  }
  self->threads_ = [IOSObjectArray newArrayWithLength:count_ type:JavaLangThread_class_()];
  for (jint i = 0; i < count_; i++) {
    (void) IOSObjectArray_Set(self->threads_, i, new_ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(self));
    [((JavaLangThread *) nil_chk(IOSObjectArray_Get(self->threads_, i))) setNameWithNSString:JreStrcat("$$CI", @"Pool_", name_, '_', i)];
    switch ([priority_ ordinal]) {
      case ARThreadPriority_HIGH:
      [((JavaLangThread *) nil_chk(IOSObjectArray_Get(self->threads_, i))) setPriorityWithInt:JavaLangThread_MAX_PRIORITY];
      break;
      case ARThreadPriority_LOW:
      [((JavaLangThread *) nil_chk(IOSObjectArray_Get(self->threads_, i))) setPriorityWithInt:JavaLangThread_MIN_PRIORITY];
      break;
      default:
      case ARThreadPriority_NORMAL:
      [((JavaLangThread *) nil_chk(IOSObjectArray_Get(self->threads_, i))) setPriorityWithInt:JavaLangThread_NORM_PRIORITY];
      break;
    }
    [((JavaLangThread *) nil_chk(IOSObjectArray_Get(self->threads_, i))) start];
  }
}


#line 85
- (void)close {
  isClosed_ = true;
  [self notifyDispatcher];
}


#line 94
- (void)notifyDispatcher {
  if (threads_ != nil) {
    @synchronized(threads_) {
      [threads_ notifyAll];
      {
        IOSObjectArray *a__ =
#line 98
        threads_;
        JavaLangThread * const *b__ = a__->buffer_;
        JavaLangThread * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          JavaLangThread *thread = *b__++;
          
#line 99
          [((ARGenericDispatcherThreads_DispatcherThread *) nil_chk(((ARGenericDispatcherThreads_DispatcherThread *) check_class_cast(thread, [ARGenericDispatcherThreads_DispatcherThread class])))) setChangedWithBoolean:true];
        }
      }
    }
  }
}

+ (void)initialize {
  if (self == [ARGenericDispatcherThreads class]) {
    ARGenericDispatcherThreads_INDEX_ = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(
#line 23
    1);
    J2OBJC_SET_INITIALIZED(ARGenericDispatcherThreads)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withARThreadPriorityEnum:withImActorRuntimeActorsDispatchAbstractDispatchQueue:withImActorRuntimeActorsDispatchDispatch:withBoolean:", "GenericDispatcherThreads", NULL, 0x1, NULL, "(Ljava/lang/String;ILim/actor/runtime/actors/ThreadPriority;TQ;Lim/actor/runtime/actors/dispatch/Dispatch<TT;>;Z)V" },
    { "startPool", NULL, "V", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "notifyDispatcher", NULL, "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INDEX_", NULL, 0x1a, "Ljava.util.concurrent.atomic.AtomicInteger;", &ARGenericDispatcherThreads_INDEX_, NULL, .constantValue.asLong = 0 },
    { "threads_", NULL, 0x2, "[Ljava.lang.Thread;", NULL, NULL, .constantValue.asLong = 0 },
    { "count_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "priority_", NULL, 0x12, "Lim.actor.runtime.actors.ThreadPriority;", NULL, NULL, .constantValue.asLong = 0 },
    { "isClosed_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "id__", "id", 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "name_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;", "TQ;"};
  static const char *inner_classes[] = {"Lim.actor.runtime.generic.threading.GenericDispatcherThreads$DispatcherThread;"};
  static const J2ObjcClassInfo _ARGenericDispatcherThreads = { 2, "GenericDispatcherThreads", "im.actor.runtime.generic.threading", NULL, 0x1, 4, methods, 7, fields, 2, superclass_type_args, 1, inner_classes, NULL, "<T:Ljava/lang/Object;Q:Lim/actor/runtime/actors/dispatch/AbstractDispatchQueue<TT;>;>Lim/actor/runtime/actors/dispatch/AbstractDispatcher<TT;TQ;>;" };
  return &_ARGenericDispatcherThreads;
}

@end


#line 45
void ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_(ARGenericDispatcherThreads *self, NSString *name, jint count, ARThreadPriorityEnum *priority, ImActorRuntimeActorsDispatchAbstractDispatchQueue *queue, id<ImActorRuntimeActorsDispatchDispatch> dispatch, jboolean createThreads) {
  (void) ImActorRuntimeActorsDispatchAbstractDispatcher_initWithImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_(self, queue, dispatch);
  self->isClosed_ =
#line 30
  false;
  
#line 48
  self->id__ = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ARGenericDispatcherThreads_INDEX_)) getAndIncrement];
  self->name_ = name;
  self->count_ = count;
  self->priority_ = priority;
  
#line 53
  if (createThreads) {
    [self startPool];
  }
}


#line 45
ARGenericDispatcherThreads *new_ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_(NSString *name, jint count, ARThreadPriorityEnum *priority, ImActorRuntimeActorsDispatchAbstractDispatchQueue *queue, id<ImActorRuntimeActorsDispatchDispatch> dispatch, jboolean createThreads) {
  ARGenericDispatcherThreads *self = [ARGenericDispatcherThreads alloc];
  ARGenericDispatcherThreads_initWithNSString_withInt_withARThreadPriorityEnum_withImActorRuntimeActorsDispatchAbstractDispatchQueue_withImActorRuntimeActorsDispatchDispatch_withBoolean_(self, name, count, priority, queue, dispatch, createThreads);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericDispatcherThreads)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-generic/src/main/java//im/actor/runtime/generic/threading/GenericDispatcherThreads.java"


#line 108
@implementation ARGenericDispatcherThreads_DispatcherThread


#line 112
- (jboolean)isChanged {
  return isChanged_;
}

- (void)setChangedWithBoolean:(jboolean)isChanged {
  self->isChanged_ = isChanged;
}


#line 121
- (void)run {
  while (!this$0_->isClosed_) {
    jlong time = ARActorTime_currentTime();
    
#line 125
    @synchronized(this$0_->threads_) {
      isChanged_ = false;
    }
    
#line 129
    ImActorRuntimeActorsDispatchDispatchResult *action = [((ImActorRuntimeActorsDispatchAbstractDispatchQueue *) nil_chk([this$0_ getQueue])) dispatchWithLong:time];
    
#line 131
    if (![((ImActorRuntimeActorsDispatchDispatchResult *) nil_chk(action)) isResult]) {
      if (isChanged_) {
        continue;
      }
      
#line 136
      @synchronized(this$0_->threads_) {
        jlong delay = [action getDelay];
        [action recycle];
        
#line 140
        @try {
          if (delay > 0) {
            [((IOSObjectArray *) nil_chk(this$0_->threads_)) waitWithLong:delay];
          }
          continue;
        }
        @catch (
#line 145
        JavaLangInterruptedException *e) {
          [((JavaLangInterruptedException *) nil_chk(e)) printStackTrace];
          return;
        }
      }
    }
    
#line 152
    @try {
      id actiondData = (id) [action getRes];
      [action recycle];
      [this$0_ dispatchMessageWithId:actiondData];
    }
    @catch (
#line 156
    JavaLangThrowable *t) {
      
#line 160
      [((JavaLangThrowable *) nil_chk(t)) printStackTrace];
    }
  }
}

- (instancetype)initWithARGenericDispatcherThreads:(ARGenericDispatcherThreads *)outer$ {
  ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "isChanged", NULL, "Z", 0x1, NULL, NULL },
    { "setChangedWithBoolean:", "setChanged", "V", 0x1, NULL, NULL },
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithARGenericDispatcherThreads:", "init", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lim.actor.runtime.generic.threading.GenericDispatcherThreads;", NULL, NULL, .constantValue.asLong = 0 },
    { "isChanged_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ARGenericDispatcherThreads_DispatcherThread = { 2, "DispatcherThread", "im.actor.runtime.generic.threading", "GenericDispatcherThreads", 0x2, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ARGenericDispatcherThreads_DispatcherThread;
}

@end

void ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(ARGenericDispatcherThreads_DispatcherThread *self, ARGenericDispatcherThreads *outer$) {
  self->this$0_ = outer$;
  (void) JavaLangThread_init(self);
  self->isChanged_ =
#line 110
  false;
}

ARGenericDispatcherThreads_DispatcherThread *new_ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(ARGenericDispatcherThreads *outer$) {
  ARGenericDispatcherThreads_DispatcherThread *self = [ARGenericDispatcherThreads_DispatcherThread alloc];
  ARGenericDispatcherThreads_DispatcherThread_initWithARGenericDispatcherThreads_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARGenericDispatcherThreads_DispatcherThread)

#pragma clang diagnostic pop

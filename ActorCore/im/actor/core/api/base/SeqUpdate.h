//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/base/SeqUpdate.java
//

#ifndef _ImActorCoreApiBaseSeqUpdate_H_
#define _ImActorCoreApiBaseSeqUpdate_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/RpcScope.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARSeqUpdate_HEADER 13

@interface ARSeqUpdate : ACRpcScope

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update;

+ (ARSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (IOSByteArray *)getUpdate;

- (jint)getUpdateHeader;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARSeqUpdate)

J2OBJC_STATIC_FIELD_GETTER(ARSeqUpdate, HEADER, jint)

FOUNDATION_EXPORT ARSeqUpdate *ARSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_(ARSeqUpdate *self, jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update);

FOUNDATION_EXPORT ARSeqUpdate *new_ARSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_(jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARSeqUpdate_init(ARSeqUpdate *self);

FOUNDATION_EXPORT ARSeqUpdate *new_ARSeqUpdate_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARSeqUpdate)

@compatibility_alias ImActorCoreApiBaseSeqUpdate ARSeqUpdate;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiBaseSeqUpdate_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateGroupTopicChanged.java
//

#ifndef _ImActorCoreApiUpdatesUpdateGroupTopicChanged_H_
#define _ImActorCoreApiUpdatesUpdateGroupTopicChanged_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/core/network/parser/Update.h>

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateGroupTopicChanged_HEADER 213

@interface ARUpdateGroupTopicChanged : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
               withNSString:(NSString *)topic
                   withLong:(jlong)date;

+ (ARUpdateGroupTopicChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (jlong)getRid;

- (NSString *)getTopic;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateGroupTopicChanged)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateGroupTopicChanged, HEADER, jint)

FOUNDATION_EXPORT ARUpdateGroupTopicChanged *ARUpdateGroupTopicChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateGroupTopicChanged_initWithInt_withLong_withInt_withNSString_withLong_(ARUpdateGroupTopicChanged *self, jint groupId, jlong rid, jint uid, NSString *topic, jlong date);

FOUNDATION_EXPORT ARUpdateGroupTopicChanged *new_ARUpdateGroupTopicChanged_initWithInt_withLong_withInt_withNSString_withLong_(jint groupId, jlong rid, jint uid, NSString *topic, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateGroupTopicChanged_init(ARUpdateGroupTopicChanged *self);

FOUNDATION_EXPORT ARUpdateGroupTopicChanged *new_ARUpdateGroupTopicChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateGroupTopicChanged)

@compatibility_alias ImActorCoreApiUpdatesUpdateGroupTopicChanged ARUpdateGroupTopicChanged;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateGroupTopicChanged_H_
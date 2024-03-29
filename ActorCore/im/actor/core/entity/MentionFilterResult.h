//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/MentionFilterResult.java
//

#ifndef _ImActorCoreEntityMentionFilterResult_H_
#define _ImActorCoreEntityMentionFilterResult_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACAvatar;
@protocol JavaUtilList;

@interface ACMentionFilterResult : NSObject
@property (readonly, nonatomic, getter=getUid) jint uid;
@property (readonly, nonatomic, getter=getAvatar) ACAvatar *avatar;
@property (readonly, copy, nonatomic, getter=getMentionString) NSString *mentionString;
@property (readonly, nonatomic, getter=getMentionMatches) id<JavaUtilList> mentionMatches;
@property (readonly, copy, nonatomic, getter=getOriginalString) NSString *originalString;
@property (readonly, nonatomic, getter=getOriginalMatches) id<JavaUtilList> originalMatches;
@property (readonly, nonatomic, getter=isNickname) jboolean isNickname;

#pragma mark Public

- (instancetype)initWithInt:(jint)uid
               withACAvatar:(ACAvatar *)avatar
               withNSString:(NSString *)mentionString
           withJavaUtilList:(id<JavaUtilList>)mentionMatches
               withNSString:(NSString *)originalString
           withJavaUtilList:(id<JavaUtilList>)originalMatches
                withBoolean:(jboolean)isNickname;

- (ACAvatar *)getAvatar;

- (id<JavaUtilList>)getMentionMatches;

- (NSString *)getMentionString;

- (id<JavaUtilList>)getOriginalMatches;

- (NSString *)getOriginalString;

- (jint)getUid;

- (jboolean)isNickname;

@end

J2OBJC_EMPTY_STATIC_INIT(ACMentionFilterResult)

FOUNDATION_EXPORT void ACMentionFilterResult_initWithInt_withACAvatar_withNSString_withJavaUtilList_withNSString_withJavaUtilList_withBoolean_(ACMentionFilterResult *self, jint uid, ACAvatar *avatar, NSString *mentionString, id<JavaUtilList> mentionMatches, NSString *originalString, id<JavaUtilList> originalMatches, jboolean isNickname);

FOUNDATION_EXPORT ACMentionFilterResult *new_ACMentionFilterResult_initWithInt_withACAvatar_withNSString_withJavaUtilList_withNSString_withJavaUtilList_withBoolean_(jint uid, ACAvatar *avatar, NSString *mentionString, id<JavaUtilList> mentionMatches, NSString *originalString, id<JavaUtilList> originalMatches, jboolean isNickname) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACMentionFilterResult)

@compatibility_alias ImActorCoreEntityMentionFilterResult ACMentionFilterResult;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityMentionFilterResult_H_

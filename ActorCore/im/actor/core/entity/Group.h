//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Group.java
//

#ifndef _ImActorCoreEntityGroup_H_
#define _ImActorCoreEntityGroup_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/entity/WrapperEntity.h"
#include "im/actor/runtime/storage/KeyValueItem.h"

@class ACAvatar;
@class ACPeer;
@class ARApiAvatar;
@class ARApiGroup;
@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;
@protocol ARBserCreator;
@protocol JavaUtilList;

@interface ACGroup : ACWrapperEntity < ARKeyValueItem >
@property (readonly, nonatomic, getter=getGroupId) jint groupId;
@property (readonly, copy, nonatomic, getter=getTitle) NSString *title;
@property (readonly, nonatomic, getter=getAvatar) ACAvatar *avatar;
@property (readonly, nonatomic, getter=getCreatorId) jint creatorId;
@property (readonly, nonatomic, getter=isMember) jboolean isMember;
@property (readonly, copy, nonatomic, getter=getTheme) NSString *theme;
@property (readonly, copy, nonatomic, getter=getAbout) NSString *about;
@property (readonly, nonatomic, getter=getMembers) id<JavaUtilList> members;

+ (id<ARBserCreator>)CREATOR;

+ (void)setCREATOR:(id<ARBserCreator>)value;

#pragma mark Public

- (instancetype)initWithARApiGroup:(ARApiGroup *)group;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (ACGroup *)addMemberWithInt:(jint)uid
                      withInt:(jint)inviterUid
                     withLong:(jlong)inviteDate;

- (ACGroup *)changeMemberWithBoolean:(jboolean)isMember;

- (ACGroup *)clearMembers;

- (ACGroup *)editAboutWithNSString:(NSString *)about;

- (ACGroup *)editAvatarWithARApiAvatar:(ARApiAvatar *)avatar;

- (ACGroup *)editThemeWithNSString:(NSString *)theme;

- (ACGroup *)editTitleWithNSString:(NSString *)title;

- (NSString *)getAbout;

- (jlong)getAccessHash;

- (ACAvatar *)getAvatar;

- (jint)getCreatorId;

- (jlong)getEngineId;

- (jint)getGroupId;

- (id<JavaUtilList>)getMembers;

- (NSString *)getTheme;

- (NSString *)getTitle;

- (jboolean)isHidden;

- (jboolean)isMember;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (ACPeer *)peer;

- (ACGroup *)removeMemberWithInt:(jint)uid;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (ACGroup *)updateMembersWithJavaUtilList:(id<JavaUtilList>)nMembers;

#pragma mark Protected

- (void)applyWrappedWithARBserObject:(ARApiGroup *)wrapped;

- (ARApiGroup *)createInstance;

@end

J2OBJC_STATIC_INIT(ACGroup)

FOUNDATION_EXPORT id<ARBserCreator> ACGroup_CREATOR_;
J2OBJC_STATIC_FIELD_GETTER(ACGroup, CREATOR_, id<ARBserCreator>)
J2OBJC_STATIC_FIELD_SETTER(ACGroup, CREATOR_, id<ARBserCreator>)

FOUNDATION_EXPORT void ACGroup_initWithARApiGroup_(ACGroup *self, ARApiGroup *group);

FOUNDATION_EXPORT ACGroup *new_ACGroup_initWithARApiGroup_(ARApiGroup *group) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACGroup_initWithByteArray_(ACGroup *self, IOSByteArray *data);

FOUNDATION_EXPORT ACGroup *new_ACGroup_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACGroup)

@compatibility_alias ImActorCoreEntityGroup ACGroup;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityGroup_H_

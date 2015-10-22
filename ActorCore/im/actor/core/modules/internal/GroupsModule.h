//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/modules/internal/GroupsModule.java
//

#ifndef _ImActorCoreModulesInternalGroupsModule_H_
#define _ImActorCoreModulesInternalGroupsModule_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/modules/AbsModule.h"

@class ACGroupAvatarVM;
@class ARMVVMCollection;
@class IOSIntArray;
@protocol ACCommand;
@protocol ACModuleContext;
@protocol ARKeyValueEngine;

@interface ACGroupsModule : ACAbsModule

#pragma mark Public

- (instancetype)initWithACModuleContext:(id<ACModuleContext>)context;

- (id<ACCommand>)addMemberToGroupWithInt:(jint)gid
                                 withInt:(jint)uid;

- (void)changeAvatarWithInt:(jint)gid
               withNSString:(NSString *)descriptor;

- (id<ACCommand>)createGroupWithNSString:(NSString *)title
                            withNSString:(NSString *)avatarDescriptor
                            withIntArray:(IOSIntArray *)uids;

- (id<ACCommand>)editAboutWithInt:(jint)gid
                     withNSString:(NSString *)about;

- (id<ACCommand>)editThemeWithInt:(jint)gid
                     withNSString:(NSString *)theme;

- (id<ACCommand>)editTitleWithInt:(jint)gid
                     withNSString:(NSString *)name;

- (ACGroupAvatarVM *)getAvatarVMWithInt:(jint)gid;

- (id<ARKeyValueEngine>)getGroups;

- (ARMVVMCollection *)getGroupsCollection;

- (id<ACCommand>)joinGroupViaLinkWithNSString:(NSString *)url;

- (id<ACCommand>)joinPublicGroupWithInt:(jint)gid
                               withLong:(jlong)accessHash;

- (id<ACCommand>)kickMemberWithInt:(jint)gid
                           withInt:(jint)uid;

- (id<ACCommand>)leaveGroupWithInt:(jint)gid;

- (id<ACCommand>)listPublicGroups;

- (id<ACCommand>)makeAdminWithInt:(jint)gid
                          withInt:(jint)uid;

- (void)removeAvatarWithInt:(jint)gid;

- (id<ACCommand>)requestIntegrationTokenWithInt:(jint)gid;

- (id<ACCommand>)requestInviteLinkWithInt:(jint)gid;

- (id<ACCommand>)requestRevokeLinkWithInt:(jint)gid;

- (void)resetModule;

- (id<ACCommand>)revokeIntegrationTokenWithInt:(jint)gid;

@end

J2OBJC_EMPTY_STATIC_INIT(ACGroupsModule)

FOUNDATION_EXPORT void ACGroupsModule_initWithACModuleContext_(ACGroupsModule *self, id<ACModuleContext> context);

FOUNDATION_EXPORT ACGroupsModule *new_ACGroupsModule_initWithACModuleContext_(id<ACModuleContext> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACGroupsModule)

@compatibility_alias ImActorCoreModulesInternalGroupsModule ACGroupsModule;


#pragma clang diagnostic pop
#endif // _ImActorCoreModulesInternalGroupsModule_H_

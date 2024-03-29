//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/DialogBuilder.java
//

#ifndef _ImActorCoreEntityDialogBuilder_H_
#define _ImActorCoreEntityDialogBuilder_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ACAvatar;
@class ACContentTypeEnum;
@class ACDialog;
@class ACMessageStateEnum;
@class ACPeer;

@interface ACDialogBuilder : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithACDialog:(ACDialog *)dialog;

- (ACDialog *)createDialog;

- (ACDialogBuilder *)setDialogAvatarWithACAvatar:(ACAvatar *)avatar;

- (ACDialogBuilder *)setDialogTitleWithNSString:(NSString *)dialogTitle;

- (ACDialogBuilder *)setMessageTypeWithACContentTypeEnum:(ACContentTypeEnum *)messageType;

- (ACDialogBuilder *)setPeerWithACPeer:(ACPeer *)peer;

- (ACDialogBuilder *)setRelatedUidWithInt:(jint)relatedUid;

- (ACDialogBuilder *)setRidWithLong:(jlong)rid;

- (ACDialogBuilder *)setSenderIdWithInt:(jint)senderId;

- (ACDialogBuilder *)setSortKeyWithLong:(jlong)sortKey;

- (ACDialogBuilder *)setStatusWithACMessageStateEnum:(ACMessageStateEnum *)status;

- (ACDialogBuilder *)setTextWithNSString:(NSString *)text;

- (ACDialogBuilder *)setTimeWithLong:(jlong)time;

- (ACDialogBuilder *)setUnreadCountWithInt:(jint)unreadCount;

@end

J2OBJC_EMPTY_STATIC_INIT(ACDialogBuilder)

FOUNDATION_EXPORT void ACDialogBuilder_init(ACDialogBuilder *self);

FOUNDATION_EXPORT ACDialogBuilder *new_ACDialogBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ACDialogBuilder_initWithACDialog_(ACDialogBuilder *self, ACDialog *dialog);

FOUNDATION_EXPORT ACDialogBuilder *new_ACDialogBuilder_initWithACDialog_(ACDialog *dialog) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACDialogBuilder)

@compatibility_alias ImActorCoreEntityDialogBuilder ACDialogBuilder;


#pragma clang diagnostic pop
#endif // _ImActorCoreEntityDialogBuilder_H_

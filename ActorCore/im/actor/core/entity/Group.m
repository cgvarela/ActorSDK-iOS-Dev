//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Group.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/core/api/ApiAvatar.h"
#include "im/actor/core/api/ApiGroup.h"
#include "im/actor/core/api/ApiMember.h"
#include "im/actor/core/entity/Avatar.h"
#include "im/actor/core/entity/Group.h"
#include "im/actor/core/entity/GroupMember.h"
#include "im/actor/core/entity/Peer.h"
#include "im/actor/core/entity/PeerType.h"
#include "im/actor/core/entity/WrapperEntity.h"
#include "im/actor/runtime/bser/BserCreator.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include "im/actor/runtime/collections/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#define ACGroup_RECORD_ID 10

@interface ACGroup () {
 @public
  jint groupId_;
  jlong accessHash_;
  NSString *title_;
  ACAvatar *avatar_;
  jint creatorId_;
  jboolean isMember_;
  jboolean isHidden_;
  NSString *theme_;
  NSString *about_;
  id<JavaUtilList> members_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ACGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(ACGroup, avatar_, ACAvatar *)
J2OBJC_FIELD_SETTER(ACGroup, theme_, NSString *)
J2OBJC_FIELD_SETTER(ACGroup, about_, NSString *)
J2OBJC_FIELD_SETTER(ACGroup, members_, id<JavaUtilList>)

J2OBJC_STATIC_FIELD_GETTER(ACGroup, RECORD_ID, jint)

__attribute__((unused)) static void ACGroup_init(ACGroup *self);

__attribute__((unused)) static ACGroup *new_ACGroup_init() NS_RETURNS_RETAINED;

@interface ACGroup_$1 : NSObject < ARBserCreator >

- (ACGroup *)createInstance;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ACGroup_$1)

__attribute__((unused)) static void ACGroup_$1_init(ACGroup_$1 *self);

__attribute__((unused)) static ACGroup_$1 *new_ACGroup_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ACGroup_$1)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Group.java"

J2OBJC_INITIALIZED_DEFN(ACGroup)

id<ARBserCreator> ACGroup_CREATOR_;


#line 24
@implementation ACGroup

@synthesize groupId = groupId_;
@synthesize title = title_;
@synthesize avatar = avatar_;
@synthesize creatorId = creatorId_;
@synthesize isMember = isMember_;
@synthesize theme = theme_;
@synthesize about = about_;
@synthesize members = members_;

+ (id<ARBserCreator>)CREATOR {
  return ACGroup_CREATOR_;
}

+ (void)setCREATOR:(id<ARBserCreator>)value {
  ACGroup_CREATOR_ = value;
}


#line 61
- (instancetype)initWithARApiGroup:(ARApiGroup *)group {
  ACGroup_initWithARApiGroup_(self, group);
  return self;
}


#line 65
- (instancetype)initWithByteArray:(IOSByteArray *)data {
  ACGroup_initWithByteArray_(self, data);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 69
- (instancetype)init {
  ACGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 73
- (ACPeer *)peer {
  return new_ACPeer_initWithACPeerTypeEnum_withInt_(JreLoadStatic(ACPeerTypeEnum, GROUP), groupId_);
}

- (jint)getGroupId {
  return groupId_;
}

- (jlong)getAccessHash {
  return accessHash_;
}


#line 86
- (NSString *)getTitle {
  return title_;
}


#line 91
- (ACAvatar *)getAvatar {
  return avatar_;
}


#line 96
- (id<JavaUtilList>)getMembers {
  return members_;
}


#line 101
- (NSString *)getTheme {
  return theme_;
}


#line 106
- (NSString *)getAbout {
  return about_;
}

- (jint)getCreatorId {
  return creatorId_;
}

- (jboolean)isMember {
  return isMember_;
}

- (jboolean)isHidden {
  return isHidden_;
}

- (ACGroup *)changeMemberWithBoolean:(jboolean)isMember {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 125
  [((ARApiGroup *) nil_chk(w)) getId],
#line 126
  [w getAccessHash],
#line 127
  [w getTitle],
#line 128
  [w getAvatar],
#line 129
  isMember,
#line 130
  [w getCreatorUid],
#line 131
  [w getMembers],
#line 132
  [w getCreateDate],
#line 133
  [w disableEdit],
#line 134
  [w disableInviteView],
#line 135
  [w disableInviteRevoke],
#line 136
  [w disableIntegrationView],
#line 137
  [w disableIntegrationsRevoke],
#line 138
  [w isAdmin],
#line 139
  [w getTheme],
#line 140
  [w getAbout],
#line 141
  [w isHidden],
#line 142
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 147
- (ACGroup *)clearMembers {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 150
  [((ARApiGroup *) nil_chk(w)) getId],
#line 151
  [w getAccessHash],
#line 152
  [w getTitle],
#line 153
  [w getAvatar],
#line 154
  [w isMember],
#line 155
  [w getCreatorUid], new_JavaUtilArrayList_init(),
#line 157
  [w getCreateDate],
#line 158
  [w disableEdit],
#line 159
  [w disableInviteView],
#line 160
  [w disableInviteRevoke],
#line 161
  [w disableIntegrationView],
#line 162
  [w disableIntegrationsRevoke],
#line 163
  [w isAdmin],
#line 164
  [w getTheme],
#line 165
  [w getAbout],
#line 166
  [w isHidden],
#line 167
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 172
- (ACGroup *)removeMemberWithInt:(jint)uid {
  ARApiGroup *w = [self getWrapped];
  JavaUtilArrayList *nMembers = new_JavaUtilArrayList_init();
  for (ARApiMember * __strong member in nil_chk([((ARApiGroup *) nil_chk(w)) getMembers])) {
    if ([((ARApiMember *) nil_chk(member)) getUid] != uid) {
      [nMembers addWithId:member];
    }
  }
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 181
  [w getId],
#line 182
  [w getAccessHash],
#line 183
  [w getTitle],
#line 184
  [w getAvatar],
#line 185
  [w isMember],
#line 186
  [w getCreatorUid],
#line 187
  nMembers,
#line 188
  [w getCreateDate],
#line 189
  [w disableEdit],
#line 190
  [w disableInviteView],
#line 191
  [w disableInviteRevoke],
#line 192
  [w disableIntegrationView],
#line 193
  [w disableIntegrationsRevoke],
#line 194
  [w isAdmin],
#line 195
  [w getTheme],
#line 196
  [w getAbout],
#line 197
  [w isHidden],
#line 198
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 203
- (ACGroup *)addMemberWithInt:(jint)uid
                      withInt:(jint)inviterUid
                     withLong:(jlong)inviteDate {
  ARApiGroup *w = [self getWrapped];
  JavaUtilArrayList *nMembers = new_JavaUtilArrayList_init();
  for (ARApiMember * __strong member in nil_chk([((ARApiGroup *) nil_chk(w)) getMembers])) {
    if ([((ARApiMember *) nil_chk(member)) getUid] != uid) {
      [nMembers addWithId:member];
    }
  }
  [nMembers addWithId:new_ARApiMember_initWithInt_withInt_withLong_withJavaLangBoolean_(uid, inviterUid, inviteDate, nil)];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 213
  [w getId],
#line 214
  [w getAccessHash],
#line 215
  [w getTitle],
#line 216
  [w getAvatar],
#line 217
  [w isMember],
#line 218
  [w getCreatorUid],
#line 219
  nMembers,
#line 220
  [w getCreateDate],
#line 221
  [w disableEdit],
#line 222
  [w disableInviteView],
#line 223
  [w disableInviteRevoke],
#line 224
  [w disableIntegrationView],
#line 225
  [w disableIntegrationsRevoke],
#line 226
  [w isAdmin],
#line 227
  [w getTheme],
#line 228
  [w getAbout],
#line 229
  [w isHidden],
#line 230
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 235
- (ACGroup *)updateMembersWithJavaUtilList:(id<JavaUtilList>)nMembers {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 238
  [((ARApiGroup *) nil_chk(w)) getId],
#line 239
  [w getAccessHash],
#line 240
  [w getTitle],
#line 241
  [w getAvatar],
#line 242
  [w isMember],
#line 243
  [w getCreatorUid],
#line 244
  nMembers,
#line 245
  [w getCreateDate],
#line 246
  [w disableEdit],
#line 247
  [w disableInviteView],
#line 248
  [w disableInviteRevoke],
#line 249
  [w disableIntegrationView],
#line 250
  [w disableIntegrationsRevoke],
#line 251
  [w isAdmin],
#line 252
  [w getTheme],
#line 253
  [w getAbout],
#line 254
  [w isHidden],
#line 255
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 260
- (ACGroup *)editTitleWithNSString:(NSString *)title {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 263
  [((ARApiGroup *) nil_chk(w)) getId],
#line 264
  [w getAccessHash],
#line 265
  title,
#line 266
  [w getAvatar],
#line 267
  [w isMember],
#line 268
  [w getCreatorUid],
#line 269
  [w getMembers],
#line 270
  [w getCreateDate],
#line 271
  [w disableEdit],
#line 272
  [w disableInviteView],
#line 273
  [w disableInviteRevoke],
#line 274
  [w disableIntegrationView],
#line 275
  [w disableIntegrationsRevoke],
#line 276
  [w isAdmin],
#line 277
  [w getTheme],
#line 278
  [w getAbout],
#line 279
  [w isHidden],
#line 280
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 285
- (ACGroup *)editThemeWithNSString:(NSString *)theme {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 288
  [((ARApiGroup *) nil_chk(w)) getId],
#line 289
  [w getAccessHash],
#line 290
  [w getTitle],
#line 291
  [w getAvatar],
#line 292
  [w isMember],
#line 293
  [w getCreatorUid],
#line 294
  [w getMembers],
#line 295
  [w getCreateDate],
#line 296
  [w disableEdit],
#line 297
  [w disableInviteView],
#line 298
  [w disableInviteRevoke],
#line 299
  [w disableIntegrationView],
#line 300
  [w disableIntegrationsRevoke],
#line 301
  [w isAdmin],
#line 302
  theme,
#line 303
  [w getAbout],
#line 304
  [w isHidden],
#line 305
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 310
- (ACGroup *)editAboutWithNSString:(NSString *)about {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 313
  [((ARApiGroup *) nil_chk(w)) getId],
#line 314
  [w getAccessHash],
#line 315
  [w getTitle],
#line 316
  [w getAvatar],
#line 317
  [w isMember],
#line 318
  [w getCreatorUid],
#line 319
  [w getMembers],
#line 320
  [w getCreateDate],
#line 321
  [w disableEdit],
#line 322
  [w disableInviteView],
#line 323
  [w disableInviteRevoke],
#line 324
  [w disableIntegrationView],
#line 325
  [w disableIntegrationsRevoke],
#line 326
  [w isAdmin],
#line 327
  [w getTheme],
#line 328
  about,
#line 329
  [w isHidden],
#line 330
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 335
- (ACGroup *)editAvatarWithARApiAvatar:(ARApiAvatar *)avatar {
  ARApiGroup *w = [self getWrapped];
  ARApiGroup *res = new_ARApiGroup_initWithInt_withLong_withNSString_withARApiAvatar_withBoolean_withInt_withJavaUtilList_withLong_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withJavaLangBoolean_withNSString_withNSString_withJavaLangBoolean_withJavaUtilList_(
#line 338
  [((ARApiGroup *) nil_chk(w)) getId],
#line 339
  [w getAccessHash],
#line 340
  [w getTitle],
#line 341
  avatar,
#line 342
  [w isMember],
#line 343
  [w getCreatorUid],
#line 344
  [w getMembers],
#line 345
  [w getCreateDate],
#line 346
  [w disableEdit],
#line 347
  [w disableInviteView],
#line 348
  [w disableInviteRevoke],
#line 349
  [w disableIntegrationView],
#line 350
  [w disableIntegrationsRevoke],
#line 351
  [w isAdmin],
#line 352
  [w getTheme],
#line 353
  [w getAbout],
#line 354
  [w isHidden],
#line 355
  [w getExtensions]);
  [res setUnmappedObjectsWithARSparseArray:[w getUnmappedObjects]];
  return new_ACGroup_initWithARApiGroup_(res);
}


#line 361
- (void)applyWrappedWithARBserObject:(ARApiGroup *)wrapped {
  self->groupId_ = [((ARApiGroup *) nil_chk(wrapped)) getId];
  self->accessHash_ = [wrapped getAccessHash];
  self->title_ = [wrapped getTitle];
  self->avatar_ = [wrapped getAvatar] != nil ? new_ACAvatar_initWithARApiAvatar_([wrapped getAvatar]) : nil;
  self->creatorId_ = [wrapped getCreatorUid];
  self->members_ = new_JavaUtilArrayList_init();
  for (ARApiMember * __strong m in nil_chk([wrapped getMembers])) {
    [self->members_ addWithId:new_ACGroupMember_initWithInt_withInt_withLong_withBoolean_([((ARApiMember *) nil_chk(m)) getUid], [m getInviterUid], [m getDate], [m isAdmin] != nil ? [((JavaLangBoolean *) nil_chk([m isAdmin])) booleanValue] : [m getUid] == self->creatorId_)];
  }
  self->isMember_ = [wrapped isMember];
  self->isHidden_ = [wrapped isHidden] != nil ? [((JavaLangBoolean *) nil_chk([wrapped isHidden])) booleanValue] : false;
  self->about_ = [wrapped getAbout];
  self->theme_ = [wrapped getTheme];
}


#line 378
- (void)parseWithARBserValues:(ARBserValues *)values {
  
#line 380
  if ([((ARBserValues *) nil_chk(values)) getBoolWithInt:9 withBoolean:false]) {
    
#line 382
    [super parseWithARBserValues:values];
  }
  else {
    @throw new_JavaIoIOException_initWithNSString_(@"Unsupported obsolete format");
  }
}


#line 390
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  
#line 392
  [((ARBserWriter *) nil_chk(writer)) writeBoolWithInt:9 withBoolean:true];
  
#line 394
  [super serializeWithARBserWriter:writer];
}


#line 398
- (jlong)getEngineId {
  return groupId_;
}


#line 404
- (ARApiGroup *)createInstance {
  return new_ARApiGroup_init();
}

+ (void)initialize {
  if (self == [ACGroup class]) {
    ACGroup_CREATOR_ = new_ACGroup_$1_init();
    J2OBJC_SET_INITIALIZED(ACGroup)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithARApiGroup:", "Group", NULL, 0x1, NULL, NULL },
    { "initWithByteArray:", "Group", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "init", "Group", NULL, 0x2, NULL, NULL },
    { "peer", NULL, "Lim.actor.core.entity.Peer;", 0x1, NULL, NULL },
    { "getGroupId", NULL, "I", 0x1, NULL, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAvatar", NULL, "Lim.actor.core.entity.Avatar;", 0x1, NULL, NULL },
    { "getMembers", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getTheme", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAbout", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getCreatorId", NULL, "I", 0x1, NULL, NULL },
    { "isMember", NULL, "Z", 0x1, NULL, NULL },
    { "isHidden", NULL, "Z", 0x1, NULL, NULL },
    { "changeMemberWithBoolean:", "changeMember", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "clearMembers", NULL, "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "removeMemberWithInt:", "removeMember", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "addMemberWithInt:withInt:withLong:", "addMember", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "updateMembersWithJavaUtilList:", "updateMembers", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "editTitleWithNSString:", "editTitle", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "editThemeWithNSString:", "editTheme", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "editAboutWithNSString:", "editAbout", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "editAvatarWithARApiAvatar:", "editAvatar", "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "applyWrappedWithARBserObject:", "applyWrapped", "V", 0x4, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getEngineId", NULL, "J", 0x1, NULL, NULL },
    { "createInstance", NULL, "Lim.actor.core.api.ApiGroup;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "RECORD_ID", "RECORD_ID", 0x1a, "I", NULL, NULL, .constantValue.asInt = ACGroup_RECORD_ID },
    { "CREATOR_", NULL, 0x9, "Lim.actor.runtime.bser.BserCreator;", &ACGroup_CREATOR_, "Lim/actor/runtime/bser/BserCreator<Lim/actor/core/entity/Group;>;", .constantValue.asLong = 0 },
    { "groupId_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "accessHash_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "avatar_", NULL, 0x2, "Lim.actor.core.entity.Avatar;", NULL, NULL, .constantValue.asLong = 0 },
    { "creatorId_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "isMember_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "isHidden_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "theme_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "about_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "members_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lim/actor/core/entity/GroupMember;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.api.ApiGroup;"};
  static const J2ObjcClassInfo _ACGroup = { 2, "Group", "im.actor.core.entity", NULL, 0x1, 28, methods, 12, fields, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/entity/WrapperEntity<Lim/actor/core/api/ApiGroup;>;Lim/actor/runtime/storage/KeyValueItem;" };
  return &_ACGroup;
}

@end


#line 61
void ACGroup_initWithARApiGroup_(ACGroup *self, ARApiGroup *group) {
  (void) ACWrapperEntity_initWithInt_withARBserObject_(self, ACGroup_RECORD_ID, group);
}


#line 61
ACGroup *new_ACGroup_initWithARApiGroup_(ARApiGroup *group) {
  ACGroup *self = [ACGroup alloc];
  ACGroup_initWithARApiGroup_(self, group);
  return self;
}


#line 65
void ACGroup_initWithByteArray_(ACGroup *self, IOSByteArray *data) {
  (void) ACWrapperEntity_initWithInt_withByteArray_(self, ACGroup_RECORD_ID, data);
}


#line 65
ACGroup *new_ACGroup_initWithByteArray_(IOSByteArray *data) {
  ACGroup *self = [ACGroup alloc];
  ACGroup_initWithByteArray_(self, data);
  return self;
}


#line 69
void ACGroup_init(ACGroup *self) {
  (void) ACWrapperEntity_initWithInt_(self, ACGroup_RECORD_ID);
}


#line 69
ACGroup *new_ACGroup_init() {
  ACGroup *self = [ACGroup alloc];
  ACGroup_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACGroup)

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/Group.java"

@implementation ACGroup_$1


#line 30
- (ACGroup *)createInstance {
  return new_ACGroup_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ACGroup_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createInstance", NULL, "Lim.actor.core.entity.Group;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _ACGroup_$1 = { 2, "", "im.actor.core.entity", "Group", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lim/actor/runtime/bser/BserCreator<Lim/actor/core/entity/Group;>;" };
  return &_ACGroup_$1;
}

@end

void ACGroup_$1_init(ACGroup_$1 *self) {
  (void) NSObject_init(self);
}

ACGroup_$1 *new_ACGroup_$1_init() {
  ACGroup_$1 *self = [ACGroup_$1 alloc];
  ACGroup_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACGroup_$1)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContentDescription.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/entity/Avatar.h"
#include "im/actor/core/entity/ContentDescription.h"
#include "im/actor/core/entity/ContentType.h"
#include "im/actor/core/entity/content/AbsContent.h"
#include "im/actor/core/entity/content/DocumentContent.h"
#include "im/actor/core/entity/content/PhotoContent.h"
#include "im/actor/core/entity/content/ServiceContent.h"
#include "im/actor/core/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/core/entity/content/ServiceGroupCreated.h"
#include "im/actor/core/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/core/entity/content/ServiceGroupUserInvited.h"
#include "im/actor/core/entity/content/ServiceGroupUserJoined.h"
#include "im/actor/core/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/core/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/core/entity/content/ServiceUserRegistered.h"
#include "im/actor/core/entity/content/TextContent.h"
#include "im/actor/core/entity/content/VideoContent.h"
#include "im/actor/runtime/bser/Bser.h"
#include "im/actor/runtime/bser/BserObject.h"
#include "im/actor/runtime/bser/BserValues.h"
#include "im/actor/runtime/bser/BserWriter.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

@interface ACContentDescription () {
 @public
  ACContentTypeEnum *contentType_;
  NSString *text_;
  jint relatedUser_;
  jboolean isSilent_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ACContentDescription, contentType_, ACContentTypeEnum *)
J2OBJC_FIELD_SETTER(ACContentDescription, text_, NSString *)

__attribute__((unused)) static void ACContentDescription_init(ACContentDescription *self);

__attribute__((unused)) static ACContentDescription *new_ACContentDescription_init() NS_RETURNS_RETAINED;

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/entity/ContentDescription.java"


#line 31
@implementation ACContentDescription

@synthesize contentType = contentType_;
@synthesize text = text_;
@synthesize relatedUser = relatedUser_;
@synthesize isSilent = isSilent_;


#line 33
+ (ACContentDescription *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ACContentDescription_fromBytesWithByteArray_(data);
}

+ (ACContentDescription *)fromContentWithACAbsContent:(ACAbsContent *)msg {
  return ACContentDescription_fromContentWithACAbsContent_(msg);
}


#line 89
- (instancetype)initWithACContentTypeEnum:(ACContentTypeEnum *)contentType
                             withNSString:(NSString *)text
                                  withInt:(jint)relatedUser
                              withBoolean:(jboolean)isSilent {
  ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(self, contentType, text, relatedUser, isSilent);
  return self;
}

- (instancetype)initWithACContentTypeEnum:(ACContentTypeEnum *)contentType
                             withNSString:(NSString *)text {
  ACContentDescription_initWithACContentTypeEnum_withNSString_(self, contentType, text);
  return self;
}


#line 101
- (instancetype)initWithACContentTypeEnum:(ACContentTypeEnum *)contentType {
  ACContentDescription_initWithACContentTypeEnum_(self, contentType);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 105
- (instancetype)init {
  ACContentDescription_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 109
- (ACContentTypeEnum *)getContentType {
  return contentType_;
}

- (NSString *)getText {
  return text_;
}

- (jint)getRelatedUser {
  return relatedUser_;
}

- (jboolean)isSilent {
  return isSilent_;
}


#line 126
- (void)parseWithARBserValues:(ARBserValues *)values {
  contentType_ = ACContentTypeEnum_fromValueWithInt_([((ARBserValues *) nil_chk(values)) getIntWithInt:1]);
  text_ = [values getStringWithInt:2];
  relatedUser_ = [values getIntWithInt:3];
  isSilent_ = [values getBoolWithInt:4];
}


#line 134
- (void)serializeWithARBserWriter:(ARBserWriter *)writer {
  [((ARBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:[((ACContentTypeEnum *) nil_chk(contentType_)) getValue]];
  [writer writeStringWithInt:2 withNSString:text_];
  [writer writeIntWithInt:3 withInt:relatedUser_];
  [writer writeBoolWithInt:4 withBoolean:isSilent_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.core.entity.ContentDescription;", 0x9, "Ljava.io.IOException;", NULL },
    { "fromContentWithACAbsContent:", "fromContent", "Lim.actor.core.entity.ContentDescription;", 0x9, NULL, NULL },
    { "initWithACContentTypeEnum:withNSString:withInt:withBoolean:", "ContentDescription", NULL, 0x1, NULL, NULL },
    { "initWithACContentTypeEnum:withNSString:", "ContentDescription", NULL, 0x1, NULL, NULL },
    { "initWithACContentTypeEnum:", "ContentDescription", NULL, 0x1, NULL, NULL },
    { "init", "ContentDescription", NULL, 0x2, NULL, NULL },
    { "getContentType", NULL, "Lim.actor.core.entity.ContentType;", 0x1, NULL, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getRelatedUser", NULL, "I", 0x1, NULL, NULL },
    { "isSilent", NULL, "Z", 0x1, NULL, NULL },
    { "parseWithARBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "serializeWithARBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "contentType_", NULL, 0x2, "Lim.actor.core.entity.ContentType;", NULL, NULL, .constantValue.asLong = 0 },
    { "text_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "relatedUser_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "isSilent_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ACContentDescription = { 2, "ContentDescription", "im.actor.core.entity", NULL, 0x1, 12, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ACContentDescription;
}

@end


#line 33
ACContentDescription *ACContentDescription_fromBytesWithByteArray_(IOSByteArray *data) {
  ACContentDescription_initialize();
  
#line 34
  return ARBser_parseWithARBserObject_withByteArray_(new_ACContentDescription_init(), data);
}


#line 37
ACContentDescription *ACContentDescription_fromContentWithACAbsContent_(ACAbsContent *msg) {
  ACContentDescription_initialize();
  
#line 38
  if ([msg isKindOfClass:[ACTextContent class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_(JreLoadStatic(ACContentTypeEnum, TEXT),
#line 40
    [((ACTextContent *) nil_chk(((ACTextContent *) check_class_cast(msg, [ACTextContent class])))) getText]);
  }
  else
#line 41
  if ([msg isKindOfClass:[ACPhotoContent class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, DOCUMENT_PHOTO));
  }
  else
#line 43
  if ([msg isKindOfClass:[ACVideoContent class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, DOCUMENT_VIDEO));
  }
  else
#line 45
  if ([msg isKindOfClass:[ACDocumentContent class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, DOCUMENT));
  }
  else
#line 47
  if ([msg isKindOfClass:[ACServiceUserRegistered class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, SERVICE_REGISTERED));
  }
  else
#line 49
  if ([msg isKindOfClass:[ACServiceGroupAvatarChanged class]]) {
    if ([((ACServiceGroupAvatarChanged *) nil_chk(((ACServiceGroupAvatarChanged *) check_class_cast(msg, [ACServiceGroupAvatarChanged class])))) getNewAvatar] == nil) {
      return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, SERVICE_AVATAR_REMOVED));
    }
    else {
      
#line 53
      return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, SERVICE_AVATAR));
    }
  }
  else
#line 55
  if ([msg isKindOfClass:[ACServiceGroupTitleChanged class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_(JreLoadStatic(ACContentTypeEnum, SERVICE_TITLE),
#line 57
    [((ACServiceGroupTitleChanged *) nil_chk(((ACServiceGroupTitleChanged *) check_class_cast(msg, [ACServiceGroupTitleChanged class])))) getNewTitle]);
  }
  else
#line 58
  if ([msg isKindOfClass:[ACServiceGroupCreated class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, SERVICE_CREATED));
  }
  else
#line 60
  if ([msg isKindOfClass:[ACServiceGroupUserInvited class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(JreLoadStatic(ACContentTypeEnum, SERVICE_ADD), @"",
#line 62
    [((ACServiceGroupUserInvited *) nil_chk(((ACServiceGroupUserInvited *) check_class_cast(msg, [ACServiceGroupUserInvited class])))) getAddedUid], false);
  }
  else
#line 63
  if ([msg isKindOfClass:[ACServiceGroupUserKicked class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(JreLoadStatic(ACContentTypeEnum, SERVICE_KICK), @"",
#line 65
    [((ACServiceGroupUserKicked *) nil_chk(((ACServiceGroupUserKicked *) check_class_cast(msg, [ACServiceGroupUserKicked class])))) getKickedUid], false);
  }
  else
#line 66
  if ([msg isKindOfClass:[ACServiceGroupUserLeave class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(JreLoadStatic(ACContentTypeEnum, SERVICE_LEAVE), @"",
#line 68
    0, true);
  }
  else
#line 69
  if ([msg isKindOfClass:[ACServiceGroupUserJoined class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(JreLoadStatic(ACContentTypeEnum, SERVICE_JOINED), @"",
#line 71
    0, false);
  }
  else
#line 72
  if ([msg isKindOfClass:[ACServiceContent class]]) {
    return new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(JreLoadStatic(ACContentTypeEnum, SERVICE),
#line 74
    [((ACServiceContent *) nil_chk(((ACServiceContent *) check_class_cast(msg, [ACServiceContent class])))) getCompatText], 0, false);
  }
  else {
    
#line 76
    return new_ACContentDescription_initWithACContentTypeEnum_(JreLoadStatic(ACContentTypeEnum, UNKNOWN_CONTENT));
  }
}


#line 89
void ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(ACContentDescription *self, ACContentTypeEnum *contentType, NSString *text, jint relatedUser, jboolean isSilent) {
  (void) ARBserObject_init(self);
  self->contentType_ = contentType;
  self->text_ = text;
  self->relatedUser_ = relatedUser;
  self->isSilent_ = isSilent;
}


#line 89
ACContentDescription *new_ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(ACContentTypeEnum *contentType, NSString *text, jint relatedUser, jboolean isSilent) {
  ACContentDescription *self = [ACContentDescription alloc];
  ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(self, contentType, text, relatedUser, isSilent);
  return self;
}


#line 97
void ACContentDescription_initWithACContentTypeEnum_withNSString_(ACContentDescription *self, ACContentTypeEnum *contentType, NSString *text) {
  (void) ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(self, contentType, text, 0, false);
}


#line 97
ACContentDescription *new_ACContentDescription_initWithACContentTypeEnum_withNSString_(ACContentTypeEnum *contentType, NSString *text) {
  ACContentDescription *self = [ACContentDescription alloc];
  ACContentDescription_initWithACContentTypeEnum_withNSString_(self, contentType, text);
  return self;
}


#line 101
void ACContentDescription_initWithACContentTypeEnum_(ACContentDescription *self, ACContentTypeEnum *contentType) {
  (void) ACContentDescription_initWithACContentTypeEnum_withNSString_withInt_withBoolean_(self, contentType, @"", 0, false);
}


#line 101
ACContentDescription *new_ACContentDescription_initWithACContentTypeEnum_(ACContentTypeEnum *contentType) {
  ACContentDescription *self = [ACContentDescription alloc];
  ACContentDescription_initWithACContentTypeEnum_(self, contentType);
  return self;
}


#line 105
void ACContentDescription_init(ACContentDescription *self) {
  (void) ARBserObject_init(self);
}


#line 105
ACContentDescription *new_ACContentDescription_init() {
  ACContentDescription *self = [ACContentDescription alloc];
  ACContentDescription_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ACContentDescription)

#pragma clang diagnostic pop

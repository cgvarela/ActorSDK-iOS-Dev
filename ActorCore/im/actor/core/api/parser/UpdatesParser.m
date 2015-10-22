//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/parser/UpdatesParser.java
//

#include <j2objc/IOSClass.h>
#include <j2objc/IOSPrimitiveArray.h>
#include <j2objc/J2ObjC_source.h>
#include "im/actor/core/api/parser/UpdatesParser.h"
#include "im/actor/core/api/updates/UpdateChatArchived.h"
#include "im/actor/core/api/updates/UpdateChatClear.h"
#include "im/actor/core/api/updates/UpdateChatDelete.h"
#include "im/actor/core/api/updates/UpdateChatGroupsChanged.h"
#include "im/actor/core/api/updates/UpdateChatRestored.h"
#include "im/actor/core/api/updates/UpdateConfig.h"
#include "im/actor/core/api/updates/UpdateContactRegistered.h"
#include "im/actor/core/api/updates/UpdateContactsAdded.h"
#include "im/actor/core/api/updates/UpdateContactsRemoved.h"
#include "im/actor/core/api/updates/UpdateCountersChanged.h"
#include "im/actor/core/api/updates/UpdateGroupAboutChanged.h"
#include "im/actor/core/api/updates/UpdateGroupAvatarChanged.h"
#include "im/actor/core/api/updates/UpdateGroupInvite.h"
#include "im/actor/core/api/updates/UpdateGroupMembersUpdate.h"
#include "im/actor/core/api/updates/UpdateGroupOnline.h"
#include "im/actor/core/api/updates/UpdateGroupTitleChanged.h"
#include "im/actor/core/api/updates/UpdateGroupTopicChanged.h"
#include "im/actor/core/api/updates/UpdateGroupUserInvited.h"
#include "im/actor/core/api/updates/UpdateGroupUserKick.h"
#include "im/actor/core/api/updates/UpdateGroupUserLeave.h"
#include "im/actor/core/api/updates/UpdateMessage.h"
#include "im/actor/core/api/updates/UpdateMessageContentChanged.h"
#include "im/actor/core/api/updates/UpdateMessageDateChanged.h"
#include "im/actor/core/api/updates/UpdateMessageDelete.h"
#include "im/actor/core/api/updates/UpdateMessageRead.h"
#include "im/actor/core/api/updates/UpdateMessageReadByMe.h"
#include "im/actor/core/api/updates/UpdateMessageReceived.h"
#include "im/actor/core/api/updates/UpdateMessageSent.h"
#include "im/actor/core/api/updates/UpdateParameterChanged.h"
#include "im/actor/core/api/updates/UpdateTyping.h"
#include "im/actor/core/api/updates/UpdateUserAboutChanged.h"
#include "im/actor/core/api/updates/UpdateUserAvatarChanged.h"
#include "im/actor/core/api/updates/UpdateUserContactsChanged.h"
#include "im/actor/core/api/updates/UpdateUserLastSeen.h"
#include "im/actor/core/api/updates/UpdateUserLocalNameChanged.h"
#include "im/actor/core/api/updates/UpdateUserNameChanged.h"
#include "im/actor/core/api/updates/UpdateUserNickChanged.h"
#include "im/actor/core/api/updates/UpdateUserOffline.h"
#include "im/actor/core/api/updates/UpdateUserOnline.h"
#include "im/actor/core/network/parser/BaseParser.h"
#include "im/actor/core/network/parser/Update.h"
#include <j2objc/java/io/IOException.h>

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#line 0 "/Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/parser/UpdatesParser.java"


#line 18
@implementation ARUpdatesParser

- (ACUpdate *)readWithInt:(jint)type
            withByteArray:(IOSByteArray *)payload {
  switch (type) {
    case 16:
    
#line 22
    return ARUpdateUserAvatarChanged_fromBytesWithByteArray_(payload);
    case 32:
    
#line 23
    return ARUpdateUserNameChanged_fromBytesWithByteArray_(payload);
    case 51:
    
#line 24
    return ARUpdateUserLocalNameChanged_fromBytesWithByteArray_(payload);
    case 134:
    
#line 25
    return ARUpdateUserContactsChanged_fromBytesWithByteArray_(payload);
    case 209:
    
#line 26
    return ARUpdateUserNickChanged_fromBytesWithByteArray_(payload);
    case 210:
    
#line 27
    return ARUpdateUserAboutChanged_fromBytesWithByteArray_(payload);
    case 5:
    
#line 28
    return ARUpdateContactRegistered_fromBytesWithByteArray_(payload);
    case 40:
    
#line 29
    return ARUpdateContactsAdded_fromBytesWithByteArray_(payload);
    case 41:
    
#line 30
    return ARUpdateContactsRemoved_fromBytesWithByteArray_(payload);
    case 55:
    
#line 31
    return ARUpdateMessage_fromBytesWithByteArray_(payload);
    case 162:
    
#line 32
    return ARUpdateMessageContentChanged_fromBytesWithByteArray_(payload);
    case 163:
    
#line 33
    return ARUpdateMessageDateChanged_fromBytesWithByteArray_(payload);
    case 4:
    
#line 34
    return ARUpdateMessageSent_fromBytesWithByteArray_(payload);
    case 54:
    
#line 35
    return ARUpdateMessageReceived_fromBytesWithByteArray_(payload);
    case 19:
    
#line 36
    return ARUpdateMessageRead_fromBytesWithByteArray_(payload);
    case 50:
    
#line 37
    return ARUpdateMessageReadByMe_fromBytesWithByteArray_(payload);
    case 46:
    
#line 38
    return ARUpdateMessageDelete_fromBytesWithByteArray_(payload);
    case 47:
    
#line 39
    return ARUpdateChatClear_fromBytesWithByteArray_(payload);
    case 48:
    
#line 40
    return ARUpdateChatDelete_fromBytesWithByteArray_(payload);
    case 65:
    
#line 41
    return ARUpdateChatArchived_fromBytesWithByteArray_(payload);
    case 66:
    
#line 42
    return ARUpdateChatRestored_fromBytesWithByteArray_(payload);
    case 1:
    
#line 43
    return ARUpdateChatGroupsChanged_fromBytesWithByteArray_(payload);
    case 36:
    
#line 44
    return ARUpdateGroupInvite_fromBytesWithByteArray_(payload);
    case 21:
    
#line 45
    return ARUpdateGroupUserInvited_fromBytesWithByteArray_(payload);
    case 23:
    
#line 46
    return ARUpdateGroupUserLeave_fromBytesWithByteArray_(payload);
    case 24:
    
#line 47
    return ARUpdateGroupUserKick_fromBytesWithByteArray_(payload);
    case 44:
    
#line 48
    return ARUpdateGroupMembersUpdate_fromBytesWithByteArray_(payload);
    case 38:
    
#line 49
    return ARUpdateGroupTitleChanged_fromBytesWithByteArray_(payload);
    case 213:
    
#line 50
    return ARUpdateGroupTopicChanged_fromBytesWithByteArray_(payload);
    case 214:
    
#line 51
    return ARUpdateGroupAboutChanged_fromBytesWithByteArray_(payload);
    case 39:
    
#line 52
    return ARUpdateGroupAvatarChanged_fromBytesWithByteArray_(payload);
    case 6:
    
#line 53
    return ARUpdateTyping_fromBytesWithByteArray_(payload);
    case 7:
    
#line 54
    return ARUpdateUserOnline_fromBytesWithByteArray_(payload);
    case 8:
    
#line 55
    return ARUpdateUserOffline_fromBytesWithByteArray_(payload);
    case 9:
    
#line 56
    return ARUpdateUserLastSeen_fromBytesWithByteArray_(payload);
    case 33:
    
#line 57
    return ARUpdateGroupOnline_fromBytesWithByteArray_(payload);
    case 131:
    
#line 58
    return ARUpdateParameterChanged_fromBytesWithByteArray_(payload);
    case 215:
    
#line 59
    return ARUpdateCountersChanged_fromBytesWithByteArray_(payload);
    case 42:
    
#line 60
    return ARUpdateConfig_fromBytesWithByteArray_(payload);
  }
  @throw new_JavaIoIOException_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ARUpdatesParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithInt:withByteArray:", "read", "Lim.actor.core.network.parser.Update;", 0x1, "Ljava.io.IOException;", NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.core.network.parser.Update;"};
  static const J2ObjcClassInfo _ARUpdatesParser = { 2, "UpdatesParser", "im.actor.core.api.parser", NULL, 0x1, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lim/actor/core/network/parser/BaseParser<Lim/actor/core/network/parser/Update;>;" };
  return &_ARUpdatesParser;
}

@end

void ARUpdatesParser_init(ARUpdatesParser *self) {
  (void) ACBaseParser_init(self);
}

ARUpdatesParser *new_ARUpdatesParser_init() {
  ARUpdatesParser *self = [ARUpdatesParser alloc];
  ARUpdatesParser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ARUpdatesParser)

#pragma clang diagnostic pop

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/updates/UpdateUserAboutChanged.java
//

#ifndef _ImActorCoreApiUpdatesUpdateUserAboutChanged_H_
#define _ImActorCoreApiUpdatesUpdateUserAboutChanged_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/network/parser/Update.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

#define ARUpdateUserAboutChanged_HEADER 210

@interface ARUpdateUserAboutChanged : ACUpdate

+ (jint)HEADER;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
               withNSString:(NSString *)about;

+ (ARUpdateUserAboutChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getAbout;

- (jint)getHeaderKey;

- (jint)getUid;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARUpdateUserAboutChanged)

J2OBJC_STATIC_FIELD_GETTER(ARUpdateUserAboutChanged, HEADER, jint)

FOUNDATION_EXPORT ARUpdateUserAboutChanged *ARUpdateUserAboutChanged_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ARUpdateUserAboutChanged_initWithInt_withNSString_(ARUpdateUserAboutChanged *self, jint uid, NSString *about);

FOUNDATION_EXPORT ARUpdateUserAboutChanged *new_ARUpdateUserAboutChanged_initWithInt_withNSString_(jint uid, NSString *about) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARUpdateUserAboutChanged_init(ARUpdateUserAboutChanged *self);

FOUNDATION_EXPORT ARUpdateUserAboutChanged *new_ARUpdateUserAboutChanged_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARUpdateUserAboutChanged)

@compatibility_alias ImActorCoreApiUpdatesUpdateUserAboutChanged ARUpdateUserAboutChanged;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiUpdatesUpdateUserAboutChanged_H_

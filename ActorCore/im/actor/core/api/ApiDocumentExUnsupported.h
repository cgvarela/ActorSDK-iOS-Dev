//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiDocumentExUnsupported.java
//

#ifndef _ImActorCoreApiApiDocumentExUnsupported_H_
#define _ImActorCoreApiApiDocumentExUnsupported_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include "im/actor/core/api/ApiDocumentEx.h"

@class ARBserValues;
@class ARBserWriter;
@class IOSByteArray;

@interface ARApiDocumentExUnsupported : ARApiDocumentEx

#pragma mark Public

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiDocumentExUnsupported)

FOUNDATION_EXPORT void ARApiDocumentExUnsupported_initWithInt_withByteArray_(ARApiDocumentExUnsupported *self, jint key, IOSByteArray *content);

FOUNDATION_EXPORT ARApiDocumentExUnsupported *new_ARApiDocumentExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiDocumentExUnsupported)

@compatibility_alias ImActorCoreApiApiDocumentExUnsupported ARApiDocumentExUnsupported;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiDocumentExUnsupported_H_

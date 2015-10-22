//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/core/core-shared/src/main/java//im/actor/core/api/ApiWallpapper.java
//

#ifndef _ImActorCoreApiApiWallpapper_H_
#define _ImActorCoreApiApiWallpapper_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>
#include <ActorSDK/im/actor/runtime/bser/BserObject.h>

@class ARApiFastThumb;
@class ARApiFileLocation;
@class ARBserValues;
@class ARBserWriter;

@interface ARApiWallpapper : ARBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
                    withInt:(jint)w
                    withInt:(jint)h
                    withInt:(jint)fileSize
      withARApiFileLocation:(ARApiFileLocation *)file
         withARApiFastThumb:(ARApiFastThumb *)thumb;

- (ARApiFileLocation *)getFile;

- (jint)getFileSize;

- (jint)getH;

- (jint)getId;

- (ARApiFastThumb *)getThumb;

- (jint)getW;

- (void)parseWithARBserValues:(ARBserValues *)values;

- (void)serializeWithARBserWriter:(ARBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ARApiWallpapper)

FOUNDATION_EXPORT void ARApiWallpapper_initWithInt_withInt_withInt_withInt_withARApiFileLocation_withARApiFastThumb_(ARApiWallpapper *self, jint id_, jint w, jint h, jint fileSize, ARApiFileLocation *file, ARApiFastThumb *thumb);

FOUNDATION_EXPORT ARApiWallpapper *new_ARApiWallpapper_initWithInt_withInt_withInt_withInt_withARApiFileLocation_withARApiFastThumb_(jint id_, jint w, jint h, jint fileSize, ARApiFileLocation *file, ARApiFastThumb *thumb) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARApiWallpapper_init(ARApiWallpapper *self);

FOUNDATION_EXPORT ARApiWallpapper *new_ARApiWallpapper_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARApiWallpapper)

@compatibility_alias ImActorCoreApiApiWallpapper ARApiWallpapper;


#pragma clang diagnostic pop
#endif // _ImActorCoreApiApiWallpapper_H_
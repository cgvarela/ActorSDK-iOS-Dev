//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//org/bouncycastle/util/IPAddress.java
//

#ifndef _OrgBouncycastleUtilIPAddress_H_
#define _OrgBouncycastleUtilIPAddress_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@interface OrgBouncycastleUtilIPAddress : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Validate the given IPv4 or IPv6 address.
 @param address the IP address as a String.
 @return true if a valid address, false otherwise
 */
+ (jboolean)isValidWithNSString:(NSString *)address;

/*!
 @brief Validate the given IPv4 address.
 @param address the IP address as a String.
 @return true if a valid IPv4 address, false otherwise
 */
+ (jboolean)isValidIPv4WithNSString:(NSString *)address;

+ (jboolean)isValidIPv4WithNetmaskWithNSString:(NSString *)address;

/*!
 @brief Validate the given IPv6 address.
 @param address the IP address as a String.
 @return true if a valid IPv4 address, false otherwise
 */
+ (jboolean)isValidIPv6WithNSString:(NSString *)address;

+ (jboolean)isValidIPv6WithNetmaskWithNSString:(NSString *)address;

/*!
 @brief Validate the given IPv4 or IPv6 address and netmask.
 @param address the IP address as a String.
 @return true if a valid address with netmask, false otherwise
 */
+ (jboolean)isValidWithNetMaskWithNSString:(NSString *)address;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleUtilIPAddress)

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilIPAddress_isValidWithNSString_(NSString *address);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilIPAddress_isValidWithNetMaskWithNSString_(NSString *address);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_(NSString *address);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilIPAddress_isValidIPv4WithNetmaskWithNSString_(NSString *address);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilIPAddress_isValidIPv6WithNetmaskWithNSString_(NSString *address);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilIPAddress_isValidIPv6WithNSString_(NSString *address);

FOUNDATION_EXPORT void OrgBouncycastleUtilIPAddress_init(OrgBouncycastleUtilIPAddress *self);

FOUNDATION_EXPORT OrgBouncycastleUtilIPAddress *new_OrgBouncycastleUtilIPAddress_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilIPAddress)


#pragma clang diagnostic pop
#endif // _OrgBouncycastleUtilIPAddress_H_
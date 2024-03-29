//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-sdk/sdk-core/runtime/runtime-shared/src/main/java//im/actor/runtime/json/JSONArray.java
//

#ifndef _ImActorRuntimeJsonJSONArray_H_
#define _ImActorRuntimeJsonJSONArray_H_

#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include <j2objc/J2ObjC_header.h>

@class ARJSONObject;
@class ARJSONTokener;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

/*!
 @brief A JSONArray is an ordered sequence of values.
 Its external text form is a
 string wrapped in square brackets with commas separating the values. The
 internal form is an object having <code>get</code> and <code>opt</code>
 methods for accessing the values by index, and <code>put</code> methods for
 adding or replacing values. The values can be any of these types:
 <code>Boolean</code>, <code>JSONArray</code>, <code>JSONObject</code>,
 <code>Number</code>, <code>String</code>, or the
 <code>JSONObject.NULL object</code>.
 <p>
 The constructor can convert a JSON text into a Java object. The
 <code>toString</code> method converts to JSON text.
 <p>
 A <code>get</code> method returns a value if one can be found, and throws an
 exception if one cannot be found. An <code>opt</code> method returns a
 default value instead of throwing an exception, and so is useful for
 obtaining optional values.
 <p>
 The generic <code>get()</code> and <code>opt()</code> methods return an
 object which you can cast or query for type. There are also typed
 <code>get</code> and <code>opt</code> methods that do type checking and type
 coercion for you.
 <p>
 The texts produced by the <code>toString</code> methods strictly conform to
 JSON syntax rules. The constructors are more forgiving in the texts they will
 accept:
 <ul>
 <li>An extra <code>,</code>&nbsp;<small>(comma)</small> may appear just
 before the closing bracket.</li>
 <li>The <code>null</code> value will be inserted when there is <code>,</code>
 &nbsp;<small>(comma)</small> elision.</li>
 <li>Strings may be quoted with <code>'</code>&nbsp;<small>(single
 quote)</small>.</li>
 <li>Strings do not need to be quoted at all if they do not begin with a quote
 or single quote, and if they do not contain leading or trailing spaces, and
 if they do not contain any of these characters:
 <code>{ } [ ] / \ : , #</code> and if they do not look like numbers and
 if they are not the reserved words <code>true</code>, <code>false</code>, or
 <code>null</code>.</li>
 </ul>
 @author JSON.org
 @version 2014-05-03
 */
@interface ARJSONArray : NSObject

#pragma mark Public

/*!
 @brief Construct an empty JSONArray.
 */
- (instancetype)init;

/*!
 @brief Construct a JSONArray from a Collection.
 @param collection
 A Collection.
 */
- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/*!
 @brief Construct a JSONArray from a JSONTokener.
 @param x
 A JSONTokener
 @throws JSONException
 If there is a syntax error.
 */
- (instancetype)initWithARJSONTokener:(ARJSONTokener *)x;

/*!
 @brief Construct a JSONArray from a source JSON text.
 @param source
 A string that begins with <code>[</code>&nbsp;<small>(left
 bracket)</small> and ends with <code>]</code>
 &nbsp;<small>(right bracket)</small>.
 @throws JSONException
 If there is a syntax error.
 */
- (instancetype)initWithNSString:(NSString *)source;

/*!
 @brief Get the object value associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return An object value.
 @throws JSONException
 If there is no value for the index.
 */
- (id)getWithInt:(jint)index;

/*!
 @brief Get the boolean value associated with an index.
 The string values "true"
 and "false" are converted to boolean.
 @param index
 The index must be between 0 and length() - 1.
 @return The truth.
 @throws JSONException
 If there is no value for the index or if the value is not
 convertible to boolean.
 */
- (jboolean)getBooleanWithInt:(jint)index;

/*!
 @brief Get the double value associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return The value.
 @throws JSONException
 If the key is not found or if the value cannot be converted
 to a number.
 */
- (jdouble)getDoubleWithInt:(jint)index;

/*!
 @brief Get the int value associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return The value.
 @throws JSONException
 If the key is not found or if the value is not a number.
 */
- (jint)getIntWithInt:(jint)index;

/*!
 @brief Get the JSONArray associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return A JSONArray value.
 @throws JSONException
 If there is no value for the index. or if the value is not a
 JSONArray
 */
- (ARJSONArray *)getJSONArrayWithInt:(jint)index;

/*!
 @brief Get the JSONObject associated with an index.
 @param index
 subscript
 @return A JSONObject value.
 @throws JSONException
 If there is no value for the index or if the value is not a
 JSONObject
 */
- (ARJSONObject *)getJSONObjectWithInt:(jint)index;

/*!
 @brief Get the long value associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return The value.
 @throws JSONException
 If the key is not found or if the value cannot be converted
 to a number.
 */
- (jlong)getLongWithInt:(jint)index;

/*!
 @brief Get the string associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return A string value.
 @throws JSONException
 If there is no string value for the index.
 */
- (NSString *)getStringWithInt:(jint)index;

/*!
 @brief Determine if the value is null.
 @param index
 The index must be between 0 and length() - 1.
 @return true if the value at the index is null, or if there is no value.
 */
- (jboolean)isNullWithInt:(jint)index;

/*!
 @brief Get the number of elements in the JSONArray, included nulls.
 @return The length (or size).
 */
- (jint)length;

/*!
 @brief Get the optional object value associated with an index.
 @param index
 The index must be between 0 and length() - 1.
 @return An object value, or null if there is no object at that index.
 */
- (id)optWithInt:(jint)index;

/*!
 @brief Get the optional boolean value associated with an index.
 It returns false
 if there is no value at that index, or if the value is not Boolean.TRUE
 or the String "true".
 @param index
 The index must be between 0 and length() - 1.
 @return The truth.
 */
- (jboolean)optBooleanWithInt:(jint)index;

/*!
 @brief Get the optional boolean value associated with an index.
 It returns the
 defaultValue if there is no value at that index or if it is not a Boolean
 or the String "true" or "false" (case insensitive).
 @param index
 The index must be between 0 and length() - 1.
 @param defaultValue
 A boolean default.
 @return The truth.
 */
- (jboolean)optBooleanWithInt:(jint)index
                  withBoolean:(jboolean)defaultValue;

/*!
 @brief Get the optional double value associated with an index.
 NaN is returned
 if there is no value for the index, or if the value is not a number and
 cannot be converted to a number.
 @param index
 The index must be between 0 and length() - 1.
 @return The value.
 */
- (jdouble)optDoubleWithInt:(jint)index;

/*!
 @brief Get the optional double value associated with an index.
 The defaultValue
 is returned if there is no value for the index, or if the value is not a
 number and cannot be converted to a number.
 @param index
 subscript
 @param defaultValue
 The default value.
 @return The value.
 */
- (jdouble)optDoubleWithInt:(jint)index
                 withDouble:(jdouble)defaultValue;

/*!
 @brief Get the optional int value associated with an index.
 Zero is returned if
 there is no value for the index, or if the value is not a number and
 cannot be converted to a number.
 @param index
 The index must be between 0 and length() - 1.
 @return The value.
 */
- (jint)optIntWithInt:(jint)index;

/*!
 @brief Get the optional int value associated with an index.
 The defaultValue is
 returned if there is no value for the index, or if the value is not a
 number and cannot be converted to a number.
 @param index
 The index must be between 0 and length() - 1.
 @param defaultValue
 The default value.
 @return The value.
 */
- (jint)optIntWithInt:(jint)index
              withInt:(jint)defaultValue;

/*!
 @brief Get the optional JSONArray associated with an index.
 @param index
 subscript
 @return A JSONArray value, or null if the index has no value, or if the
 value is not a JSONArray.
 */
- (ARJSONArray *)optJSONArrayWithInt:(jint)index;

/*!
 @brief Get the optional JSONObject associated with an index.
 Null is returned if
 the key is not found, or null if the index has no value, or if the value
 is not a JSONObject.
 @param index
 The index must be between 0 and length() - 1.
 @return A JSONObject value.
 */
- (ARJSONObject *)optJSONObjectWithInt:(jint)index;

/*!
 @brief Get the optional long value associated with an index.
 Zero is returned if
 there is no value for the index, or if the value is not a number and
 cannot be converted to a number.
 @param index
 The index must be between 0 and length() - 1.
 @return The value.
 */
- (jlong)optLongWithInt:(jint)index;

/*!
 @brief Get the optional long value associated with an index.
 The defaultValue is
 returned if there is no value for the index, or if the value is not a
 number and cannot be converted to a number.
 @param index
 The index must be between 0 and length() - 1.
 @param defaultValue
 The default value.
 @return The value.
 */
- (jlong)optLongWithInt:(jint)index
               withLong:(jlong)defaultValue;

/*!
 @brief Get the optional string value associated with an index.
 It returns an
 empty string if there is no value at that index. If the value is not a
 string and is not null, then it is coverted to a string.
 @param index
 The index must be between 0 and length() - 1.
 @return A String value.
 */
- (NSString *)optStringWithInt:(jint)index;

/*!
 @brief Get the optional string associated with an index.
 The defaultValue is
 returned if the key is not found.
 @param index
 The index must be between 0 and length() - 1.
 @param defaultValue
 The default value.
 @return A String value.
 */
- (NSString *)optStringWithInt:(jint)index
                  withNSString:(NSString *)defaultValue;

/*!
 @brief Append a boolean value.
 This increases the array's length by one.
 @param value
 A boolean value.
 @return this.
 */
- (ARJSONArray *)putWithBoolean:(jboolean)value;

/*!
 @brief Put a value in the JSONArray, where the value will be a JSONArray which
 is produced from a Collection.
 @param value
 A Collection value.
 @return this.
 */
- (ARJSONArray *)putWithJavaUtilCollection:(id<JavaUtilCollection>)value;

/*!
 @brief Append a double value.
 This increases the array's length by one.
 @param value
 A double value.
 @throws JSONException
 if the value is not finite.
 @return this.
 */
- (ARJSONArray *)putWithDouble:(jdouble)value;

/*!
 @brief Append an int value.
 This increases the array's length by one.
 @param value
 An int value.
 @return this.
 */
- (ARJSONArray *)putWithInt:(jint)value;

/*!
 @brief Put or replace a boolean value in the JSONArray.
 If the index is greater
 than the length of the JSONArray, then null elements will be added as
 necessary to pad it out.
 @param index
 The subscript.
 @param value
 A boolean value.
 @return this.
 @throws JSONException
 If the index is negative.
 */
- (ARJSONArray *)putWithInt:(jint)index
                withBoolean:(jboolean)value;

/*!
 @brief Put a value in the JSONArray, where the value will be a JSONArray which
 is produced from a Collection.
 @param index
 The subscript.
 @param value
 A Collection value.
 @return this.
 @throws JSONException
 If the index is negative or if the value is not finite.
 */
- (ARJSONArray *)putWithInt:(jint)index
     withJavaUtilCollection:(id<JavaUtilCollection>)value;

/*!
 @brief Put or replace a double value.
 If the index is greater than the length of
 the JSONArray, then null elements will be added as necessary to pad it
 out.
 @param index
 The subscript.
 @param value
 A double value.
 @return this.
 @throws JSONException
 If the index is negative or if the value is not finite.
 */
- (ARJSONArray *)putWithInt:(jint)index
                 withDouble:(jdouble)value;

/*!
 @brief Put or replace an int value.
 If the index is greater than the length of
 the JSONArray, then null elements will be added as necessary to pad it
 out.
 @param index
 The subscript.
 @param value
 An int value.
 @return this.
 @throws JSONException
 If the index is negative.
 */
- (ARJSONArray *)putWithInt:(jint)index
                    withInt:(jint)value;

/*!
 @brief Put or replace a long value.
 If the index is greater than the length of
 the JSONArray, then null elements will be added as necessary to pad it
 out.
 @param index
 The subscript.
 @param value
 A long value.
 @return this.
 @throws JSONException
 If the index is negative.
 */
- (ARJSONArray *)putWithInt:(jint)index
                   withLong:(jlong)value;

/*!
 @brief Put a value in the JSONArray, where the value will be a JSONObject that
 is produced from a Map.
 @param index
 The subscript.
 @param value
 The Map value.
 @return this.
 @throws JSONException
 If the index is negative or if the the value is an invalid
 number.
 */
- (ARJSONArray *)putWithInt:(jint)index
            withJavaUtilMap:(id<JavaUtilMap>)value;

/*!
 @brief Put or replace an object value in the JSONArray.
 If the index is greater
 than the length of the JSONArray, then null elements will be added as
 necessary to pad it out.
 @param index
 The subscript.
 @param value
 The value to put into the array. The value should be a
 Boolean, Double, Integer, JSONArray, JSONObject, Long, or
 String, or the JSONObject.NULL object.
 @return this.
 @throws JSONException
 If the index is negative or if the the value is an invalid
 number.
 */
- (ARJSONArray *)putWithInt:(jint)index
                     withId:(id)value;

/*!
 @brief Append an long value.
 This increases the array's length by one.
 @param value
 A long value.
 @return this.
 */
- (ARJSONArray *)putWithLong:(jlong)value;

/*!
 @brief Put a value in the JSONArray, where the value will be a JSONObject which
 is produced from a Map.
 @param value
 A Map value.
 @return this.
 */
- (ARJSONArray *)putWithJavaUtilMap:(id<JavaUtilMap>)value;

/*!
 @brief Append an object value.
 This increases the array's length by one.
 @param value
 An object value. The value should be a Boolean, Double,
 Integer, JSONArray, JSONObject, Long, or String, or the
 JSONObject.NULL object.
 @return this.
 */
- (ARJSONArray *)putWithId:(id)value;

/*!
 @brief Remove an index and close the hole.
 @param index
 The index of the element to be removed.
 @return The value that was associated with the index, or null if there
 was no value.
 */
- (id)removeWithInt:(jint)index;

/*!
 @brief Determine if two JSONArrays are similar.
 They must contain similar sequences.
 @param other The other JSONArray
 @return true if they are equal
 */
- (jboolean)similarWithId:(id)other;

/*!
 @brief Produce a JSONObject by combining a JSONArray of names with the values of
 this JSONArray.
 @param names
 A JSONArray containing a list of key strings. These will be
 paired with the values.
 @return A JSONObject, or null if there are no names or if this JSONArray
 has no values.
 @throws JSONException
 If any of the names are null.
 */
- (ARJSONObject *)toJSONObjectWithARJSONArray:(ARJSONArray *)names;

@end

J2OBJC_EMPTY_STATIC_INIT(ARJSONArray)

FOUNDATION_EXPORT void ARJSONArray_init(ARJSONArray *self);

FOUNDATION_EXPORT ARJSONArray *new_ARJSONArray_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARJSONArray_initWithARJSONTokener_(ARJSONArray *self, ARJSONTokener *x);

FOUNDATION_EXPORT ARJSONArray *new_ARJSONArray_initWithARJSONTokener_(ARJSONTokener *x) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARJSONArray_initWithNSString_(ARJSONArray *self, NSString *source);

FOUNDATION_EXPORT ARJSONArray *new_ARJSONArray_initWithNSString_(NSString *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ARJSONArray_initWithJavaUtilCollection_(ARJSONArray *self, id<JavaUtilCollection> collection);

FOUNDATION_EXPORT ARJSONArray *new_ARJSONArray_initWithJavaUtilCollection_(id<JavaUtilCollection> collection) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ARJSONArray)

@compatibility_alias ImActorRuntimeJsonJSONArray ARJSONArray;


#pragma clang diagnostic pop
#endif // _ImActorRuntimeJsonJSONArray_H_

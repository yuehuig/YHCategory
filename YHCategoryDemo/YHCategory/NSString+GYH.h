//
//  NSString+GYH.h
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (GYH)


/**
 *  计算文字总数
 *
 *  @return 字数
 */
- (NSUInteger)count;

/*!
 活动字符长度，例如“你好”为4，“nihao”为5，如果只有空格，认为是0，例如“   ”为0
 @return 字符长度
 */
- (NSUInteger)getCharacterCount;

/**
 *  判断是否为空字符串
 *
 *  @return YES/NO
 */
- (BOOL)isEmptyOrWhitespace;

/**
 *  判断传参的字符串是否为空字符串
 *
 *  @param str string
 *
 *  @return YES/NO
 */
+ (BOOL)isEmptyOrWhitespace:(NSString *)str;


/**
 *  判断传参的字符串是否为nil或者NULL
 *
 *  @param str string
 *
 *  @return YES/NO
 */
+ (BOOL)isNilOrNSNull:(NSString *)str;

/**
 *  判断传参的字符串是否为nil或者NULL或者换行
 *
 *  @param str string
 *
 *  @return YES/NO
 */
+ (BOOL)isNilOrNSNullOrEmptyOrWhitespace:(NSString *)str;
/**
 *  判断传参的字符串是否为nil或者NULL或者换行
 *  条件成立返回NO,不成立返回YES.和上面方法返回值相反
 *  @param string string
 *
 *  @return YES/NO
 */
+ (BOOL)isValide:(NSString *)string;

/**
 *  将传入数组里的内容以,分隔 拼成一个字符串
 *
 *  @param array stringArray
 *
 *  @return String
 */
+ (NSString *)combinationStringOfArray:(NSArray *)array;

/**
 *   去除两端空格。
 *
 *  @return String
 */
- (NSString*)stripWhiteSpace;

/**
 *  去除两端空格及换行。
 *
 *  @return String
 */
- (NSString*)stripWhiteSpaceAndNewLine;

/**
 根据指定的字体，和宽度计算字符串的高度
 @param font  使用的字体
 @param width 宽度
 */
-(CGFloat)getStringHightWithfont:(UIFont*)font width:(CGFloat)width;

/**
 *  根据高度计算字符串显示的宽度
 *
 *  @param font  使用的字体
 *  @param hight 高度
 *
 *  @return CGFloat
 */
- (CGFloat)getStringWidthWithFont:(UIFont*)font hight:(CGFloat)hight;

/**
 *  或略大小写比较
 *
 *  @param anotherString  anotherString
 *
 *  @return YES/NO
 */

- (BOOL)isEqualToStringIgnoreCase:(NSString *)anotherString;

///////////////////////////////////////////////////////////////
/**
 *	判断是否是数字
 *
 *	@return	是否为数字
 */
- (BOOL)isNumeric;

@end

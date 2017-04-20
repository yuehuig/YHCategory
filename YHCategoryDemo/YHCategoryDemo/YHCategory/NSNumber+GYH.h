//
//  NSNumber+GYH.h
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (GYH)

/**
 *	NSString转为NSNumber
 *
 *	@param	string	字符串,
 *
 *	@return	NSNumber, 如果string为nil或@""或内容不是数字,返回`0`
 */
+ (NSNumber *)numberWithString:(NSString *)string;

@end

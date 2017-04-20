//
//  UIBarButtonItem+GYH.h
//  YHCategory
//
//  Created by 郭月辉 on 2016/11/14.
//  Copyright © 2016年 Theshy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (GYH)


/**
 创建UIBarButtonItem 左端距离可控 return array

 // navigationItem.leftBarButtonItems = array;
 
 @param buttonItem UIBarButtonItem
 @param width 左侧距离
 @return UIBarButtonItem array
 */
+ (NSArray *)arrayBarButtonItemWithUIBarButtonItem:(UIBarButtonItem *)buttonItem
                                    MoveRightWidth:(CGFloat) width;

@end

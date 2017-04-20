//
//  UIBarButtonItem+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2016/11/14.
//  Copyright © 2016年 Theshy. All rights reserved.
//

#import "UIBarButtonItem+GYH.h"

@implementation UIBarButtonItem (GYH)

+ (NSArray *)arrayBarButtonItemWithUIBarButtonItem:(UIBarButtonItem *)buttonItem
                                    MoveRightWidth:(CGFloat)width {
    
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                                    target:nil
                                                                                    action:nil];
    /**
     *  width为负数时，相当于btn向右移动width数值个像素，由于按钮本身和边界间距为5pix，所以width设为-5时，间距正好调整
     *  为0；width为正数时，正好相反，相当于往左移动width数值个像素
     */
    negativeSpacer.width = -width;
    
    return [NSArray arrayWithObjects:negativeSpacer, buttonItem, nil];
}

@end

//
//  UIImage+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2016/11/18.
//  Copyright © 2016年 Theshy. All rights reserved.
//

#import "UIImage+GYH.h"

@implementation UIImage (GYH)

// 获取启动页图片
+ (UIImage *)launchImage {
    CGSize mainSize = [UIScreen mainScreen].bounds.size;
    
    BOOL isPortrait = UIInterfaceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation]);
    NSString *viewOrientation = isPortrait ? @"Portrait" : @"Landscape";
    
    NSString *lanchImageStr = nil;
    NSArray* imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imagesDict) {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, mainSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {
            lanchImageStr = dict[@"UILaunchImageName"];
        }
    }
    return [UIImage imageNamed:lanchImageStr];
}

@end

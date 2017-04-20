//
//  YHAppInfo.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "YHAppInfo.h"

@implementation YHAppInfo

+ (NSString *)clientVersion {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appleLanguages{
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"] objectAtIndex:0];
}

+ (NSString *)platform {
    //    UIDevice* device_ = [UIDevice currentDevice];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        return @"iphone";
    } else {
        return @"ipad";
    }
}

+ (NSString *)resolution {
    CGSize size_ = [[UIScreen mainScreen] bounds].size;
    CGFloat scale_ =[[UIScreen mainScreen] scale];
    NSUInteger width_ = size_.width * scale_;
    NSUInteger height_ = size_.height * scale_;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        return [NSString stringWithFormat:@"%ld*%ld",(unsigned long)width_,(unsigned long)height_];
    } else {
        return [NSString stringWithFormat:@"%ld*%ld",(unsigned long)height_,(unsigned long)width_];
    }
}

+ (NSString *)clientBuild {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (NSString *)clientBuildID{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
}

@end

//
//  YHAppInfo.h
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YHAppInfo : NSObject
/**
 *  @brief 获取APP的Version
 *
 *  @return CFBundleShortVersionString
 */
+ (NSString *)clientVersion;
/**
 *  @brief 获取Languages
 *
 *  @return AppleLanguages
 */
+ (NSString *)appleLanguages;
/**
 *  @brief 获取设备类型
 *
 *  @return iphone/ipad
 */
+ (NSString *)platform;
/**
 *  @brief 获取设备屏幕分辨率
 *
 *  @return "width"*"height"
 */
+ (NSString *)resolution;

/**
 *  @brief 获取APP的BulidVersion
 *
 *  @return CFBundleVersion
 */
+ (NSString *)clientBuild;

/**
 *  @brief 获取APP的BundleIdentifier
 *
 *  @return CFBundleIdentifier
 */
+ (NSString *)clientBuildID;

@end

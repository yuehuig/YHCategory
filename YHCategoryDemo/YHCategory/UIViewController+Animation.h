//
//  UIViewController+Animation.h
//  YHCategory
//
//  Created by 郭月辉 on 2017/2/13.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TransformType) {
    TransformTypeM32 = 0,
    TransformTypeM34,
};


/** 动画类型 */
typedef NS_ENUM(NSInteger, AnimationType) {
    /** 淡入淡出 */
    AnimationTypeFade = 1,                   //淡入淡出
    /** 推挤 */
    AnimationTypePush,                       //推挤
    /**揭开 */
    AnimationTypeReveal,                     //揭开
    /** 覆盖 */
    AnimationTypeMoveIn,                     //覆盖
    /**立方体 */
    AnimationTypeCube,                       //立方体
    /** 吮吸 */
    AnimationTypeSuckEffect,                 //吮吸
    /** 翻转 */
    AnimationTypeOglFlip,                    //翻转
    /** 波纹 */
    AnimationTypeRippleEffect,               //波纹
    /** 翻页 */
    AnimationTypePageCurl,                   //翻页
    /** 反翻页 */
    AnimationTypePageUnCurl,                 //反翻页
    /** 开镜头 */
    AnimationTypeCameraIrisHollowOpen,       //开镜头
    /** 关镜头 */
    AnimationTypeCameraIrisHollowClose,      //关镜头
    /** 下翻页 */
    AnimationTypeCurlDown,                   //下翻页
    /** 上翻页 */
    AnimationTypeCurlUp,                     //上翻页
    /** 左翻转 */
    AnimationTypeFlipFromLeft,               //左翻转
    /** 右翻转 */
    AnimationTypeFlipFromRight,              //右翻转
};


@interface UIViewController (Animation)

#pragma mark - //////////////////////3DFallAndRise///////////////////////////

/**  3D形变展示 */
- (void)show;
/**  3D形变关闭 */
- (void)close;
/**
 *  3D形变展示
 *
 *  @param duration 时长
 */
- (void)showWithDuration:(NSTimeInterval)duration;
/**
 *  3D形变关闭
 *
 *  @param duration 时长
 */
- (void)closeWithDuration:(NSTimeInterval)duration;


/**
 *  3D形变展示
 *
 *  @param duration 时长
 *  @param type     动画类型
 */
- (void)showWithDuration:(NSTimeInterval)duration transformType:(TransformType)type;
/**
 *  3D形变关闭
 *
 *  @param duration 时长
 *  @param type     动画类型
 */
- (void)closeWithDuration:(NSTimeInterval)duration transformType:(TransformType)type;






#pragma mark - //////////////////////PushAnimation///////////////////////////

/**
 *  控制器间跳转时的动画效果
 *
 *  @param animationType    动画类型枚举值
 *  @param subtype 动画子类型(动画的更详细效果)
 */
- (void)transitionWithEnumType:(AnimationType)animationType WithSubtype:(NSString *)subtype;


/**
 *  视图间跳转时的动画效果
 *
 *  @param type    动画类型
 *  @param subtype 动画子类型(动画的更详细效果)
 *  @param view    视图
 */
- (void)transitionWithType:(NSString *)type WithSubtype:(NSString *) subtype ForView : (UIView *)view;



@end

//
//  UIViewController+Animation.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/2/13.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "UIViewController+Animation.h"

@implementation UIViewController (Animation)

#pragma mark - //////////////////////3DFallAndRise///////////////////////////

- (void)show{
    [self fallVcWithDuration:0.5f transformType:TransformTypeM34];
}
- (void)showWithDuration:(NSTimeInterval)duration{
    [self fallVcWithDuration:duration transformType:TransformTypeM34];
}
- (void)close{
    [self riseVcWithDuration:0.5f transformType:TransformTypeM34];
}
- (void)closeWithDuration:(NSTimeInterval)duration{
    [self riseVcWithDuration:duration transformType:TransformTypeM34];
}
- (void)showWithDuration:(NSTimeInterval)duration transformType:(TransformType)type{
    [self fallVcWithDuration:duration transformType:type];
}
- (void)closeWithDuration:(NSTimeInterval)duration transformType:(TransformType)type{
    [self riseVcWithDuration:0.5f transformType:type];
}


- (void) riseVcWithDuration:(NSTimeInterval)duration transformType:(TransformType)type{
    
    UIViewController *controller = [self getActionController];
    
    [UIView animateWithDuration:duration/2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        [controller.view.layer setTransform:[self firstTransformType: type]];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:duration/2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            
            [controller.view.layer setTransform:CATransform3DIdentity];
            
        } completion:^(BOOL finished) {
            
        }];
        
    }];
    
}

- (void) fallVcWithDuration:(NSTimeInterval)duration transformType:(TransformType)type{
    
    UIViewController *controller = [self getActionController];
    
    [UIView animateWithDuration:duration/2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        [controller.view.layer setTransform:[self firstTransformType:type]];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:duration/2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            
            [controller.view.layer setTransform:[self secondTransformType:type]];
            
        } completion:^(BOOL finished) {
            
        }];
        
    }];
    
}


- (CATransform3D)firstTransformType:(TransformType)type{
    
    CATransform3D t1 = CATransform3DIdentity;
    CGFloat m = 1.0/-900;
    switch (type) {
        case TransformTypeM32:
            t1.m32 = m;
            break;
        default:
            t1.m34 = m;
            break;
    }
    //t1.m32 = 1.0/-900;
    
    //带点缩小的效果
    t1 = CATransform3DScale(t1, 0.95, 0.95, 1);
    //绕x轴旋转
    t1 = CATransform3DRotate(t1, 15.0 * M_PI/180.0, 1, 0, 0);
    return t1;
    
}

- (CATransform3D)secondTransformType:(TransformType)type{
    
    CATransform3D t2 = CATransform3DIdentity;
    switch (type) {
        case TransformTypeM32:
            t2.m32 = [self firstTransformType:type].m32;
            break;
        default:
            t2.m34 = [self firstTransformType:type].m34;
            break;
    }
    //t2.m32 = [self firstTransformType:type].m32;
    
    //向上移
    t2 = CATransform3DTranslate(t2, 0, self.view.frame.size.height * (-0.08), 0);
    //第二次缩小
    t2 = CATransform3DScale(t2, 0.8, 0.8, 1);
    return t2;
}

-(UIViewController *)getActionController{
    return self.navigationController ? self.navigationController : self;
}





#pragma mark - //////////////////////PushAnimation///////////////////////////

- (void)transitionWithEnumType:(AnimationType)animationType WithSubtype:(NSString *)subtype{
    
    //创建CATransition对象
    CATransition *animation = [CATransition animation];
    
    //设置运动时间
    animation.duration = 0.35f;
    
    //设置运动type
    switch (animationType) {
        case AnimationTypeFade:
            animation.type = kCATransitionFade;
            break;
            
        case AnimationTypePush:
            animation.type = kCATransitionPush;
            break;
            
        case AnimationTypeReveal:
            animation.type = kCATransitionReveal;
            break;
            
        case AnimationTypeMoveIn:
            animation.type = kCATransitionMoveIn;
            break;
            
        case AnimationTypeCube:
            animation.type = @"cube";
            break;
            
        case AnimationTypeSuckEffect:
            animation.type = @"suckEffect";
            break;
            
        case AnimationTypeOglFlip:
            animation.type = @"oglFlip";
            break;
            
        case AnimationTypeRippleEffect:
            animation.type = @"rippleEffect";
            break;
            
        case AnimationTypePageCurl:
            animation.type = @"pageCurl";
            break;
            
        case AnimationTypePageUnCurl:
            animation.type = @"pageUnCurl";
            break;
            
        case AnimationTypeCameraIrisHollowOpen:
            animation.type = @"cameraIrisHollowOpen";
            break;
            
        case AnimationTypeCameraIrisHollowClose:
            animation.type = @"cameraIrisHollowClose";
            break;
            
        case AnimationTypeCurlDown:
        case AnimationTypeCurlUp:
            animation.type = @"pageCurl";
            animation.subtype = subtype;
            break;
            
        case AnimationTypeFlipFromLeft:
        case AnimationTypeFlipFromRight:
            animation.type = @"oglFlip";
            animation.subtype = subtype;
            break;
            
        default:
            break;
    }
    
    
    //设置子类
    if (subtype != nil) {
        animation.subtype = subtype;
    }
    
    //设置运动速度
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    
    [[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:@"animation"];
}

#pragma mark - CATransition动画实现
- (void)transitionWithType:(NSString *)type WithSubtype:(NSString *) subtype ForView :(UIView *) view
{
    //创建CATransition对象
    CATransition *animation = [CATransition animation];
    
    //设置运动时间
    animation.duration = 0.35f;
    
    //设置运动type
    animation.type = type;
    
    //设置子类
    if (subtype != nil) {
        animation.subtype = subtype;
    }
    
    //设置运动速度
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    
    [view.layer addAnimation:animation forKey:@"animation"];
}

@end

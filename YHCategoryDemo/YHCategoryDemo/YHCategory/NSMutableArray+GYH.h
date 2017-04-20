//
//  NSMutableArray+GYH.h
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (GYH)

/**
 *    @brief 添加一个对象到数组，无须检查对象是否为nil
 *
 *    @param object 要添加到数组中的对象
 */
- (void)addSafeObject:(id)object;

@end

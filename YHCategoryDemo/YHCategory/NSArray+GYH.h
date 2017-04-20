//
//  NSArray+GYH.h
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (GYH)

+ (BOOL)isAvailable: (NSArray *)array;

/**
 *    @brief 获取指定数组中的对象，不会引起索引越界的错误
 *
 *    @param index 索引值
 *
 *    @return 获取到的对象或nil
 */
- (id)safeObjectAtIndex:(NSInteger)index;

@end

//
//  NSMutableArray+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "NSMutableArray+GYH.h"

@implementation NSMutableArray (GYH)

- (void)addSafeObject:(id)object {
    if(object) {
        [self addObject:object];
    }
}

@end

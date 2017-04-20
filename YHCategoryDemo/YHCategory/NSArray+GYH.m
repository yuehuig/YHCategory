//
//  NSArray+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "NSArray+GYH.h"

@implementation NSArray (GYH)

+ (BOOL)isAvailable:(NSArray *)array {
    if (array && [array isKindOfClass:[NSArray class]] && [array count] > 0) {
        return YES;
    }
    return NO;
}

- (id)safeObjectAtIndex:(NSInteger)index {
    @synchronized (self) {
        if(self && index >= 0 && index < [self count]) {
            return [self objectAtIndex:index];
        }
        return nil;
    }
}
    
@end

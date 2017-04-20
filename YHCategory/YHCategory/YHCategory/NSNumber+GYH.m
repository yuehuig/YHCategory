//
//  NSNumber+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "NSNumber+GYH.h"
#import "NSString+GYH.h"

@implementation NSNumber (GYH)

+ (NSNumber *)numberWithString:(NSString *)string {
    
    if (string && [string isNumeric]) {
        return [[self class] numberWithDouble:[string doubleValue]];
    } else {
        return [[self class] numberWithFloat:0.0f];
    }
}

@end

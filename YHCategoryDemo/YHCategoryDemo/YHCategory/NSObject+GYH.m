//
//  NSObject+GYH.m
//  YHCategory
//
//  Created by 郭月辉 on 2016/11/14.
//  Copyright © 2016年 Theshy. All rights reserved.
//

#import "NSObject+GYH.h"

@implementation NSObject (GYH)
/// 检查文件夹是否存在，不存在则创建
- (BOOL)checkDirectoryExistAndCreateIfNotExist:(NSString *)path {
    
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL isDirectory= NO;
    BOOL exist = [fm fileExistsAtPath:path isDirectory:&isDirectory];
    if (!exist || !isDirectory) {
        return [fm createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return YES;
}

/// 检查文件是否存在，不存在则创建
- (BOOL)checkFileExistAndCreateIfNotExist:(NSString *)path {
    
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL isDirectory= NO;
    BOOL exist = [fm fileExistsAtPath:path isDirectory:&isDirectory];
    if (!exist || isDirectory) {
        return [fm createFileAtPath:path contents:nil attributes:nil];
    }
    return YES;
}
@end

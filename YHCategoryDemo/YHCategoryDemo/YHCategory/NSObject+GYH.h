//
//  NSObject+GYH.h
//  YHCategory
//
//  Created by 郭月辉 on 2016/11/14.
//  Copyright © 2016年 Theshy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GYH)

/// 检查文件夹是否存在，不存在则创建
- (BOOL)checkDirectoryExistAndCreateIfNotExist:(NSString *)path;
/// 检查文件是否存在，不存在则创建
- (BOOL)checkFileExistAndCreateIfNotExist:(NSString *)path;

@end
